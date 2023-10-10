const { regClass, property } = Laya;

@regClass()
export class Test extends Laya.Script {
    private rotate = new Laya.Vector3(0,0,0);
    private lastPosition = new Laya.Vector2(0,0);
    private mousedown = false;
    private mod: any;
    private rotationX: number               // X轴旋转角度
    private rotationY: number               // Y轴旋转角度

    constructor(){
        super();
    }

    onStart(){
        this.mod = this.owner.transform;
        // Laya.stage.on(Laya.Event.MOUSE_DOWN,this, this.mouseDown);
        Laya.stage.on(Laya.Event.MOUSE_MOVE,this, this.mouseMove);
        // Laya.stage.on(Laya.Event.MOUSE_UP,this, this.mouseUp)
        // Laya.stage.on(Laya.Event.MOUSE_OUT,this, this.mouseUp);
    }

	private mouseDown(){
		this.lastPosition = new Laya.Vector2(Laya.stage.mouseX,Laya.stage.mouseY);
		this.mousedown = true;
	}

	private mouseMove(){
		// if (this.mousedown) {
			// //移动触碰点
			// let deltaY = Laya.stage.mouseY - this.lastPosition.y;
			// let deltaX = Laya.stage.mouseX - this.lastPosition.x;
			// this.lastPosition.x = Laya.stage.mouseX;
			// this.lastPosition.y = Laya.stage.mouseY;
			// //根据移动的距离进行旋转
			// this.rotate.setValue(0, 1 * deltaX / 2, 0);
			// this.mod.rotate(this.rotate,false,false);

            let offetY = Laya.stage.mouseY - this.rotationY;
            this.rotationY = Laya.stage.mouseY;
            this.mod.localRotationEulerX += -0.01 * offetY;
		// }
	}

	private mouseUp(){
		this.mousedown = false;
    }

    private offRotate(){
        Laya.stage.off(Laya.Event.MOUSE_DOWN,this, this.mouseDown);
        Laya.stage.off(Laya.Event.MOUSE_MOVE,this, this.mouseMove);
        Laya.stage.off(Laya.Event.MOUSE_UP,this, this.mouseUp)
        Laya.stage.off(Laya.Event.MOUSE_OUT,this, this.mouseUp);
    }
}