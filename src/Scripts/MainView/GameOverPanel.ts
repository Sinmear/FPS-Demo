import GameManager from "./GameManager";
import MainViewManager from "./MainViewManager";

const { regClass, property } = Laya;

@regClass()
export class GameOverPanel extends Laya.Script {
    private restartBtn: Laya.Button;
    private clearBtn: Laya.Button;
    private curScore: Laya.Label;
    private curScoreValue: number = 0;
    private curTime: Laya.Label;
    private socreKey: string = "HistoryScores";
    private rankList: Laya.List;

    onAwake(): void {
        this.restartBtn = this.owner.getChildByName("RestartBtn") as Laya.Button;
        this.restartBtn.on(Laya.Event.CLICK, ()=>{
            this.ReStart();
        });
        this.clearBtn = this.owner.getChildByName("ClearBtn") as Laya.Button;
        this.clearBtn.on(Laya.Event.CLICK, ()=>{
            this.ClearHistory();
        });
        this.curScore = this.owner.getChildByName("CurScore") as Laya.Label;
        this.curTime = this.owner.getChildByName("CurTime") as Laya.Label;
        let rankNode = this.owner.getChildByName("RankNode");
        this.rankList = rankNode.getChildByName("List") as Laya.List;
        this.rankList.vScrollBarSkin = "";
        this.rankList.scrollBar.elasticBackTime = 200;
        this.rankList.scrollBar.elasticDistance = 50;
        //绑定list渲染单元处理方法，自定义list的渲染单元数据
        this.rankList.renderHandler = new Laya.Handler(this, this.OnListRender);
        this.ShowScoreInfo();
        this.ShowRankInfo();
    }

    private ReStart(){
        GameManager.GetInstance().GameStart();
        this.owner.removeSelf();
    }

    private ClearHistory(){
        Laya.LocalStorage.removeItem("HistoryScores");
        this.rankList.array = [];
    }

    private ShowScoreInfo(){
        this.curScoreValue = MainViewManager.GetInstance().GetScore()
        this.curScore.text = this.curScoreValue.toString();
        let curDate = new Date();
        let year = curDate.getFullYear();
        let month = curDate.getMonth() + 1;
        let date = curDate.getDate();
        let hours = this.FormatNumber(curDate.getHours());
        let minutes = this.FormatNumber(curDate.getMinutes());
        let dateStr = `${year}/${month}/${date} ${hours}:${minutes}`
        this.curTime.text = dateStr
        let timeStamp = curDate.getTime();
        let scoreValue = Laya.LocalStorage.getItem(this.socreKey);
        if(scoreValue){
            scoreValue += `${this.curScoreValue}|${dateStr}|${timeStamp};`;
        }
        else{
            scoreValue = `${this.curScoreValue}|${dateStr}|${timeStamp};`;
        }
        Laya.LocalStorage.setItem(this.socreKey, scoreValue);
    }

    private ShowRankInfo(){
        let scoreValue = Laya.LocalStorage.getItem(this.socreKey);
        if(scoreValue){
            let scores: Array<string> = scoreValue.split(";");   
            let array: Array<any> = [];
            for(let index = 0; index < scores.length - 1; index++){
                let infos = scores[index].split("|");
                let rankInfo = {
                    Score: infos[0],
                    Date: infos[1],
                    timeStamp: infos[2],
                }
                array.push(rankInfo);
            }
            array.sort((a, b)=>{
                if(a.Score != b.Score)
                    return b.Score - a.Score;
                else
                    return b.timeStamp - a.timeStamp;
            });
            this.rankList.array = array;
        }
        else{
            console.log("本地没有存储该数据。");
        }
    }

    private OnListRender(item: Laya.Box, index: number): void {
        if (index > this.rankList.array.length || index < 0) return;
    }

    private FormatNumber(num: number): string {
        // 转换为字符串
        var numStr: string = num.toString(); 
        // 不足三位的部分用零补齐
        while (numStr.length < 2) {
            numStr = '0' + numStr; 
        }
        return numStr;
    }
    
}