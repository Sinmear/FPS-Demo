import FireArm from "./FireArm";

const { regClass, property } = Laya;

@regClass()
export default class WeaponManager {
    private static instance: WeaponManager = null;
    public static GetInstance(): WeaponManager {
        if (WeaponManager.instance == null) {
            WeaponManager.instance = new WeaponManager();
            return WeaponManager.instance;
        }
        else {
            return WeaponManager.instance;
        }
    }
    private weaponList: Array<Laya.Sprite3D> = new Array<Laya.Sprite3D>();
    private curweaponIndex: number = 1;
    private curFireArm: FireArm;
    private curAmmo: Laya.Label;
    private curCarried: Laya.Label;
    private ammoInMag: Laya.Label;
    private ammoMaxCarried: Laya.Label;
    public curAmmoValue: number;
    public curCarriedValue: number;
    public ammoInMagValue: number;
    public ammoMaxCarriedValue: number;

    onAwake(): void {

    }

    public GetCurWeaponSprite(index: number){
        return this.weaponList[index];
    }

    public DoAttack(isAiming: boolean){
        if(this.curFireArm == null) return;
        this.curFireArm.DoAttack(isAiming);
    }

    public IsAllowShoot(): boolean{
        if(this.curFireArm == null) return false;
        return this.curFireArm.IsAllowShoot()
    }

    public InitFireArm(fireArmNode: Laya.Sprite3D){
        this.weaponList.push(fireArmNode);
        this.curFireArm = fireArmNode.getComponent(FireArm);
        this.UpdateCurAmmo(this.curFireArm.curAmmo);
    }
    
    public InitAmmoNode(ammoNode: Laya.Sprite){
        this.curAmmo = ammoNode.getChildByName("CurAmmo") as Laya.Label;
        this.curCarried = ammoNode.getChildByName("AmmoInMag") as Laya.Label;
        this.ammoInMag = ammoNode.getChildByName("CurCarried") as Laya.Label;
        this.ammoMaxCarried = ammoNode.getChildByName("AmmoMaxCarried") as Laya.Label;
    }

    public InitAmmoCount(){
        if(this.curFireArm == null) return false;
        this.curFireArm.InitAmmoCount();
    }
    
    public UpdateCurAmmo(value: number){
        this.curAmmoValue = value;
        this.curAmmo.text = value.toString();
        this.curAmmo.color = value > 0 ? "#fdaf2d" : "#fe0000";
    }
    public UpdateAmmoInMag(value: number){
        this.curCarriedValue = value;
        this.curCarried.text = value.toString();
    }
    public UpdateCurCarried(value: number){
        this.ammoInMagValue = value;
        this.ammoInMag.text = "/ " + value.toString();
        this.ammoInMag.color = value > 0 ? "#fdaf2d" : "#fe0000";
    }
    public UpdateAmmoMaxCarried(value: number){
        this.ammoMaxCarriedValue = value;
        this.ammoMaxCarried.text = value.toString();
    }
    
    public Reload(){
        if(this.curFireArm == null) return;
        this.curFireArm.Reload()
    }
    
    public CanReload(): boolean{
        if(this.curFireArm == null) return;
        return this.curFireArm.CanReload()
    }

    public IsReloading(): boolean{
        if(this.curFireArm == null) return;
        return this.curFireArm.IsReloading()
    }

    public GetFireArm(): FireArm{
        return this.curFireArm;
    }

    public GetAimIn(): boolean{
        if(this.curFireArm == null) return;
        return this.curFireArm.GetAimIn();
    }
    public SetAimIn(value: boolean){
        if(this.curFireArm == null) return;
        this.curFireArm.SetAimIn(value);
    }

    public GetAimOut(): boolean{
        if(this.curFireArm == null) return;
        return this.curFireArm.GetAimOut();
    }
    public SetAimOut(value: boolean){
        if(this.curFireArm == null) return;
        this.curFireArm.SetAimOut(value);
    }

}