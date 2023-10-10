import FpsController from "./FpsController";

export class FpsCtrlManager {
    private static instance: FpsCtrlManager = null;
    public static GetInstance(): FpsCtrlManager {
        if (FpsCtrlManager.instance == null) {
            FpsCtrlManager.instance = new FpsCtrlManager();
            return FpsCtrlManager.instance;
        }
        else {
            return FpsCtrlManager.instance;
        }
    }
    
    public fpsCtrlNode: Laya.Sprite3D;
    public fpsController: FpsController;

    public InitFpsController(fpsCtrlNode: Laya.Sprite3D){
        this.fpsCtrlNode = fpsCtrlNode;
        this.fpsController = fpsCtrlNode.getComponent(FpsController);
    }
}