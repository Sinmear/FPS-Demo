import AudioManager from "../Component/AudioManager";
import GameManager from "../MainView/GameManager";
import WeaponManager from "../Weapon/WeaponManager";
import { FpsCtrlManager } from "./FpsCtrlManager";
import { OperateManager } from "./OperateManager";

const { regClass, property } = Laya;

@regClass()
export default class FpsController extends Laya.Script {
    private playerNode: Laya.Sprite3D;          // 角色组件
    private playerTrs: Laya.Transform3D;        // 角色transform
    @property(Laya.Sprite3D)
    private rootNode: Laya.Sprite3D;            // 根节点
    private rootTrs: Laya.Transform3D;          // 根节点transform
    @property(Laya.Sprite3D)
    private camera: Laya.Camera;                // 相机组件
    private cameraTrs: Laya.Transform3D;        // 相机transform
    @property(Laya.Scene3D)
    private scene: Laya.Scene3D;                // 3d场景
    
    private charCtrl: Laya.CharacterController; // 角色控制器
    private colliderShape: Laya.CapsuleColliderShape; // 角色控制器碰撞体
    private rayDistance: number = 0;            // 射线检测距离
    private touchLayer: number = -1;            // 碰撞体底部触碰物体的层级
    @property("number")
    private walkSpeed: number;                  // 行走速度
    @property("number")
    private runSpeed: number;                   // 奔跑速度
    private shiftPress: boolean = false;        // 是否按了shift键
    private moveSpeed: number = 0;              // 实际移动速度
    private moveAngle: Laya.Vector3 = Laya.Vector3.ZERO;  // 移动角度
    private isMoving: boolean = false;          // 是否在移动
    private isJumping: boolean = false;         // 是否在跳跃
    @property("number")
    private jumpHeight: number;                 // 跳跃高度
    private isJumpKeyDown: boolean = false;     // 是否按下空格键
    private isTouchGround: boolean;             // 接触地面的状态
    private jumpTouchGound: boolean = false;    // 跳跃结束接触地面时

    @property(Laya.Animator)
    private weaponAnimator: Laya.Animator;      // 当前枪械动画状态机
    private curActionType: PlayerActionType = PlayerActionType.Idle;    // 当前动作类型
    private lastActionType: PlayerActionType;   // 上一个动作类型
    private aimLayer: Laya.AnimatorControllerLayer;
    private reloadLayer: Laya.AnimatorControllerLayer;

    @property(AudioManager)
    private audioManager: AudioManager;         // 音效控制器

    private isShooting: boolean = false;
    get IsShooting(): boolean{
        return this.isShooting;
    }
    private reloadStart: boolean = false;
    private reloadEnd: boolean = true;
    private isAiming: boolean = false;
    get IsAiming(): boolean{
        return this.isAiming;
    }
    private lastIsAiming: boolean;
    private aimAnimPlayed: boolean = false;
    @property(Laya.Camera)
    private mainCamera: Laya.Camera;               // 相机
    private gameOver: boolean = false;
    private reloadAfterAimOut: boolean = false;

    constructor(){
        super();
    }

    onAwake(): void {
        this.playerNode = this.owner as Laya.Sprite3D;
        this.playerTrs = this.playerNode.transform;
        this.rootTrs = this.rootNode.transform;
        this.cameraTrs = this.camera.transform;
        this.charCtrl = this.playerNode.getComponent(Laya.CharacterController)
        this.colliderShape = this.charCtrl.colliderShape as Laya.CapsuleColliderShape;
        this.rayDistance = this.colliderShape.length / 2 - this.colliderShape.localOffset.y + 0.5;
        this.aimLayer = this.weaponAnimator.getControllerLayer(1);
        this.reloadLayer = this.weaponAnimator.getControllerLayer(2);
        FpsCtrlManager.GetInstance().InitFpsController(this.owner as Laya.Sprite3D);
        this.InitPosAndRotation();
        this.SetAnimatorByActionType();
    }

