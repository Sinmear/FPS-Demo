import MainViewManager from "../MainView/MainViewManager";

const { regClass, property } = Laya;

@regClass()
export class Target extends Laya.Script {
    private canGetHurt: boolean = true;
    private transform: Laya.Transform3D;
    private rotationTween: Laya.Tween;
    private moveTween: Laya.Tween;
    @property(Boolean)
    private isMovable: boolean;
    @property(Number)
    private leftPos: number;
    @property(Number)
    private rightPos: number;
    @property(Boolean)
    private isMoveLeft: boolean;

    onAwake(): void {
        this.transform = (this.owner as Laya.Sprite3D).transform;
        this.MoveRween()
    }

    public GetHurt(socre: number){
        if(!this.canGetHurt) return;
        this.canGetHurt = false;
        Laya.timer.once(4000, this, ()=>{
            this.Reset();
        })
        this.RotationRween();
        MainViewManager.GetInstance().AddScore(socre);
    }
    
    private Reset(){
        this.canGetHurt = true;
        this.RotationRween();
    }

    private RotationRween(){
        if(this.moveTween != null){
            Laya.Tween.clear(this.moveTween);
            this.moveTween = null;
        }
        let tarRotation = this.canGetHurt ? 0 : 90;
        this.rotationTween = Laya.Tween.to(this.transform, {localRotationEulerX: tarRotation}, 500, Laya.Ease.backOut
            , Laya.Handler.create(this, this.MoveRween)
        );
    }

    private MoveRween(){
        if(!this.canGetHurt || !this.isMovable) return;
        let tarPos = this.isMoveLeft ? this.leftPos : this.rightPos;
        let offset = 0
        if(this.isMoveLeft)
            offset = this.leftPos - this.transform.localPositionX;
        else
            offset = this.transform.localPositionX - this.rightPos;
        let time = offset / (this.leftPos - this.rightPos) * 2000;
        this.moveTween = Laya.Tween.to(this.transform, {localPositionX: tarPos}, time, Laya.Ease.linearIn
            , Laya.Handler.create(this, this.MoveOtherSide)
        );
    }

    private MoveOtherSide(){
        this.isMoveLeft = !this.isMoveLeft;
        this.MoveRween();
    }
}