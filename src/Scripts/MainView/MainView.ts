import FpsController from "../Player/FpsController";
import WeaponManager from "../Weapon/WeaponManager";
import GameManager from "./GameManager";
import MainViewManager from "./MainViewManager";

const { regClass, property } = Laya;

@regClass()
export class MainView extends Laya.Script {
    @property(Laya.Sprite3D)
    private fpCtrlNode: Laya.Sprite3D;
    private fpCtrl: FpsController;

    private plane: Laya.Sprite3D;
    private mainTrs: Laya.Transform3D;
    private scoreLable: Laya.Label;
    public score: number;

    private crosshairNode: Laya.Node;
    private initSize: number = 500;
    private maxSize: number = 650;
    private isBig: boolean = false;
    private lerpTween: Laya.Tween;
    private canLerp: boolean = true;

    private timeLabel: Laya.Label;
    private timeProgress: Laya.ProgressBar;
    private countDownTime: number = 60;
    private curTime: number;

    @property(String)
    private timerProgressSkin1: string;
    @property(String)
    private timerProgressSkin2: string;

    public debugLabel: Laya.Label;

    onAwake(): void {
        this.fpCtrl = this.fpCtrlNode.getComponent(FpsController);
        this.plane = this.owner as Laya.Sprite3D;
        this.mainTrs = this.plane.transform;
        let scoreNode = this.plane.getChildByName("ScoreNode");
        this.scoreLable = scoreNode.getChildByName("Score") as Laya.Label;
        this.score = 0;
        this.crosshairNode = this.plane.getChildByName("CrossHair");
        let timeNode = this.plane.getChildByName("TimeNode");
        this.timeLabel = timeNode.getChildByName("Time") as Laya.Label;
        this.timeProgress = timeNode.getChildByName("TimeProgress") as Laya.ProgressBar;
        this.debugLabel = this.plane.getChildByName("Debug") as Laya.Label;
        // this.debugLabel.text = "Load Success"
        let ammoNode = this.plane.getChildByName("AmmoNode") as Laya.Sprite;
        WeaponManager.GetInstance().InitAmmoNode(ammoNode);
        MainViewManager.GetInstance().InitView(this.owner as Laya.Sprite);
    }

    onUpdate(): void {
        this.StartCrossHairLerp();
    }

    public UpdateScore(score: number){
        this.score = score;
        this.scoreLable.text = score.toString();
    }

    public StartCrossHairLerp(){
        if(this.fpCtrl.IsAiming || this.fpCtrl.IsShooting){
            if(this.canLerp){
                this.canLerp = false;
                this.isBig = false;
                if(this.lerpTween != null){
                    this.ClearnTween();
                }
                this.lerpTween = Laya.Tween.to(this.crosshairNode, {width: this.initSize, height: this.initSize}, 200
                    , Laya.Ease.linearIn, Laya.Handler.create(this, ()=>{
                        this.ClearnTween();
                    })
                );
            }
        }
        else{
            this.canLerp = true;
            if(this.lerpTween == null){
                let tarSize = this.isBig ? this.initSize : this.maxSize;
                this.lerpTween = Laya.Tween.to(this.crosshairNode, {width: tarSize, height: tarSize}, 500
                    , Laya.Ease.linearIn, Laya.Handler.create(this, ()=>{
                        this.isBig = !this.isBig;
                        this.ClearnTween();
                    })
                );
            }
        }
    }

    public ClearnTween(){
        Laya.Tween.clear(this.lerpTween);
        this.lerpTween = null;
    }

    public StartCountDown(){
        this.curTime = this.countDownTime;
        Laya.timer.loop(100, this, this.CountDownCallback)
    }

    private CountDownCallback(){
        this.curTime -= 0.1;
        this.timeLabel.text = this.curTime > 0 ? this.curTime.toFixed(1) : "0";
        this.timeLabel.color = this.curTime > 10 ? "#0cfe00" : "#fe0000";
        this.timeProgress.value = this.curTime / this.countDownTime;
        this.timeProgress.skin = this.curTime > 10 ? this.timerProgressSkin1 : this.timerProgressSkin2;
        if(this.curTime <= 0){
            MainViewManager.GetInstance().SetMainViewVisible(false);
            GameManager.GetInstance().GameOver();
            Laya.timer.clear(this, this.CountDownCallback);
        }
    }
}