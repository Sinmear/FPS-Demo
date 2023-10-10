import MainViewManager from "../MainView/MainViewManager";
import { FpsCtrlManager } from "./FpsCtrlManager";
import { OperateManager } from "./OperateManager";

// const { regClass, property } = Laya;

// @regClass()
export class OperationBase extends Laya.Script {
    protected view: Laya.Sprite;
    protected manager: OperateManager;
    protected rotationX: number = 0;
    protected rotationY: number = 0;
    protected playerNode: Laya.Sprite3D;
    protected playerTrs: Laya.Transform3D;
    protected rootTrs: Laya.Transform3D;
    protected mouseSensitivity: number = 0.2;           // 鼠标灵敏度
    protected maxVerticalAngle: number = 90;           // 竖直最大角度
    protected minVerticalAngle: number = -90;           // 竖直最小角度
    private touchId: number = -1;
    private isMouseDown: boolean = false;
    protected dragBtn: Laya.Button;

    public SetManager(manager: OperateManager){
        this.manager = manager;
    }

    onAwake(): void {
        this.view = this.owner as Laya.Sprite;
        this.playerNode = FpsCtrlManager.GetInstance().fpsCtrlNode;
        this.playerTrs = this.playerNode.transform;
        let rootNode = this.playerNode.getChildAt(0) as Laya.Sprite3D;
        this.rootTrs = rootNode.transform;

        this.dragBtn = this.view.getChildByName("DragBtn") as Laya.Button;
        console.log(this.touchId);
        
        this.dragBtn.on(Laya.Event.MOUSE_DOWN, (event: Laya.Event)=>{
            // event.stopPropagation();
            this.MouseDown(event);
        })
        this.dragBtn.on(Laya.Event.MOUSE_DRAG, (event: Laya.Event)=>{
            // event.stopPropagation();
            this.MouseMove(event);
        })
        this.dragBtn.on(Laya.Event.MOUSE_DRAG_END, (event: Laya.Event)=>{
            // event.stopPropagation();
            this.MouseUp(event);
        })
        // this.dragBtn.on(Laya.Event, (event: Laya.Event)=>{
        //     console.log(11111111);
        //     this.MouseDown(event);
            
        // })
    }

    private MouseDown(event: Laya.Event){
        if(this.touchId != -1) return;
        this.touchId = event.touchId;
        event.stopPropagation();
        // 缓存鼠标位置
        // this.rotationX = Laya.stage.mouseX;
        // this.rotationY = Laya.stage.mouseY;
        this.rotationX = Math.round(event.touchPos.x / Laya.stage.clientScaleY)
        this.rotationY = Math.round(event.touchPos.y / Laya.stage.clientScaleY)
        this.isMouseDown = true;

    }
    
    private MouseUp(event: Laya.Event){
        if (event.touchId != this.touchId) return;
        this.touchId = -1;
        this.isMouseDown = false;
        this.rotationX = Math.round(event.touchPos.x / Laya.stage.clientScaleY)
        this.rotationY = Math.round(event.touchPos.y / Laya.stage.clientScaleY)
    }

    // 鼠标移动控制相机视角和角色朝向
    private MouseMove(event: Laya.Event){
        if (event.touchId != this.touchId) return;
        if(this.isMouseDown){
            // 计算鼠标偏移量
            let angleX = Math.round(event.touchPos.x / Laya.stage.clientScaleY) - this.rotationX
            let angleY = Math.round(event.touchPos.y / Laya.stage.clientScaleY) - this.rotationY
            // 刷新鼠标位置缓存
            this.rotationX = Math.round(event.touchPos.x / Laya.stage.clientScaleY);
            this.rotationY = Math.round(event.touchPos.y / Laya.stage.clientScaleY);
            // unity导入的模型z轴方向是反的，做下处理
            let tmpAngle = this.rootTrs.localRotationEulerX + angleY * this.mouseSensitivity;
            tmpAngle = tmpAngle % 360;
            tmpAngle = this.ClampValue(tmpAngle, this.minVerticalAngle, this.maxVerticalAngle);
            this.rootTrs.localRotationEulerX = tmpAngle
            tmpAngle = this.playerTrs.localRotationEulerY - angleX * this.mouseSensitivity;
            tmpAngle = tmpAngle % 360;
            this.playerTrs.localRotationEulerY = tmpAngle;
        }
    }

    // 限制范围
    protected ClampValue(value: number, min: number, max: number): number {
        if(value < min)
            return min;
        else if(value > max)
            return max;
        else
            return value;
    }
}