    onStart(): void {
        this.weaponAnimator.setParamsTrigger("FirstIn");
    }
    
    onUpdate(): void {
        if(!GameManager.GetInstance().IsGameStart)
        {
            if(!this.gameOver){
                this.gameOver = true;
                this.InitParams();
                return;
            }
            return;
        }
        this.gameOver = false;
        this.PlayerMove();
        this.CheckCurActionType();
        this.RayCheck();
    }
    
    // 检测角色移动
    private PlayerMove(){
        this.isMoving = OperateManager.GetInstance().isMoving;
        
        // 检测一次空格按下抬起为跳跃
        if(OperateManager.GetInstance().isJumping){
            if(!this.isJumpKeyDown && this.charCtrl.isGrounded){
                this.isJumpKeyDown = true;
                // 标记正在跳跃
                this.isJumping = true;
                this.charCtrl.jump(new Laya.Vector3(0, this.jumpHeight, 0));
            }
        }
        else{
            this.isJumpKeyDown = false;
        }
        
        // isTouchGround记录了上一帧是否落地，当上一帧浮空当前帧落地表示角色刚接触地面
        if(this.isTouchGround != null && this.isTouchGround != this.charCtrl.isGrounded && this.charCtrl.isGrounded){
            this.jumpTouchGound = true;
        }
        this.isTouchGround = this.charCtrl.isGrounded;
        // 跳完判断到接触地面，跳跃结束
        if(this.isJumping && this.jumpTouchGound){
            this.isJumping = false;
        }
        
        this.shiftPress = OperateManager.GetInstance().isRunning;
        if(this.isMoving){
            // 不是跳跃状态时判断动画类型
            if(!this.isJumping){
                // 向前加速移动才播放奔跑动画
                // this.curActionType = (this.shiftPress && this.moveForward) ? PlayerActionType.Run : PlayerActionType.Walk;
                this.moveSpeed = this.shiftPress ? this.runSpeed : this.walkSpeed;
            }
            else{
                // this.curActionType = PlayerActionType.Jump;
                this.moveSpeed = this.walkSpeed * 1.5
            }
            this.moveAngle = OperateManager.GetInstance().moveAngle;
            this.moveAngle.x = this.moveAngle.x / 100 * this.moveSpeed;
            this.moveAngle.y = 0
            this.moveAngle.z = this.moveAngle.z / 100 * this.moveSpeed;
            this.charCtrl.move(this.moveAngle);
        }
        else{
            this.charCtrl.move(new Laya.Vector3(0, 0, 0));
            // 不移动时根据isJumping判断是否跳跃动画
            // this.curActionType = this.isJumping ? PlayerActionType.Jump : PlayerActionType.Idle;
        }

        if(!WeaponManager.GetInstance().GetAimOut()){
            if(!this.reloadAfterAimOut){
                if(this.reloadStart && !WeaponManager.GetInstance().IsReloading()){
                    this.reloadStart = false;
                    this.reloadEnd = true; 
                }
                if(this.reloadEnd && OperateManager.GetInstance().isReloading && WeaponManager.GetInstance().CanReload()){
                    // 换弹夹
                    this.reloadStart = true;
                    if(this.isAiming){
                        this.reloadAfterAimOut = true;
                        this.IsAimAction(true);
                    }
                    else{
                        this.reloadAfterAimOut = false;
                        WeaponManager.GetInstance().Reload();
                    }
                }
            }
            else{
                this.reloadAfterAimOut = false;
                WeaponManager.GetInstance().Reload();
            }
        }

        this.isShooting = false;
        if(OperateManager.GetInstance().isShooting && WeaponManager.GetInstance().IsAllowShoot()){
            // 武器开火
            this.isShooting = true;
            WeaponManager.GetInstance().DoAttack(this.isAiming);
        }
    }

