import { Utils, SoundType } from "./Utils";

const { regClass, property } = Laya;

@regClass()
export default class AudioManager extends Laya.Script {
    // @property({type: String, isAsset: true, assetTypeFilter: "Audio"})
    // private path: string;


    @property({type: ["string"]})
    private groundSounds: string[];
    private curSounds: Array<string> = new Array<string>();
    @property(Number)
    private walkDelay: number;
    @property(Number)
    private runDelay: number;
    private realDelay: number = 0;
    private touchLayer: number = 0;
    private lastLayer: number;
    private tmpTime: number = 0;
    private canPlay: boolean = true;
    private playFootstepSound: boolean = false;
    private stopLayer: boolean = false;

    constructor(){
        super();
    }

    onUpdate(): void {
        if(this.playFootstepSound){
            if(this.canPlay){
                this.tmpTime = 0;
                this.canPlay = false;
                this.PlayFootStepSound();
            }
            else{
                this.tmpTime += Laya.timer.delta / 1000;
                if(this.tmpTime >= this.realDelay){
                    this.canPlay = true;
                    if(this.stopLayer)
                        this.playFootstepSound = false;
                }
            }
        }
    }

    public PlayFootStepSound(){
        if(this.lastLayer == null || this.lastLayer != this.touchLayer){
            this.lastLayer == this.touchLayer;
            this.curSounds = this.GetSoundType();
        }
        if(this.curSounds.length == 0) return;
        let index = Utils.GetInstance().GetRandom(0, this.curSounds.length - 1);
        Laya.SoundManager.playSound(this.curSounds[index], 1);
        // Laya.SoundManager.playSound(this.path, 1);
    }

    private GetSoundType(): Array<string>{
        return this.groundSounds;
        // let tmpSounds = new Array<string>();
        // switch(this.touchLayer){
        //     case SoundType.Ground:
        //         tmpSounds = this.groundSounds;
        //         break;
        //     case SoundType.Water:
        //         tmpSounds = this.waterSounds;
        //         break;
        //     default:
        //         tmpSounds = this.groundSounds;
        // }
        // return tmpSounds;
    }

    public StartFootstep(speedUp: boolean, touchLayer: number){
        this.realDelay = speedUp ? this.runDelay : this.walkDelay;
        this.touchLayer = touchLayer;
        if(!this.playFootstepSound){
            this.playFootstepSound = true;
        }
        
    }

    public StopFootstep(){
        if(this.playFootstepSound)
            this.stopLayer = true;
        else
            this.playFootstepSound = false;
    }
}