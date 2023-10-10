import { FpsCtrlManager } from "../Player/FpsCtrlManager";
import { MobileOperation } from "../Player/MobileOperation";

const { regClass, property } = Laya;

@regClass()
export default class Roker extends Laya.Script {
    private currRockerbox: Laya.Box;
    private currRockerBar: Laya.Button;
    private dropdis: number = 80;
    private touchId: number = -1;
    private mdownx: number;
    private mdowny: number;
    private barinitx: number;
    private barinity: number;
    private initbarx: number;
    private initbary: number;
    private rockerIsDown: boolean;
    private view: any;
    private _currentMouse: Laya.Point;
    private operation: MobileOperation;

    private curAngle: number = 0;
    private playerAngle: number = 0;
    private forwardDir: Laya.Vector3 = Laya.Vector3.ZERO;
    private playerTrs: Laya.Transform3D;
    private rotationAngle: Laya.Vector3 = Laya.Vector3.ZERO;

    constructor() {
        super();
    }

    /**
     * 组件被激活后执行，此时所有节点和组件均已创建完毕，次方法只执行一次
     * 此方法为虚方法，使用时重写覆盖即可
     */
    onAwake(): void {
        this.view = this.owner;
        this._currentMouse = new Laya.Point();
        this.playerTrs = FpsCtrlManager.GetInstance().fpsCtrlNode.transform;
    }

    public InitOperation(operation: MobileOperation){
        this.operation = operation;
    }

    /**
     * 第一次执行update之前执行，只会执行一次
     * 此方法为虚方法，使用时重写覆盖即可
     */
    onStart(): void {
        this.currRockerbox = this.view;
        this.currRockerBar = this.view.getChildByName("freebar")
        this.dropdis = 100;
        this.initbarx = this.currRockerBar.x;
        this.initbary = this.currRockerBar.y;

        this.currRockerBar.on(Laya.Event.MOUSE_DOWN, this, this.rockerDown);
        Laya.stage.on(Laya.Event.MOUSE_DRAG, this, this.rockerMove);
        Laya.stage.on(Laya.Event.MOUSE_DRAG_END, this, this.rockerUp);

    }

    onUpdate(): void {
        if(this.rockerIsDown){
            let radians: number = Math.PI / 180 * (this.curAngle + this.playerAngle);
            // console.log(Math.sin(radians), Math.cos(radians));
            let sinValue = Math.sin(radians);
            let cosValue = Math.cos(radians);
            this.rotationAngle = new Laya.Vector3(sinValue, 0, cosValue);
            let isForward = this.curAngle < 30 && this.curAngle > -30;
            this.operation.MoveDir(this.rotationAngle, isForward);
        }
    }

    private rockerDown(e: Laya.Event): void {
        if (this.touchId != -1) return;
        e.stopPropagation();
        this.touchId = e.touchId;
        this.rockerIsDown = true;
        this.currRockerBar.selected = true;
        // this.curangleDown = this.owner.transform.localRotationEulerY

        if (this.rockerIsDown) {
            this.mdownx = this.currRockerbox.mouseX;
            this.mdowny = this.currRockerbox.mouseY;
            this.barinitx = this.currRockerBar.x;
            this.barinity = this.currRockerBar.y;
            // this.checkShow("down")
        }
    }
    private rockerUp(e: Laya.Event): void {
        if (e.touchId == this.touchId) {
            this.touchId = -1;

            this.rockerIsDown = false;
            this.currRockerBar.x = this.initbarx;
            this.currRockerBar.y = this.initbary;
            this.currRockerBar.selected = false;
            // if (this.fpsController) this.fpsController.MoveStop();
            this.operation.StopMove();
        }

    }
    private rockerMove(e: Laya.Event): void {
        if (!this.rockerIsDown) return;
        if (e.touchId != this.touchId) {
            return;
        }
        
        e.stopPropagation();
        this._currentMouse.x = Math.round(e.touchPos.x / Laya.stage.clientScaleY);
        this._currentMouse.y = Math.round(e.touchPos.y / Laya.stage.clientScaleY);
        this.currRockerbox.globalToLocal(this._currentMouse, false);
        var cmousex: number = this._currentMouse.x;
        var cmousey: number = this._currentMouse.y;
        var value: number = (this.mdownx - cmousex) * (this.mdownx - cmousex) + (this.mdowny - cmousey) * (this.mdowny - cmousey);
        var dis: number = Math.sqrt(value);
        if (dis < 0) dis = -dis;
        var delatx: number = cmousex - this.mdownx;
        var delaty: number = cmousey - this.mdowny;
        var angle: number = Math.atan2(delatx, delaty) * 180 / Math.PI;

        // this.curAngle = angle;
        this.curAngle = angle > 0 ? angle - 180 : angle + 180;
        
        this.playerTrs.getForward(this.forwardDir);
        this.playerAngle = Math.atan2(-this.forwardDir.x, -this.forwardDir.z) * 180 / Math.PI;
        
        var radians: number = Math.PI / 180 * angle;
        if (dis < this.dropdis) {
            this.currRockerBar.x = this.barinitx + delatx;
            this.currRockerBar.y = this.barinity + delaty;
        } else {
            var x: number = Math.floor(Math.sin(radians) * this.dropdis + this.barinitx);
            var y: number = Math.floor(Math.cos(radians) * this.dropdis + this.barinity);
            this.currRockerBar.x = x;
            this.currRockerBar.y = y;
        }
        // if (this.fpsController) this.fpsController.DirectMove(angle);
    }


}