    private CheckCurActionType(){     
        if(this.isAiming && !this.reloadStart){
            this.reloadLayer.defaultWeight = 0;
            WeaponManager.GetInstance().SetAimOut(false);
            if(!this.aimAnimPlayed){
                this.curActionType = PlayerActionType.AimStart;
                WeaponManager.GetInstance().SetAimIn(true);
                this.aimAnimPlayed = true;
                this.aimLayer.defaultWeight = 1;
                this.weaponAnimator.play("aim_in01", 1);
                Laya.Tween.to(this.mainCamera, {fieldOfView: 50}, 300, Laya.Ease.linearIn)
            }
            else{
                if(!WeaponManager.GetInstance().GetAimIn() && this.isShooting){
                    this.weaponAnimator.play("aim_fire01", 1);
                    this.curActionType = PlayerActionType.AimFire;
                }
                else{
                    this.curActionType = PlayerActionType.AimStart;
                }
            }
        }
        else if((this.reloadStart && this.reloadAfterAimOut) || (!this.isAiming && this.lastIsAiming) || WeaponManager.GetInstance().GetAimOut())
        {
            this.reloadLayer.defaultWeight = 0;
            WeaponManager.GetInstance().SetAimIn(false);
            WeaponManager.GetInstance().SetAimOut(true);
            this.lastIsAiming = false;
            this.curActionType = PlayerActionType.AimEnd;
            if(!this.aimAnimPlayed){
                this.aimAnimPlayed = true;
                this.aimLayer.defaultWeight = 1;
                this.weaponAnimator.play("aim_out01", 1);
                Laya.Tween.to(this.mainCamera, {fieldOfView: 55}, 300, Laya.Ease.linearIn)
            }
        }
        else{
            this.aimLayer.defaultWeight = 0;
            if(this.reloadStart)
            {
                this.reloadLayer.defaultWeight = 1;
                if(this.reloadEnd){
                    this.reloadEnd = false;
                    let animName =  WeaponManager.GetInstance().curAmmoValue > 0 ? "reload_left01" : "reload_out_of01";
                    this.weaponAnimator.play(animName, 2);
                }
                this.curActionType = PlayerActionType.ReloadStart;
            }
            else{
                this.reloadLayer.defaultWeight = 0;
                if(this.isShooting)
                {
                    this.curActionType = PlayerActionType.Fire;
                }
                else{
                    if(this.isMoving){
                        // 不是跳跃状态时判断动画类型
                        if(!this.isJumping){
                            // 向前加速移动才播放奔跑动画
                            this.curActionType = (this.shiftPress && OperateManager.GetInstance().moveForward) ? PlayerActionType.Run : PlayerActionType.Walk;
                        }
                        else{
                            this.curActionType = PlayerActionType.Jump;
                        }
                    }
                    else{
                        // 不移动时根据isJumping判断是否跳跃动画
                        this.curActionType = this.isJumping ? PlayerActionType.Jump : PlayerActionType.Idle;
                    }
                }
            }
        }
        this.SetAnimatorByActionType();
    }

