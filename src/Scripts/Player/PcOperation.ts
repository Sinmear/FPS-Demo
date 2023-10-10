import { OperationBase } from "./OperationBase";

const { regClass, property } = Laya;

@regClass()
export class PcOpenration extends OperationBase {
    onAwake(): void {
        super.onAwake();
        Laya.stage.on(Laya.Event.RIGHT_MOUSE_UP, this, ()=>{
            this.manager.RightMouseUp();
        });
    }
    
    onUpdate(): void {
        this.manager.isMoving = false;
        this.manager.moveForward = false;
        if(Laya.InputManager.hasKeyDown(Laya.Keyboard.W)){
            this.manager.moveForward = true;
            this.manager.isMoving = true;
            this.playerTrs.getForward(this.manager.moveAngle);
            this.manager.moveAngle.x = -this.manager.moveAngle.x;
            this.manager.moveAngle.z = -this.manager.moveAngle.z;
        }
        if(Laya.InputManager.hasKeyDown(Laya.Keyboard.S)){
            this.manager.isMoving = true;
            this.playerTrs.getForward(this.manager.moveAngle);
        }
        if(Laya.InputManager.hasKeyDown(Laya.Keyboard.D)){
            this.manager.isMoving = true;
            this.playerTrs.getRight(this.manager.moveAngle);
            this.manager.moveAngle.x = -this.manager.moveAngle.x;
            this.manager.moveAngle.z = -this.manager.moveAngle.z;
        }
        if(Laya.InputManager.hasKeyDown(Laya.Keyboard.A)){
            this.manager.isMoving = true;
            this.playerTrs.getRight(this.manager.moveAngle);
        }
        // console.log(this.manager.moveAngle.x, this.manager.moveAngle.z);
        
        this.manager.isRunning = Laya.InputManager.hasKeyDown(Laya.Keyboard.SHIFT);
        this.manager.isJumping = Laya.InputManager.hasKeyDown(Laya.Keyboard.SPACE);
        this.manager.isShooting = Laya.InputManager.hasKeyDown(Laya.Keyboard.F);
        this.manager.isReloading = Laya.InputManager.hasKeyDown(Laya.Keyboard.R);
    }
}