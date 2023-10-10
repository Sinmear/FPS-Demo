import { OperateManager } from "../Player/OperateManager";
import GameManager from "./GameManager";

const { regClass, property } = Laya;

@regClass()
export class GameStartPanel extends Laya.Script {
    private startBtn: Laya.Button;
    private pcOperationDesc: Laya.Label;
    onAwake(): void {
        this.startBtn = this.owner.getChildByName("StartBtn") as Laya.Button;
        this.startBtn.on(Laya.Event.CLICK, ()=>{
            GameManager.GetInstance().GameStart();
            this.owner.removeSelf();
        })
        GameManager.GetInstance().InitStartPanel(this.owner as Laya.Sprite);
        this.pcOperationDesc = this.owner.getChildByName("PcOperatoinDesc") as Laya.Label;
        this.pcOperationDesc.visible = Laya.Browser.onPC;
    }
}