    // 根据当前动作类型设置动画状态机参数
    private SetAnimatorByActionType(){
        if(this.lastActionType == null || this.lastActionType != this.curActionType){
            console.log("curActionType " + this.curActionType);
            
            this.lastActionType = this.curActionType;
            switch(this.curActionType){
                case PlayerActionType.Idle:{
                    this.weaponAnimator.setParamsBool("IsWalking", false);
                    this.weaponAnimator.setParamsBool("IsRunning", false);
                    this.weaponAnimator.setParamsBool("IsFiring", false);
                    this.weaponAnimator.setParamsBool("IsIdle", true);
                    this.weaponAnimator.setParamsBool("IsAim", false);
                    this.weaponAnimator.setParamsNumber("Reload", 0);
                    break;
                }
                case PlayerActionType.Walk:{
                    this.weaponAnimator.setParamsBool("IsWalking", true);
                    this.weaponAnimator.setParamsBool("IsRunning", false);
                    this.weaponAnimator.setParamsBool("IsFiring", false);
                    this.weaponAnimator.setParamsBool("IsIdle", false);
                    this.weaponAnimator.setParamsBool("IsAim", false);
                    this.weaponAnimator.setParamsNumber("Reload", 0);
                    break;
                }
                case PlayerActionType.Run:{
                    this.weaponAnimator.setParamsBool("IsWalking", false);
                    this.weaponAnimator.setParamsBool("IsRunning", true);
                    this.weaponAnimator.setParamsBool("IsFiring", false);
                    this.weaponAnimator.setParamsBool("IsIdle", false);
                    this.weaponAnimator.setParamsBool("IsAim", false);
                    this.weaponAnimator.setParamsNumber("Reload", 0);
                    break;
                }
                case PlayerActionType.Jump:{
                    this.weaponAnimator.setParamsBool("IsWalking", false);
                    this.weaponAnimator.setParamsBool("IsRunning", false);
                    this.weaponAnimator.setParamsBool("IsFiring", false);
                    this.weaponAnimator.setParamsBool("IsIdle", true);
                    this.weaponAnimator.setParamsBool("IsAim", false);
                    this.weaponAnimator.setParamsNumber("Reload", 0);
                    break;
                }
                case PlayerActionType.Fire:{
                    this.weaponAnimator.setParamsBool("IsWalking", false);
                    this.weaponAnimator.setParamsBool("IsRunning", false);
                    this.weaponAnimator.setParamsBool("IsFiring", true);
                    this.weaponAnimator.setParamsBool("IsIdle", false);
                    this.weaponAnimator.setParamsBool("IsAim", false);
                    this.weaponAnimator.setParamsNumber("Reload", 0);
                    break;
                }
                case PlayerActionType.ReloadStart:{
                    let value = WeaponManager.GetInstance().curAmmoValue > 0 ? -2 : 2;
                    this.weaponAnimator.setParamsNumber("ReloadType", value);
                    this.weaponAnimator.setParamsBool("IsReload", true);
                    this.weaponAnimator.setParamsBool("IsWalking", false);
                    this.weaponAnimator.setParamsBool("IsRunning", false);
                    this.weaponAnimator.setParamsBool("IsFiring", false);
                    this.weaponAnimator.setParamsBool("IsIdle", false);
                    this.weaponAnimator.setParamsBool("IsAim", false);
                    break;
                }
                case PlayerActionType.ReloadEnd:{
                    this.weaponAnimator.setParamsNumber("ReloadType", 0);
                    this.weaponAnimator.setParamsBool("IsReload", false);
                    this.weaponAnimator.setParamsBool("IsWalking", false);
                    this.weaponAnimator.setParamsBool("IsRunning", false);
                    this.weaponAnimator.setParamsBool("IsFiring", false);
                    this.weaponAnimator.setParamsBool("IsIdle", true);
                    this.weaponAnimator.setParamsBool("IsAim", false);
                    break;
                }
                case PlayerActionType.AimStart:{
                    this.weaponAnimator.setParamsBool("IsWalking", false);
                    this.weaponAnimator.setParamsBool("IsRunning", false);
                    this.weaponAnimator.setParamsBool("IsFiring", false);
                    this.weaponAnimator.setParamsBool("IsIdle", false);
                    this.weaponAnimator.setParamsBool("IsAim", true);
                    this.weaponAnimator.setParamsNumber("Reload", 0);
                    break;
                }
                case PlayerActionType.AimFire:{
                    this.weaponAnimator.setParamsBool("IsWalking", false);
                    this.weaponAnimator.setParamsBool("IsRunning", false);
                    this.weaponAnimator.setParamsBool("IsFiring", true);
                    this.weaponAnimator.setParamsBool("IsIdle", false);
                    this.weaponAnimator.setParamsBool("IsAim", true);
                    this.weaponAnimator.setParamsNumber("Reload", 0);
                    break;
                }
                case PlayerActionType.AimEnd:{
                    this.weaponAnimator.setParamsBool("IsWalking", false);
                    this.weaponAnimator.setParamsBool("IsRunning", false);
                    this.weaponAnimator.setParamsBool("IsFiring", false);
                    this.weaponAnimator.setParamsBool("IsIdle", true);
                    this.weaponAnimator.setParamsBool("IsAim", false);
                    this.weaponAnimator.setParamsNumber("Reload", 0);
                    break;
                }
                default:{
                    this.weaponAnimator.setParamsBool("IsWalking", false);
                    this.weaponAnimator.setParamsBool("IsRunning", false);
                    this.weaponAnimator.setParamsBool("IsFiring", false);
                    this.weaponAnimator.setParamsBool("IsIdle", true);
                    this.weaponAnimator.setParamsBool("IsAim", false);
                    this.weaponAnimator.setParamsNumber("Reload", 0);
                }
            }
        }
    }

