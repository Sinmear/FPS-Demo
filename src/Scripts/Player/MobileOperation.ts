import Roker from "../Component/Roker";
import { OperationBase } from "./OperationBase";

const { regClass, property } = Laya;

@regClass()
export class MobileOperation extends OperationBase {
    private shootBtn: Laya.Button;
    private shootBtn2: Laya.Button;
    private jumpBtn: Laya.Button;
    private runBtn: Laya.Button;
    private aimBtn: Laya.Button;
    private reloadBtn: Laya.Button;
    private rokerNode: Laya.Sprite;
    private roker: Roker;

    onAwake(): void {
        super.onAwake();

        this.aimBtn = this.view.getChildByName("AimBtn") as Laya.Button;
        this.aimBtn.on(Laya.Event.CLICK, ()=>{
            this.manager.RightMouseUp();
        })

        this.jumpBtn = this.view.getChildByName("JumpBtn") as Laya.Button;
        this.jumpBtn.on(Laya.Event.MOUSE_DOWN, (event: Laya.Event)=>{
            this.manager.isJumping = true;
            event.stopPropagation();
        })
        this.jumpBtn.on(Laya.Event.MOUSE_UP, (event: Laya.Event)=>{
            this.manager.isJumping = false;
            event.stopPropagation();
        })
        this.jumpBtn.on(Laya.Event.MOUSE_OUT, (event: Laya.Event)=>{
            this.manager.isJumping = false;
            event.stopPropagation();
        })

        this.runBtn = this.view.getChildByName("RunBtn") as Laya.Button;
        this.runBtn.on(Laya.Event.MOUSE_DOWN, (event: Laya.Event)=>{
            this.manager.isRunning = true;
            event.stopPropagation();
        })
        this.runBtn.on(Laya.Event.MOUSE_UP, (event: Laya.Event)=>{
            this.manager.isRunning = false;
            event.stopPropagation();
        })
        this.runBtn.on(Laya.Event.MOUSE_OUT, (event: Laya.Event)=>{
            this.manager.isRunning = false;
            event.stopPropagation();
        })

        this.shootBtn = this.view.getChildByName("ShootBtn") as Laya.Button;
        this.shootBtn.on(Laya.Event.MOUSE_DOWN, (event: Laya.Event)=>{
            this.manager.isShooting = true;
            event.stopPropagation();
        })
        this.shootBtn.on(Laya.Event.MOUSE_UP, (event: Laya.Event)=>{
            this.manager.isShooting = false;
            event.stopPropagation();
        })
        this.shootBtn.on(Laya.Event.MOUSE_OUT, (event: Laya.Event)=>{
            this.manager.isShooting = false;
            event.stopPropagation();
        })
        this.shootBtn2 = this.view.getChildByName("ShootBtn2") as Laya.Button;
        this.shootBtn2.on(Laya.Event.MOUSE_DOWN, (event: Laya.Event)=>{
            this.manager.isShooting = true;
            event.stopPropagation();
        })
        this.shootBtn2.on(Laya.Event.MOUSE_UP, (event: Laya.Event)=>{
            this.manager.isShooting = false;
            event.stopPropagation();
        })
        this.shootBtn2.on(Laya.Event.MOUSE_OUT, (event: Laya.Event)=>{
            this.manager.isShooting = false;
            event.stopPropagation();
        })
        
        this.reloadBtn = this.view.getChildByName("ReloadBtn") as Laya.Button;
        this.reloadBtn.on(Laya.Event.MOUSE_DOWN, (event: Laya.Event)=>{
            this.manager.isReloading = true;
            event.stopPropagation();
        })
        this.reloadBtn.on(Laya.Event.MOUSE_UP, (event: Laya.Event)=>{
            this.manager.isReloading = false;
            event.stopPropagation();
        })
        this.reloadBtn.on(Laya.Event.MOUSE_OUT, (event: Laya.Event)=>{
            this.manager.isReloading = false;
            event.stopPropagation();
        })

        this.rokerNode = this.view.getChildByName("rokerbox") as Laya.Sprite;
        this.roker = this.rokerNode.getComponent(Roker);
        this.roker.InitOperation(this);
    }

    public StopMove(){
        this.manager.isMoving = false;
    }

    public MoveDir(angle: Laya.Vector3, isForward: boolean){
        this.manager.isMoving = true;
        this.manager.moveAngle = angle;
        this.manager.moveForward = isForward;
    }
}