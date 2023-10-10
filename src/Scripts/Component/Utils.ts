export class Utils {
    private static instance: Utils = null;

    public static GetInstance(): Utils {
        if (Utils.instance == null) {
            Utils.instance = new Utils();
            return Utils.instance;
        }
        else {
            return Utils.instance;
        }
    }

    constructor(){
        
    }

    public GetRandom(min: number, max: number){
        return Math.floor(Math.random() * (max - min + 1) + min);
    }

}

export enum SoundType{
    Ground = 1, Water, Player, Enemy
}