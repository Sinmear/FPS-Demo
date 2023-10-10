import MainViewManager from "./MainViewManager";
import { GameStartPanel } from "./GameStartPanel";
import { GameOverPanel } from "./GameOverPanel";
import WeaponManager from "../Weapon/WeaponManager";
import { FpsCtrlManager } from "../Player/FpsCtrlManager";
import { OperateManager } from "../Player/OperateManager";

export default class GameManager {
    private static instance: GameManager = null;
    public static GetInstance(): GameManager {
        if (GameManager.instance == null) {
            GameManager.instance = new GameManager();
            return GameManager.instance;
        }
        else {
            return GameManager.instance;
        }
    }
    private gameOverPanelPath: string = "resources/Prefabs/GameOverPanel.lh"

    private startPanelNode: Laya.Sprite;
    private startPanel: GameStartPanel;
    private isGameStart: boolean = false;
    get IsGameStart(): boolean{
        return this.isGameStart;
    }
    set IsGameStart(value: boolean){
        this.isGameStart = value;
    }
    private gameOverPanelNode: Laya.Sprite;
    private gameOverPanel: GameOverPanel;

    public InitStartPanel(panel: Laya.Sprite){
        this.startPanelNode = panel;
        this.startPanel = this.startPanelNode.getComponent(GameStartPanel);
        OperateManager.GetInstance().InitOperation();
    }
    
    public GameStart(){
        this.isGameStart = true;
        OperateManager.GetInstance().SetOperationEnabled(true);
        WeaponManager.GetInstance().InitAmmoCount();
        MainViewManager.GetInstance().InitScore();
        MainViewManager.GetInstance().SetMainViewVisible(true);
        MainViewManager.GetInstance().StartCountDown();
    }
    
    public GameOver(){
        this.isGameStart = false;
        OperateManager.GetInstance().SetOperationEnabled(false);
        MainViewManager.GetInstance().SetMainViewVisible(false);
        Laya.loader.load(this.gameOverPanelPath).then((res: Laya.Prefab)=>{
            this.gameOverPanelNode = res.create() as Laya.Sprite;
            this.gameOverPanel = this.gameOverPanelNode.getComponent(GameOverPanel);
            let root = Laya.stage.getChildAt(1);
            let scene2d = root.getChildAt(0);
            scene2d.addChild(this.gameOverPanelNode);
        })
    }
}