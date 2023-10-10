import { Target } from "../Enemy/Target";

const { regClass, property } = Laya;

@regClass()
export class Bullet extends Laya.Script {
    private speed: number = 100;
    private transform: Laya.Transform3D;
    private dir: Laya.Vector3 = Laya.Vector3.ZERO;
    private scene: Laya.Scene3D;
    onStart(): void {
        this.transform = (<Laya.Sprite3D>this.owner).transform;
        this.scene = Laya.stage.getChildAt(0) as Laya.Scene3D;
        Laya.timer.once(5000, this, ()=>{
            this.owner.removeSelf();
        })
    }
    
    onUpdate(): void {
        this.transform.translate(new Laya.Vector3(0, 0, -this.speed * Laya.timer.delta / 1000));
        this.transform.getForward(this.dir)
        let ray = new Laya.Ray(this.transform.position, this.dir);
        let hitResult = new Laya.HitResult();
        if(this.scene.physicsSimulation.rayCast(ray, hitResult, 2)){
            let sprite = hitResult.collider.owner as Laya.Sprite3D;
            if(sprite.layer == 4){
                console.log(hitResult.collider.owner.name);
                
                let point = 2;
                if(hitResult.collider.owner.name == "Head"){
                    point = 10;
                    sprite = sprite.parent as Laya.Sprite3D;
                }
                else if(hitResult.collider.owner.name == "Body"){
                    point = 5;
                    sprite = sprite.parent as Laya.Sprite3D;
                }
                let tarScript = sprite.getComponent(Target);
                tarScript.GetHurt(point);
                this.owner.removeSelf();
            }
        }
    }

    onDisable(): void {
        Laya.Pool.recover("Bullet", this.owner);
    }
}