    // 底部射线检测
    private RayCheck(){
        // 在地面移动或者跳跃后接触地面时开启检测
        if((this.isMoving && this.charCtrl.isGrounded) || this.jumpTouchGound){
            // 进入检测逻辑就设置为false
            if(this.jumpTouchGound)
                this.jumpTouchGound = false;
            let dir = Laya.Vector3.ZERO;
            this.playerTrs.getUp(dir);
            let ray = new Laya.Ray(this.playerTrs.position, new Laya.Vector3(0, -dir.y, 0));
            let hitResult = new Laya.HitResult();
            if(this.scene.physicsSimulation.rayCast(ray, hitResult, this.rayDistance)){
                let sprite = hitResult.collider.owner as Laya.Sprite3D;
                this.touchLayer = sprite.layer;
                this.audioManager.StartFootstep(this.shiftPress, this.touchLayer);
            }
            else{
                this.audioManager.StopFootstep()
            }
        }
        else{
            this.audioManager.StopFootstep()
        }
    }

    public IsAimAction(reloadWhenAim: boolean = false){
        if(!GameManager.GetInstance().IsGameStart) return;
        if(this.reloadStart && !reloadWhenAim) return;
        this.aimAnimPlayed = false;
        this.lastIsAiming = this.isAiming;
        this.isAiming = !this.isAiming;
        if(this.lastIsAiming && !this.isAiming){
            WeaponManager.GetInstance().SetAimOut(true);
        }
    }

    private InitPosAndRotation(){
        this.playerTrs.position = new Laya.Vector3(0, 1, 0);
        this.playerTrs.localRotationEuler = new Laya.Vector3(0, 0, 0);
        this.rootTrs.localRotationEuler = new Laya.Vector3(0, 0, 0);
    }

    private InitParams(){
        this.charCtrl.move(new Laya.Vector3(0, 0, 0));
        this.isMoving = false;
        this.isTouchGround = null;
        this.isJumping = false;
        this.jumpTouchGound = false;
        this.isShooting = false;
        this.isAiming = false;
        this.reloadStart = false;
        this.reloadEnd = true;
        this.lastIsAiming = null;
        this.aimAnimPlayed = false;
        this.mainCamera.fieldOfView = 55;
        this.curActionType = PlayerActionType.Idle;
        this.SetAnimatorByActionType();
        this.aimLayer.defaultWeight = 0;
        this.weaponAnimator.play(null, 0);
        this.InitPosAndRotation();
    }

    public MoveStop(){
        // this.isMoving = false;
    }

    public DirectMove(angle: number){
        // this.isMoving = true;
    }

    public IsMoving(): boolean{
        return this.isMoving;
    }

    public IsRunning(): boolean{
        return this.curActionType == PlayerActionType.Run;
    }

    public IsGrounded(): boolean{
        return this.charCtrl.isGrounded;
    }

    public GetTouchLayer(): number{
        return this.touchLayer;
    }

    public GetIsJump(): boolean{
        return this.curActionType == PlayerActionType.Jump;
    }
}

enum PlayerActionType {
    Idle, Walk, Run, Jump, Fire, ReloadStart, ReloadEnd, AimStart, AimEnd, AimFire,
}