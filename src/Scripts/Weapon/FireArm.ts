import WeaponManager from "./WeaponManager";

const { regClass, property } = Laya;

@regClass()
export default class FireArm extends Laya.Script {
    @property(Laya.Sprite3D)
    protected muzzlePoint: Laya.Sprite3D;           // 枪口位置
    protected muzzleTrs: Laya.Transform3D;          // 枪口位置Transform
    @property(Laya.Sprite3D)
    protected muzzlePoint2: Laya.Sprite3D;           // 枪口位置2
    protected muzzleTrs2: Laya.Transform3D;          // 枪口位置Transform
    @property(String)
    protected bulletPrefPath: string;               // 子弹预设路径
    @property(Number)
    public ammoInMag: number = 30;                  // 单个弹夹子弹容量
    @property(Number)
    public ammoMaxCarried: number = 60;             // 子弹最大容量
    public curAmmo: number = 0;                     // 当前弹夹子弹容量
    public curCarried: number = 0                   // 当前子弹剩余容量
    @property(Number)
    protected fireRate: number;                     // 每秒射出子弹数量
    protected fireDeltaTime: number;                // 子弹射出间隔
    protected lastFireTime: number = 0;             // 上一次子弹射出时间
    protected fireTimer: number = 0;                // 子弹间隔计数器
    protected canShoot: boolean = true;             // 能否射击
    protected animator: Laya.Animator;              // 武器动画状态机
    @property(String)
    protected shootPath: string;                    // 枪声路径
    @property(String)
    protected reloadLeftPath: string;               // 弹夹声音1路径
    @property(String)
    protected reloadOutOfPath: string;              // 弹夹声音2路径

    protected isReloading: boolean = false;
    @property(Laya.Sprite3D)
    private BulletNode: Laya.Sprite3D;

    private isAimIn: boolean = false;
    private isAimOut: boolean = false;

    constructor(){
        super();
    }
    
    onAwake(): void {
        this.muzzleTrs = this.muzzlePoint.transform;
        this.muzzleTrs2 = this.muzzlePoint2.transform;
        this.curAmmo = this.ammoInMag;
        this.curCarried = this.ammoMaxCarried;
        this.fireDeltaTime = 1 / this.fireRate;
        this.animator = this.owner.getComponent<Laya.Animator>(Laya.Animator);
        WeaponManager.GetInstance().InitFireArm(this.owner as Laya.Sprite3D);
    }

    // 执行攻击逻辑
    public DoAttack(isAiming: boolean){
        this.Shooting(isAiming);
    }

    // 开火
    protected Shooting(isAiming: boolean){
        if(!this.IsAllowShoot()) return;
        if(this.canShoot){
            this.canShoot = false;
            Laya.SoundManager.playSound(this.shootPath, 1);
            this.curAmmo -= 1;
            WeaponManager.GetInstance().UpdateCurAmmo(this.curAmmo);
            this.CreateBullet(isAiming);
        }
        else{
            this.fireTimer += Laya.timer.delta / 1000;
            if(this.fireTimer >= this.fireDeltaTime){
                this.fireTimer = 0;
                this.canShoot = true;
            }
        }
    }

    // 重装弹夹
    public Reload(){
        if(this.isReloading) return;
        this.isReloading = true;
        let soundPath = this.curAmmo > 0 ? this.reloadLeftPath : this.reloadOutOfPath;
        Laya.SoundManager.playSound(soundPath, 1);
    }

    // 能否射击
    public IsAllowShoot(): boolean{
        // return !this.isReloading;
        return this.curAmmo > 0 && !this.isReloading;
    }

    public ReloadEnd(){
        let needCount = this.ammoInMag - this.curAmmo;
        needCount = needCount >= this.curCarried ? this.curCarried : needCount;
        this.curAmmo += needCount;
        this.curCarried -= needCount;
        WeaponManager.GetInstance().UpdateCurAmmo(this.curAmmo);
        WeaponManager.GetInstance().UpdateCurCarried(this.curCarried);
        this.isReloading = false;
    }

    public ReloadEndOutof(){
        this.ReloadEnd();
    }

    public CanReload(): boolean{
        // return !this.isReloading;
        return !this.isReloading && this.curAmmo < this.ammoInMag && this.curCarried > 0;
    }

    public IsReloading(): boolean{
        return this.isReloading
    }

    private CreateBullet(isAiming: boolean){
        Laya.loader.load(this.bulletPrefPath).then((res)=>{
            let instance: Laya.Sprite3D = Laya.Pool.getItemByCreateFun("Bullet", res.create, res);
            // 添加到场景中
            this.BulletNode.addChild(instance);
            // 设置预制体位置
            let bulletTrs: Laya.Transform3D = instance.transform;
            let trs = isAiming ? this.muzzleTrs2 : this.muzzleTrs;
            bulletTrs.position = trs.position;
            bulletTrs.rotation = trs.rotation;
        })
    }

    public InitAmmoCount(){
        this.curAmmo = this.ammoInMag;
        this.curCarried = this.ammoMaxCarried;
        WeaponManager.GetInstance().UpdateCurAmmo(this.curAmmo);
        WeaponManager.GetInstance().UpdateCurCarried(this.curCarried);
    }

    public GetAimIn(): boolean{
        return this.isAimIn;
    }
    public SetAimIn(value: boolean){
        this.isAimIn = value
    }

    public GetAimOut(): boolean{
        return this.isAimOut;
    }
    public SetAimOut(value: boolean){
        this.isAimOut = value
    }
    
    public AimInEnd(){
        this.SetAimIn(false);
    }
    public AimOutEnd(){
        this.SetAimOut(false);
    }
}