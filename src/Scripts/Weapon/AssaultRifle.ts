import FireArm from "./FireArm";

const { regClass, property } = Laya;

@regClass()
export class AssaultRifle extends FireArm {
    onAwake(): void {
        super.onAwake();
    }

    public ReloadEnd() {
        super.ReloadEnd();
    }

    public ReloadEndOutof(){
        super.ReloadEndOutof();
    }
}