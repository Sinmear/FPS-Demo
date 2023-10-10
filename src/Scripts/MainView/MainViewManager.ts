import { MainView } from "./MainView";

export default class MainViewManager {
    private static instance: MainViewManager = null;
    public static GetInstance(): MainViewManager {
        if (MainViewManager.instance == null) {
            MainViewManager.instance = new MainViewManager();
            return MainViewManager.instance;
        }
        else {
            return MainViewManager.instance;
        }
    }

    private curScore: number = 0;
    private mianPanelNode: Laya.Sprite;
    private MainView: MainView;

    public InitView(planeNode: Laya.Sprite){
        // let root = Laya.stage.getChildByName("root");
        // let scene2d = root.getChildAt(0);
        // this.planeNode = scene2d.getChildByName("MainView");
        // this.MainView = this.planeNode.getComponent(MainView);
        this.mianPanelNode = planeNode;
        this.MainView = this.mianPanelNode.getComponent(MainView);
    }

    public InitScore(){
        this.curScore = 0;
        this.MainView.UpdateScore(this.curScore);
    }

    public AddScore(score: number){
        if(this.MainView == null) return;
        this.curScore += score;
        this.MainView.UpdateScore(this.curScore);
    }

    public GetScore(): number{
        return this.curScore;
    }

    public StartCountDown(){
        if(this.MainView == null) return;
        this.MainView.StartCountDown();
    }

    public SetMainViewVisible(bool: boolean){
        this.mianPanelNode.visible = bool
    }
    
    public ShowDebugMessage(...message: any[]){
        let totalStr = ""
        for(let value of message){
            totalStr += value.toString() + " ";
        }
        this.MainView.debugLabel.text = totalStr;
    }
}