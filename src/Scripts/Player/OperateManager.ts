import { FpsCtrlManager } from "./FpsCtrlManager";
import { MobileOperation } from "./MobileOperation";
import { PcOpenration } from "./PcOperation";

export class OperateManager {
    private static instance: OperateManager = null;
    public static GetInstance(): OperateManager {
        if (OperateManager.instance == null) {
            OperateManager.instance = new OperateManager();
            return OperateManager.instance;
        }
        else {
            return OperateManager.instance;
        }
    }

    public isMobile: boolean = Laya.Browser.onMobile;
    public isPc: boolean = Laya.Browser.onPC;
    private operationNode: Laya.Sprite;
    private operationPanel: MobileOperation | PcOpenration;
    private openrationPanelPath: string = "resources/Prefabs/OperationNode.lh";
    private pcopenrationPath: string = "resources/Prefabs/PcOpenration.lh";

    public isMoving: boolean = false;
    public moveForward: boolean = false;
    public moveAngle: Laya.Vector3 = Laya.Vector3.ZERO;
    public isRunning: boolean = false;
    public isJumping: boolean = false;
    public isShooting: boolean = false;
    public isAiming: boolean = false;
    public isReloading: boolean = false;

    public InitOperation(){
        // this.isMobile = true;
        if(this.isMobile){
            this.LoadOperationPanel();
        }
        else{
            this.LoadPcOperation();
        }
    }

    private LoadOperationPanel(){
        Laya.loader.load(this.openrationPanelPath).then((res: Laya.Prefab)=>{
            this.operationNode = res.create() as Laya.Sprite;
            this.operationPanel = this.operationNode.getComponent(MobileOperation);
            this.operationPanel.SetManager(this);
            this.SetOperationEnabled(false);
            let root = Laya.stage.getChildAt(1);
            let scene2d = root.getChildAt(0);
            scene2d.addChild(this.operationNode);
        })
    }

    private LoadPcOperation(){
        Laya.loader.load(this.pcopenrationPath).then((res: Laya.Prefab)=>{
            this.operationNode = res.create() as Laya.Sprite;
            this.operationPanel = this.operationNode.getComponent(PcOpenration);
            this.operationPanel.SetManager(this);
            this.SetOperationEnabled(false);
            let root = Laya.stage.getChildAt(1);
            let scene2d = root.getChildAt(0);
            scene2d.addChild(this.operationNode);
        })
    }

    public RightMouseUp(){
        FpsCtrlManager.GetInstance().fpsController.IsAimAction();
    }

    public GetIsShooting(): boolean{
        if(this.isMobile){
            return true;
        }
        else{
            return true;
        }
    }

    public SetOperationEnabled(bool: boolean){
        if(!this.operationNode) return;
        this.operationPanel.enabled = bool;
        this.operationNode.active = bool;
        this.operationNode.visible = bool;
    }
}