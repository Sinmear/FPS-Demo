"use strict";
(() => {
  var __defProp = Object.defineProperty;
  var __getOwnPropDesc = Object.getOwnPropertyDescriptor;
  var __name = (target, value) => __defProp(target, "name", { value, configurable: true });
  var __decorateClass = (decorators, target, key, kind) => {
    var result = kind > 1 ? void 0 : kind ? __getOwnPropDesc(target, key) : target;
    for (var i = decorators.length - 1, decorator; i >= 0; i--)
      if (decorator = decorators[i])
        result = (kind ? decorator(target, key, result) : decorator(result)) || result;
    if (kind && result)
      __defProp(target, key, result);
    return result;
  };

  // src/Test.ts
  var { regClass, property } = Laya;
  var Test = class extends Laya.Script {
    // Y轴旋转角度
    constructor() {
      super();
      this.rotate = new Laya.Vector3(0, 0, 0);
      this.lastPosition = new Laya.Vector2(0, 0);
      this.mousedown = false;
    }
    onStart() {
      this.mod = this.owner.transform;
      Laya.stage.on(Laya.Event.MOUSE_MOVE, this, this.mouseMove);
    }
    mouseDown() {
      this.lastPosition = new Laya.Vector2(Laya.stage.mouseX, Laya.stage.mouseY);
      this.mousedown = true;
    }
    mouseMove() {
      let offetY = Laya.stage.mouseY - this.rotationY;
      this.rotationY = Laya.stage.mouseY;
      this.mod.localRotationEulerX += -0.01 * offetY;
    }
    mouseUp() {
      this.mousedown = false;
    }
    offRotate() {
      Laya.stage.off(Laya.Event.MOUSE_DOWN, this, this.mouseDown);
      Laya.stage.off(Laya.Event.MOUSE_MOVE, this, this.mouseMove);
      Laya.stage.off(Laya.Event.MOUSE_UP, this, this.mouseUp);
      Laya.stage.off(Laya.Event.MOUSE_OUT, this, this.mouseUp);
    }
  };
  __name(Test, "Test");
  Test = __decorateClass([
    regClass("e22d0163-4b21-4c83-b984-e435c84ba545", "../src/Test.ts")
  ], Test);

  // src/Scripts/Component/Utils.ts
  var _Utils = class _Utils {
    static GetInstance() {
      if (_Utils.instance == null) {
        _Utils.instance = new _Utils();
        return _Utils.instance;
      } else {
        return _Utils.instance;
      }
    }
    constructor() {
    }
    GetRandom(min, max) {
      return Math.floor(Math.random() * (max - min + 1) + min);
    }
  };
  __name(_Utils, "Utils");
  _Utils.instance = null;
  var Utils = _Utils;

  // src/Scripts/Component/AudioManager.ts
  var { regClass: regClass2, property: property2 } = Laya;
  var AudioManager = class extends Laya.Script {
    constructor() {
      super();
      this.curSounds = new Array();
      this.realDelay = 0;
      this.touchLayer = 0;
      this.tmpTime = 0;
      this.canPlay = true;
      this.playFootstepSound = false;
      this.stopLayer = false;
    }
    onUpdate() {
      if (this.playFootstepSound) {
        if (this.canPlay) {
          this.tmpTime = 0;
          this.canPlay = false;
          this.PlayFootStepSound();
        } else {
          this.tmpTime += Laya.timer.delta / 1e3;
          if (this.tmpTime >= this.realDelay) {
            this.canPlay = true;
            if (this.stopLayer)
              this.playFootstepSound = false;
          }
        }
      }
    }
    PlayFootStepSound() {
      if (this.lastLayer == null || this.lastLayer != this.touchLayer) {
        this.lastLayer == this.touchLayer;
        this.curSounds = this.GetSoundType();
      }
      if (this.curSounds.length == 0)
        return;
      let index = Utils.GetInstance().GetRandom(0, this.curSounds.length - 1);
      Laya.SoundManager.playSound(this.curSounds[index], 1);
    }
    GetSoundType() {
      return this.groundSounds;
    }
    StartFootstep(speedUp, touchLayer) {
      this.realDelay = speedUp ? this.runDelay : this.walkDelay;
      this.touchLayer = touchLayer;
      if (!this.playFootstepSound) {
        this.playFootstepSound = true;
      }
    }
    StopFootstep() {
      if (this.playFootstepSound)
        this.stopLayer = true;
      else
        this.playFootstepSound = false;
    }
  };
  __name(AudioManager, "AudioManager");
  __decorateClass([
    property2({ type: ["string"] })
  ], AudioManager.prototype, "groundSounds", 2);
  __decorateClass([
    property2(Number)
  ], AudioManager.prototype, "walkDelay", 2);
  __decorateClass([
    property2(Number)
  ], AudioManager.prototype, "runDelay", 2);
  AudioManager = __decorateClass([
    regClass2("149d2624-ef35-4137-a4e0-59bd868b4d00", "../src/Scripts/Component/AudioManager.ts")
  ], AudioManager);

  // src/Scripts/Weapon/FireArm.ts
  var { regClass: regClass3, property: property3 } = Laya;
  var FireArm = class extends Laya.Script {
    constructor() {
      super();
      this.ammoInMag = 30;
      this.ammoMaxCarried = 60;
      // 子弹最大容量
      this.curAmmo = 0;
      // 当前弹夹子弹容量
      this.curCarried = 0;
      // 子弹射出间隔
      this.lastFireTime = 0;
      // 上一次子弹射出时间
      this.fireTimer = 0;
      // 子弹间隔计数器
      this.canShoot = true;
      // 弹夹声音2路径
      this.isReloading = false;
      this.isAimIn = false;
      this.isAimOut = false;
    }
    onAwake() {
      this.muzzleTrs = this.muzzlePoint.transform;
      this.muzzleTrs2 = this.muzzlePoint2.transform;
      this.curAmmo = this.ammoInMag;
      this.curCarried = this.ammoMaxCarried;
      this.fireDeltaTime = 1 / this.fireRate;
      this.animator = this.owner.getComponent(Laya.Animator);
      WeaponManager.GetInstance().InitFireArm(this.owner);
    }
    // 执行攻击逻辑
    DoAttack(isAiming) {
      this.Shooting(isAiming);
    }
    // 开火
    Shooting(isAiming) {
      if (!this.IsAllowShoot())
        return;
      if (this.canShoot) {
        this.canShoot = false;
        Laya.SoundManager.playSound(this.shootPath, 1);
        this.curAmmo -= 1;
        WeaponManager.GetInstance().UpdateCurAmmo(this.curAmmo);
        this.CreateBullet(isAiming);
      } else {
        this.fireTimer += Laya.timer.delta / 1e3;
        if (this.fireTimer >= this.fireDeltaTime) {
          this.fireTimer = 0;
          this.canShoot = true;
        }
      }
    }
    // 重装弹夹
    Reload() {
      if (this.isReloading)
        return;
      this.isReloading = true;
      let soundPath = this.curAmmo > 0 ? this.reloadLeftPath : this.reloadOutOfPath;
      Laya.SoundManager.playSound(soundPath, 1);
    }
    // 能否射击
    IsAllowShoot() {
      return this.curAmmo > 0 && !this.isReloading;
    }
    ReloadEnd() {
      let needCount = this.ammoInMag - this.curAmmo;
      needCount = needCount >= this.curCarried ? this.curCarried : needCount;
      this.curAmmo += needCount;
      this.curCarried -= needCount;
      WeaponManager.GetInstance().UpdateCurAmmo(this.curAmmo);
      WeaponManager.GetInstance().UpdateCurCarried(this.curCarried);
      this.isReloading = false;
    }
    ReloadEndOutof() {
      this.ReloadEnd();
    }
    CanReload() {
      return !this.isReloading && this.curAmmo < this.ammoInMag && this.curCarried > 0;
    }
    IsReloading() {
      return this.isReloading;
    }
    CreateBullet(isAiming) {
      Laya.loader.load(this.bulletPrefPath).then((res) => {
        let instance = Laya.Pool.getItemByCreateFun("Bullet", res.create, res);
        this.BulletNode.addChild(instance);
        let bulletTrs = instance.transform;
        let trs = isAiming ? this.muzzleTrs2 : this.muzzleTrs;
        bulletTrs.position = trs.position;
        bulletTrs.rotation = trs.rotation;
      });
    }
    InitAmmoCount() {
      this.curAmmo = this.ammoInMag;
      this.curCarried = this.ammoMaxCarried;
      WeaponManager.GetInstance().UpdateCurAmmo(this.curAmmo);
      WeaponManager.GetInstance().UpdateCurCarried(this.curCarried);
    }
    GetAimIn() {
      return this.isAimIn;
    }
    SetAimIn(value) {
      this.isAimIn = value;
    }
    GetAimOut() {
      return this.isAimOut;
    }
    SetAimOut(value) {
      this.isAimOut = value;
    }
    AimInEnd() {
      this.SetAimIn(false);
    }
    AimOutEnd() {
      this.SetAimOut(false);
    }
  };
  __name(FireArm, "FireArm");
  __decorateClass([
    property3(Laya.Sprite3D)
  ], FireArm.prototype, "muzzlePoint", 2);
  __decorateClass([
    property3(Laya.Sprite3D)
  ], FireArm.prototype, "muzzlePoint2", 2);
  __decorateClass([
    property3(String)
  ], FireArm.prototype, "bulletPrefPath", 2);
  __decorateClass([
    property3(Number)
  ], FireArm.prototype, "ammoInMag", 2);
  __decorateClass([
    property3(Number)
  ], FireArm.prototype, "ammoMaxCarried", 2);
  __decorateClass([
    property3(Number)
  ], FireArm.prototype, "fireRate", 2);
  __decorateClass([
    property3(String)
  ], FireArm.prototype, "shootPath", 2);
  __decorateClass([
    property3(String)
  ], FireArm.prototype, "reloadLeftPath", 2);
  __decorateClass([
    property3(String)
  ], FireArm.prototype, "reloadOutOfPath", 2);
  __decorateClass([
    property3(Laya.Sprite3D)
  ], FireArm.prototype, "BulletNode", 2);
  FireArm = __decorateClass([
    regClass3("21f7d147-36c6-4419-ba94-b8829af30a06", "../src/Scripts/Weapon/FireArm.ts")
  ], FireArm);

  // src/Scripts/Weapon/WeaponManager.ts
  var { regClass: regClass4, property: property4 } = Laya;
  var WeaponManager = class {
    constructor() {
      this.weaponList = new Array();
      this.curweaponIndex = 1;
    }
    static GetInstance() {
      if (WeaponManager.instance == null) {
        WeaponManager.instance = new WeaponManager();
        return WeaponManager.instance;
      } else {
        return WeaponManager.instance;
      }
    }
    onAwake() {
    }
    GetCurWeaponSprite(index) {
      return this.weaponList[index];
    }
    DoAttack(isAiming) {
      if (this.curFireArm == null)
        return;
      this.curFireArm.DoAttack(isAiming);
    }
    IsAllowShoot() {
      if (this.curFireArm == null)
        return false;
      return this.curFireArm.IsAllowShoot();
    }
    InitFireArm(fireArmNode) {
      this.weaponList.push(fireArmNode);
      this.curFireArm = fireArmNode.getComponent(FireArm);
      this.UpdateCurAmmo(this.curFireArm.curAmmo);
    }
    InitAmmoNode(ammoNode) {
      this.curAmmo = ammoNode.getChildByName("CurAmmo");
      this.curCarried = ammoNode.getChildByName("AmmoInMag");
      this.ammoInMag = ammoNode.getChildByName("CurCarried");
      this.ammoMaxCarried = ammoNode.getChildByName("AmmoMaxCarried");
    }
    InitAmmoCount() {
      if (this.curFireArm == null)
        return false;
      this.curFireArm.InitAmmoCount();
    }
    UpdateCurAmmo(value) {
      this.curAmmoValue = value;
      this.curAmmo.text = value.toString();
      this.curAmmo.color = value > 0 ? "#fdaf2d" : "#fe0000";
    }
    UpdateAmmoInMag(value) {
      this.curCarriedValue = value;
      this.curCarried.text = value.toString();
    }
    UpdateCurCarried(value) {
      this.ammoInMagValue = value;
      this.ammoInMag.text = "/ " + value.toString();
      this.ammoInMag.color = value > 0 ? "#fdaf2d" : "#fe0000";
    }
    UpdateAmmoMaxCarried(value) {
      this.ammoMaxCarriedValue = value;
      this.ammoMaxCarried.text = value.toString();
    }
    Reload() {
      if (this.curFireArm == null)
        return;
      this.curFireArm.Reload();
    }
    CanReload() {
      if (this.curFireArm == null)
        return;
      return this.curFireArm.CanReload();
    }
    IsReloading() {
      if (this.curFireArm == null)
        return;
      return this.curFireArm.IsReloading();
    }
    GetFireArm() {
      return this.curFireArm;
    }
    GetAimIn() {
      if (this.curFireArm == null)
        return;
      return this.curFireArm.GetAimIn();
    }
    SetAimIn(value) {
      if (this.curFireArm == null)
        return;
      this.curFireArm.SetAimIn(value);
    }
    GetAimOut() {
      if (this.curFireArm == null)
        return;
      return this.curFireArm.GetAimOut();
    }
    SetAimOut(value) {
      if (this.curFireArm == null)
        return;
      this.curFireArm.SetAimOut(value);
    }
  };
  __name(WeaponManager, "WeaponManager");
  WeaponManager.instance = null;
  WeaponManager = __decorateClass([
    regClass4("1193183d-3b89-42ec-9521-b07490d39ac1", "../src/Scripts/Weapon/WeaponManager.ts")
  ], WeaponManager);

  // src/Scripts/MainView/MainView.ts
  var { regClass: regClass5, property: property5 } = Laya;
  var MainView = class extends Laya.Script {
    constructor() {
      super(...arguments);
      this.initSize = 500;
      this.maxSize = 650;
      this.isBig = false;
      this.canLerp = true;
      this.countDownTime = 60;
    }
    onAwake() {
      this.fpCtrl = this.fpCtrlNode.getComponent(FpsController);
      this.plane = this.owner;
      this.mainTrs = this.plane.transform;
      let scoreNode = this.plane.getChildByName("ScoreNode");
      this.scoreLable = scoreNode.getChildByName("Score");
      this.score = 0;
      this.crosshairNode = this.plane.getChildByName("CrossHair");
      let timeNode = this.plane.getChildByName("TimeNode");
      this.timeLabel = timeNode.getChildByName("Time");
      this.timeProgress = timeNode.getChildByName("TimeProgress");
      this.debugLabel = this.plane.getChildByName("Debug");
      let ammoNode = this.plane.getChildByName("AmmoNode");
      WeaponManager.GetInstance().InitAmmoNode(ammoNode);
      MainViewManager.GetInstance().InitView(this.owner);
    }
    onUpdate() {
      this.StartCrossHairLerp();
    }
    UpdateScore(score) {
      this.score = score;
      this.scoreLable.text = score.toString();
    }
    StartCrossHairLerp() {
      if (this.fpCtrl.IsAiming || this.fpCtrl.IsShooting) {
        if (this.canLerp) {
          this.canLerp = false;
          this.isBig = false;
          if (this.lerpTween != null) {
            this.ClearnTween();
          }
          this.lerpTween = Laya.Tween.to(
            this.crosshairNode,
            { width: this.initSize, height: this.initSize },
            200,
            Laya.Ease.linearIn,
            Laya.Handler.create(this, () => {
              this.ClearnTween();
            })
          );
        }
      } else {
        this.canLerp = true;
        if (this.lerpTween == null) {
          let tarSize = this.isBig ? this.initSize : this.maxSize;
          this.lerpTween = Laya.Tween.to(
            this.crosshairNode,
            { width: tarSize, height: tarSize },
            500,
            Laya.Ease.linearIn,
            Laya.Handler.create(this, () => {
              this.isBig = !this.isBig;
              this.ClearnTween();
            })
          );
        }
      }
    }
    ClearnTween() {
      Laya.Tween.clear(this.lerpTween);
      this.lerpTween = null;
    }
    StartCountDown() {
      this.curTime = this.countDownTime;
      Laya.timer.loop(100, this, this.CountDownCallback);
    }
    CountDownCallback() {
      this.curTime -= 0.1;
      this.timeLabel.text = this.curTime > 0 ? this.curTime.toFixed(1) : "0";
      this.timeLabel.color = this.curTime > 10 ? "#0cfe00" : "#fe0000";
      this.timeProgress.value = this.curTime / this.countDownTime;
      this.timeProgress.skin = this.curTime > 10 ? this.timerProgressSkin1 : this.timerProgressSkin2;
      if (this.curTime <= 0) {
        MainViewManager.GetInstance().SetMainViewVisible(false);
        GameManager.GetInstance().GameOver();
        Laya.timer.clear(this, this.CountDownCallback);
      }
    }
  };
  __name(MainView, "MainView");
  __decorateClass([
    property5(Laya.Sprite3D)
  ], MainView.prototype, "fpCtrlNode", 2);
  __decorateClass([
    property5(String)
  ], MainView.prototype, "timerProgressSkin1", 2);
  __decorateClass([
    property5(String)
  ], MainView.prototype, "timerProgressSkin2", 2);
  MainView = __decorateClass([
    regClass5("2053fa20-894d-402b-93ee-d69e5e979a26", "../src/Scripts/MainView/MainView.ts")
  ], MainView);

  // src/Scripts/MainView/MainViewManager.ts
  var _MainViewManager = class _MainViewManager {
    constructor() {
      this.curScore = 0;
    }
    static GetInstance() {
      if (_MainViewManager.instance == null) {
        _MainViewManager.instance = new _MainViewManager();
        return _MainViewManager.instance;
      } else {
        return _MainViewManager.instance;
      }
    }
    InitView(planeNode) {
      this.mianPanelNode = planeNode;
      this.MainView = this.mianPanelNode.getComponent(MainView);
    }
    InitScore() {
      this.curScore = 0;
      this.MainView.UpdateScore(this.curScore);
    }
    AddScore(score) {
      if (this.MainView == null)
        return;
      this.curScore += score;
      this.MainView.UpdateScore(this.curScore);
    }
    GetScore() {
      return this.curScore;
    }
    StartCountDown() {
      if (this.MainView == null)
        return;
      this.MainView.StartCountDown();
    }
    SetMainViewVisible(bool) {
      this.mianPanelNode.visible = bool;
    }
    ShowDebugMessage(...message) {
      let totalStr = "";
      for (let value of message) {
        totalStr += value.toString() + " ";
      }
      this.MainView.debugLabel.text = totalStr;
    }
  };
  __name(_MainViewManager, "MainViewManager");
  _MainViewManager.instance = null;
  var MainViewManager = _MainViewManager;

  // src/Scripts/MainView/GameStartPanel.ts
  var { regClass: regClass6, property: property6 } = Laya;
  var GameStartPanel = class extends Laya.Script {
    onAwake() {
      this.startBtn = this.owner.getChildByName("StartBtn");
      this.startBtn.on(Laya.Event.CLICK, () => {
        GameManager.GetInstance().GameStart();
        this.owner.removeSelf();
      });
      GameManager.GetInstance().InitStartPanel(this.owner);
      this.pcOperationDesc = this.owner.getChildByName("PcOperatoinDesc");
      this.pcOperationDesc.visible = Laya.Browser.onPC;
    }
  };
  __name(GameStartPanel, "GameStartPanel");
  GameStartPanel = __decorateClass([
    regClass6("70629c7b-4bf9-46e0-a988-70fd8c6dca3c", "../src/Scripts/MainView/GameStartPanel.ts")
  ], GameStartPanel);

  // src/Scripts/MainView/GameOverPanel.ts
  var { regClass: regClass7, property: property7 } = Laya;
  var GameOverPanel = class extends Laya.Script {
    constructor() {
      super(...arguments);
      this.curScoreValue = 0;
      this.socreKey = "HistoryScores";
    }
    onAwake() {
      this.restartBtn = this.owner.getChildByName("RestartBtn");
      this.restartBtn.on(Laya.Event.CLICK, () => {
        this.ReStart();
      });
      this.clearBtn = this.owner.getChildByName("ClearBtn");
      this.clearBtn.on(Laya.Event.CLICK, () => {
        this.ClearHistory();
      });
      this.curScore = this.owner.getChildByName("CurScore");
      this.curTime = this.owner.getChildByName("CurTime");
      let rankNode = this.owner.getChildByName("RankNode");
      this.rankList = rankNode.getChildByName("List");
      this.rankList.vScrollBarSkin = "";
      this.rankList.scrollBar.elasticBackTime = 200;
      this.rankList.scrollBar.elasticDistance = 50;
      this.rankList.renderHandler = new Laya.Handler(this, this.OnListRender);
      this.ShowScoreInfo();
      this.ShowRankInfo();
    }
    ReStart() {
      GameManager.GetInstance().GameStart();
      this.owner.removeSelf();
    }
    ClearHistory() {
      Laya.LocalStorage.removeItem("HistoryScores");
      this.rankList.array = [];
    }
    ShowScoreInfo() {
      this.curScoreValue = MainViewManager.GetInstance().GetScore();
      this.curScore.text = this.curScoreValue.toString();
      let curDate = /* @__PURE__ */ new Date();
      let year = curDate.getFullYear();
      let month = curDate.getMonth() + 1;
      let date = curDate.getDate();
      let hours = this.FormatNumber(curDate.getHours());
      let minutes = this.FormatNumber(curDate.getMinutes());
      let dateStr = `${year}/${month}/${date} ${hours}:${minutes}`;
      this.curTime.text = dateStr;
      let timeStamp = curDate.getTime();
      let scoreValue = Laya.LocalStorage.getItem(this.socreKey);
      if (scoreValue) {
        scoreValue += `${this.curScoreValue}|${dateStr}|${timeStamp};`;
      } else {
        scoreValue = `${this.curScoreValue}|${dateStr}|${timeStamp};`;
      }
      Laya.LocalStorage.setItem(this.socreKey, scoreValue);
    }
    ShowRankInfo() {
      let scoreValue = Laya.LocalStorage.getItem(this.socreKey);
      if (scoreValue) {
        let scores = scoreValue.split(";");
        let array = [];
        for (let index = 0; index < scores.length - 1; index++) {
          let infos = scores[index].split("|");
          let rankInfo = {
            Score: infos[0],
            Date: infos[1],
            timeStamp: infos[2]
          };
          array.push(rankInfo);
        }
        array.sort((a, b) => {
          if (a.Score != b.Score)
            return b.Score - a.Score;
          else
            return b.timeStamp - a.timeStamp;
        });
        this.rankList.array = array;
      } else {
        console.log("\u672C\u5730\u6CA1\u6709\u5B58\u50A8\u8BE5\u6570\u636E\u3002");
      }
    }
    OnListRender(item, index) {
      if (index > this.rankList.array.length || index < 0)
        return;
    }
    FormatNumber(num) {
      var numStr = num.toString();
      while (numStr.length < 2) {
        numStr = "0" + numStr;
      }
      return numStr;
    }
  };
  __name(GameOverPanel, "GameOverPanel");
  GameOverPanel = __decorateClass([
    regClass7("10af14be-9954-4baa-8f68-ed0bbfb9aa82", "../src/Scripts/MainView/GameOverPanel.ts")
  ], GameOverPanel);

  // src/Scripts/Player/OperationBase.ts
  var _OperationBase = class _OperationBase extends Laya.Script {
    constructor() {
      super(...arguments);
      this.rotationX = 0;
      this.rotationY = 0;
      this.mouseSensitivity = 0.2;
      // 鼠标灵敏度
      this.maxVerticalAngle = 90;
      // 竖直最大角度
      this.minVerticalAngle = -90;
      // 竖直最小角度
      this.touchId = -1;
      this.isMouseDown = false;
    }
    SetManager(manager) {
      this.manager = manager;
    }
    onAwake() {
      this.view = this.owner;
      this.playerNode = FpsCtrlManager.GetInstance().fpsCtrlNode;
      this.playerTrs = this.playerNode.transform;
      let rootNode = this.playerNode.getChildAt(0);
      this.rootTrs = rootNode.transform;
      this.dragBtn = this.view.getChildByName("DragBtn");
      console.log(this.touchId);
      this.dragBtn.on(Laya.Event.MOUSE_DOWN, (event) => {
        this.MouseDown(event);
      });
      this.dragBtn.on(Laya.Event.MOUSE_DRAG, (event) => {
        this.MouseMove(event);
      });
      this.dragBtn.on(Laya.Event.MOUSE_DRAG_END, (event) => {
        this.MouseUp(event);
      });
    }
    MouseDown(event) {
      if (this.touchId != -1)
        return;
      this.touchId = event.touchId;
      event.stopPropagation();
      this.rotationX = Math.round(event.touchPos.x / Laya.stage.clientScaleY);
      this.rotationY = Math.round(event.touchPos.y / Laya.stage.clientScaleY);
      this.isMouseDown = true;
    }
    MouseUp(event) {
      if (event.touchId != this.touchId)
        return;
      this.touchId = -1;
      this.isMouseDown = false;
      this.rotationX = Math.round(event.touchPos.x / Laya.stage.clientScaleY);
      this.rotationY = Math.round(event.touchPos.y / Laya.stage.clientScaleY);
    }
    // 鼠标移动控制相机视角和角色朝向
    MouseMove(event) {
      if (event.touchId != this.touchId)
        return;
      if (this.isMouseDown) {
        let angleX = Math.round(event.touchPos.x / Laya.stage.clientScaleY) - this.rotationX;
        let angleY = Math.round(event.touchPos.y / Laya.stage.clientScaleY) - this.rotationY;
        this.rotationX = Math.round(event.touchPos.x / Laya.stage.clientScaleY);
        this.rotationY = Math.round(event.touchPos.y / Laya.stage.clientScaleY);
        let tmpAngle = this.rootTrs.localRotationEulerX + angleY * this.mouseSensitivity;
        tmpAngle = tmpAngle % 360;
        tmpAngle = this.ClampValue(tmpAngle, this.minVerticalAngle, this.maxVerticalAngle);
        this.rootTrs.localRotationEulerX = tmpAngle;
        tmpAngle = this.playerTrs.localRotationEulerY - angleX * this.mouseSensitivity;
        tmpAngle = tmpAngle % 360;
        this.playerTrs.localRotationEulerY = tmpAngle;
      }
    }
    // 限制范围
    ClampValue(value, min, max) {
      if (value < min)
        return min;
      else if (value > max)
        return max;
      else
        return value;
    }
  };
  __name(_OperationBase, "OperationBase");
  var OperationBase = _OperationBase;

  // src/Scripts/Player/MobileOperation.ts
  var { regClass: regClass8, property: property8 } = Laya;
  var MobileOperation = class extends OperationBase {
    onAwake() {
      super.onAwake();
      this.aimBtn = this.view.getChildByName("AimBtn");
      this.aimBtn.on(Laya.Event.CLICK, () => {
        this.manager.RightMouseUp();
      });
      this.jumpBtn = this.view.getChildByName("JumpBtn");
      this.jumpBtn.on(Laya.Event.MOUSE_DOWN, (event) => {
        this.manager.isJumping = true;
        event.stopPropagation();
      });
      this.jumpBtn.on(Laya.Event.MOUSE_UP, (event) => {
        this.manager.isJumping = false;
        event.stopPropagation();
      });
      this.jumpBtn.on(Laya.Event.MOUSE_OUT, (event) => {
        this.manager.isJumping = false;
        event.stopPropagation();
      });
      this.runBtn = this.view.getChildByName("RunBtn");
      this.runBtn.on(Laya.Event.MOUSE_DOWN, (event) => {
        this.manager.isRunning = true;
        event.stopPropagation();
      });
      this.runBtn.on(Laya.Event.MOUSE_UP, (event) => {
        this.manager.isRunning = false;
        event.stopPropagation();
      });
      this.runBtn.on(Laya.Event.MOUSE_OUT, (event) => {
        this.manager.isRunning = false;
        event.stopPropagation();
      });
      this.shootBtn = this.view.getChildByName("ShootBtn");
      this.shootBtn.on(Laya.Event.MOUSE_DOWN, (event) => {
        this.manager.isShooting = true;
        event.stopPropagation();
      });
      this.shootBtn.on(Laya.Event.MOUSE_UP, (event) => {
        this.manager.isShooting = false;
        event.stopPropagation();
      });
      this.shootBtn.on(Laya.Event.MOUSE_OUT, (event) => {
        this.manager.isShooting = false;
        event.stopPropagation();
      });
      this.shootBtn2 = this.view.getChildByName("ShootBtn2");
      this.shootBtn2.on(Laya.Event.MOUSE_DOWN, (event) => {
        this.manager.isShooting = true;
        event.stopPropagation();
      });
      this.shootBtn2.on(Laya.Event.MOUSE_UP, (event) => {
        this.manager.isShooting = false;
        event.stopPropagation();
      });
      this.shootBtn2.on(Laya.Event.MOUSE_OUT, (event) => {
        this.manager.isShooting = false;
        event.stopPropagation();
      });
      this.reloadBtn = this.view.getChildByName("ReloadBtn");
      this.reloadBtn.on(Laya.Event.MOUSE_DOWN, (event) => {
        this.manager.isReloading = true;
        event.stopPropagation();
      });
      this.reloadBtn.on(Laya.Event.MOUSE_UP, (event) => {
        this.manager.isReloading = false;
        event.stopPropagation();
      });
      this.reloadBtn.on(Laya.Event.MOUSE_OUT, (event) => {
        this.manager.isReloading = false;
        event.stopPropagation();
      });
      this.rokerNode = this.view.getChildByName("rokerbox");
      this.roker = this.rokerNode.getComponent(Roker);
      this.roker.InitOperation(this);
    }
    StopMove() {
      this.manager.isMoving = false;
    }
    MoveDir(angle, isForward) {
      this.manager.isMoving = true;
      this.manager.moveAngle = angle;
      this.manager.moveForward = isForward;
    }
  };
  __name(MobileOperation, "MobileOperation");
  MobileOperation = __decorateClass([
    regClass8("2c9b02c6-fe1f-4c09-bcb7-cc0f225c0c76", "../src/Scripts/Player/MobileOperation.ts")
  ], MobileOperation);

  // src/Scripts/Player/PcOperation.ts
  var { regClass: regClass9, property: property9 } = Laya;
  var PcOpenration = class extends OperationBase {
    onAwake() {
      super.onAwake();
      Laya.stage.on(Laya.Event.RIGHT_MOUSE_UP, this, () => {
        this.manager.RightMouseUp();
      });
    }
    onUpdate() {
      this.manager.isMoving = false;
      this.manager.moveForward = false;
      if (Laya.InputManager.hasKeyDown(Laya.Keyboard.W)) {
        this.manager.moveForward = true;
        this.manager.isMoving = true;
        this.playerTrs.getForward(this.manager.moveAngle);
        this.manager.moveAngle.x = -this.manager.moveAngle.x;
        this.manager.moveAngle.z = -this.manager.moveAngle.z;
      }
      if (Laya.InputManager.hasKeyDown(Laya.Keyboard.S)) {
        this.manager.isMoving = true;
        this.playerTrs.getForward(this.manager.moveAngle);
      }
      if (Laya.InputManager.hasKeyDown(Laya.Keyboard.D)) {
        this.manager.isMoving = true;
        this.playerTrs.getRight(this.manager.moveAngle);
        this.manager.moveAngle.x = -this.manager.moveAngle.x;
        this.manager.moveAngle.z = -this.manager.moveAngle.z;
      }
      if (Laya.InputManager.hasKeyDown(Laya.Keyboard.A)) {
        this.manager.isMoving = true;
        this.playerTrs.getRight(this.manager.moveAngle);
      }
      this.manager.isRunning = Laya.InputManager.hasKeyDown(Laya.Keyboard.SHIFT);
      this.manager.isJumping = Laya.InputManager.hasKeyDown(Laya.Keyboard.SPACE);
      this.manager.isShooting = Laya.InputManager.hasKeyDown(Laya.Keyboard.F);
      this.manager.isReloading = Laya.InputManager.hasKeyDown(Laya.Keyboard.R);
    }
  };
  __name(PcOpenration, "PcOpenration");
  PcOpenration = __decorateClass([
    regClass9("1de0e0f5-fad4-4f77-9ad1-b1e05878f502", "../src/Scripts/Player/PcOperation.ts")
  ], PcOpenration);

  // src/Scripts/Player/OperateManager.ts
  var _OperateManager = class _OperateManager {
    constructor() {
      this.isMobile = Laya.Browser.onMobile;
      this.isPc = Laya.Browser.onPC;
      this.openrationPanelPath = "resources/Prefabs/OperationNode.lh";
      this.pcopenrationPath = "resources/Prefabs/PcOpenration.lh";
      this.isMoving = false;
      this.moveForward = false;
      this.moveAngle = Laya.Vector3.ZERO;
      this.isRunning = false;
      this.isJumping = false;
      this.isShooting = false;
      this.isAiming = false;
      this.isReloading = false;
    }
    static GetInstance() {
      if (_OperateManager.instance == null) {
        _OperateManager.instance = new _OperateManager();
        return _OperateManager.instance;
      } else {
        return _OperateManager.instance;
      }
    }
    InitOperation() {
      if (this.isMobile) {
        this.LoadOperationPanel();
      } else {
        this.LoadPcOperation();
      }
    }
    LoadOperationPanel() {
      Laya.loader.load(this.openrationPanelPath).then((res) => {
        this.operationNode = res.create();
        this.operationPanel = this.operationNode.getComponent(MobileOperation);
        this.operationPanel.SetManager(this);
        this.SetOperationEnabled(false);
        let root = Laya.stage.getChildAt(1);
        let scene2d = root.getChildAt(0);
        scene2d.addChild(this.operationNode);
      });
    }
    LoadPcOperation() {
      Laya.loader.load(this.pcopenrationPath).then((res) => {
        this.operationNode = res.create();
        this.operationPanel = this.operationNode.getComponent(PcOpenration);
        this.operationPanel.SetManager(this);
        this.SetOperationEnabled(false);
        let root = Laya.stage.getChildAt(1);
        let scene2d = root.getChildAt(0);
        scene2d.addChild(this.operationNode);
      });
    }
    RightMouseUp() {
      FpsCtrlManager.GetInstance().fpsController.IsAimAction();
    }
    GetIsShooting() {
      if (this.isMobile) {
        return true;
      } else {
        return true;
      }
    }
    SetOperationEnabled(bool) {
      if (!this.operationNode)
        return;
      this.operationPanel.enabled = bool;
      this.operationNode.active = bool;
      this.operationNode.visible = bool;
    }
  };
  __name(_OperateManager, "OperateManager");
  _OperateManager.instance = null;
  var OperateManager = _OperateManager;

  // src/Scripts/MainView/GameManager.ts
  var _GameManager = class _GameManager {
    constructor() {
      this.gameOverPanelPath = "resources/Prefabs/GameOverPanel.lh";
      this.isGameStart = false;
    }
    static GetInstance() {
      if (_GameManager.instance == null) {
        _GameManager.instance = new _GameManager();
        return _GameManager.instance;
      } else {
        return _GameManager.instance;
      }
    }
    get IsGameStart() {
      return this.isGameStart;
    }
    set IsGameStart(value) {
      this.isGameStart = value;
    }
    InitStartPanel(panel) {
      this.startPanelNode = panel;
      this.startPanel = this.startPanelNode.getComponent(GameStartPanel);
      OperateManager.GetInstance().InitOperation();
    }
    GameStart() {
      this.isGameStart = true;
      OperateManager.GetInstance().SetOperationEnabled(true);
      WeaponManager.GetInstance().InitAmmoCount();
      MainViewManager.GetInstance().InitScore();
      MainViewManager.GetInstance().SetMainViewVisible(true);
      MainViewManager.GetInstance().StartCountDown();
    }
    GameOver() {
      this.isGameStart = false;
      OperateManager.GetInstance().SetOperationEnabled(false);
      MainViewManager.GetInstance().SetMainViewVisible(false);
      Laya.loader.load(this.gameOverPanelPath).then((res) => {
        this.gameOverPanelNode = res.create();
        this.gameOverPanel = this.gameOverPanelNode.getComponent(GameOverPanel);
        let root = Laya.stage.getChildAt(1);
        let scene2d = root.getChildAt(0);
        scene2d.addChild(this.gameOverPanelNode);
      });
    }
  };
  __name(_GameManager, "GameManager");
  _GameManager.instance = null;
  var GameManager = _GameManager;

  // src/Scripts/Player/FpsController.ts
  var { regClass: regClass10, property: property10 } = Laya;
  var FpsController = class extends Laya.Script {
    constructor() {
      super();
      // 角色控制器碰撞体
      this.rayDistance = 0;
      // 射线检测距离
      this.touchLayer = -1;
      // 奔跑速度
      this.shiftPress = false;
      // 是否按了shift键
      this.moveSpeed = 0;
      // 实际移动速度
      this.moveAngle = Laya.Vector3.ZERO;
      // 移动角度
      this.isMoving = false;
      // 是否在移动
      this.isJumping = false;
      // 跳跃高度
      this.isJumpKeyDown = false;
      // 接触地面的状态
      this.jumpTouchGound = false;
      // 当前枪械动画状态机
      this.curActionType = 0 /* Idle */;
      // 音效控制器
      this.isShooting = false;
      this.reloadStart = false;
      this.reloadEnd = true;
      this.isAiming = false;
      this.aimAnimPlayed = false;
      // 相机
      this.gameOver = false;
      this.reloadAfterAimOut = false;
    }
    get IsShooting() {
      return this.isShooting;
    }
    get IsAiming() {
      return this.isAiming;
    }
    onAwake() {
      this.playerNode = this.owner;
      this.playerTrs = this.playerNode.transform;
      this.rootTrs = this.rootNode.transform;
      this.cameraTrs = this.camera.transform;
      this.charCtrl = this.playerNode.getComponent(Laya.CharacterController);
      this.colliderShape = this.charCtrl.colliderShape;
      this.rayDistance = this.colliderShape.length / 2 - this.colliderShape.localOffset.y + 0.5;
      this.aimLayer = this.weaponAnimator.getControllerLayer(1);
      this.reloadLayer = this.weaponAnimator.getControllerLayer(2);
      FpsCtrlManager.GetInstance().InitFpsController(this.owner);
      this.InitPosAndRotation();
      this.SetAnimatorByActionType();
    }
    onStart() {
      this.weaponAnimator.setParamsTrigger("FirstIn");
    }
    onUpdate() {
      if (!GameManager.GetInstance().IsGameStart) {
        if (!this.gameOver) {
          this.gameOver = true;
          this.InitParams();
          return;
        }
        return;
      }
      this.gameOver = false;
      this.PlayerMove();
      this.CheckCurActionType();
      this.RayCheck();
    }
    // 检测角色移动
    PlayerMove() {
      this.isMoving = OperateManager.GetInstance().isMoving;
      if (OperateManager.GetInstance().isJumping) {
        if (!this.isJumpKeyDown && this.charCtrl.isGrounded) {
          this.isJumpKeyDown = true;
          this.isJumping = true;
          this.charCtrl.jump(new Laya.Vector3(0, this.jumpHeight, 0));
        }
      } else {
        this.isJumpKeyDown = false;
      }
      if (this.isTouchGround != null && this.isTouchGround != this.charCtrl.isGrounded && this.charCtrl.isGrounded) {
        this.jumpTouchGound = true;
      }
      this.isTouchGround = this.charCtrl.isGrounded;
      if (this.isJumping && this.jumpTouchGound) {
        this.isJumping = false;
      }
      this.shiftPress = OperateManager.GetInstance().isRunning;
      if (this.isMoving) {
        if (!this.isJumping) {
          this.moveSpeed = this.shiftPress ? this.runSpeed : this.walkSpeed;
        } else {
          this.moveSpeed = this.walkSpeed * 1.5;
        }
        this.moveAngle = OperateManager.GetInstance().moveAngle;
        this.moveAngle.x = this.moveAngle.x / 100 * this.moveSpeed;
        this.moveAngle.y = 0;
        this.moveAngle.z = this.moveAngle.z / 100 * this.moveSpeed;
        this.charCtrl.move(this.moveAngle);
      } else {
        this.charCtrl.move(new Laya.Vector3(0, 0, 0));
      }
      if (!WeaponManager.GetInstance().GetAimOut()) {
        if (!this.reloadAfterAimOut) {
          if (this.reloadStart && !WeaponManager.GetInstance().IsReloading()) {
            this.reloadStart = false;
            this.reloadEnd = true;
          }
          if (this.reloadEnd && OperateManager.GetInstance().isReloading && WeaponManager.GetInstance().CanReload()) {
            this.reloadStart = true;
            if (this.isAiming) {
              this.reloadAfterAimOut = true;
              this.IsAimAction(true);
            } else {
              this.reloadAfterAimOut = false;
              WeaponManager.GetInstance().Reload();
            }
          }
        } else {
          this.reloadAfterAimOut = false;
          WeaponManager.GetInstance().Reload();
        }
      }
      this.isShooting = false;
      if (OperateManager.GetInstance().isShooting && WeaponManager.GetInstance().IsAllowShoot()) {
        this.isShooting = true;
        WeaponManager.GetInstance().DoAttack(this.isAiming);
      }
    }
    CheckCurActionType() {
      if (this.isAiming && !this.reloadStart) {
        this.reloadLayer.defaultWeight = 0;
        WeaponManager.GetInstance().SetAimOut(false);
        if (!this.aimAnimPlayed) {
          this.curActionType = 7 /* AimStart */;
          WeaponManager.GetInstance().SetAimIn(true);
          this.aimAnimPlayed = true;
          this.aimLayer.defaultWeight = 1;
          this.weaponAnimator.play("aim_in01", 1);
          Laya.Tween.to(this.mainCamera, { fieldOfView: 50 }, 300, Laya.Ease.linearIn);
        } else {
          if (!WeaponManager.GetInstance().GetAimIn() && this.isShooting) {
            this.weaponAnimator.play("aim_fire01", 1);
            this.curActionType = 9 /* AimFire */;
          } else {
            this.curActionType = 7 /* AimStart */;
          }
        }
      } else if (this.reloadStart && this.reloadAfterAimOut || !this.isAiming && this.lastIsAiming || WeaponManager.GetInstance().GetAimOut()) {
        this.reloadLayer.defaultWeight = 0;
        WeaponManager.GetInstance().SetAimIn(false);
        WeaponManager.GetInstance().SetAimOut(true);
        this.lastIsAiming = false;
        this.curActionType = 8 /* AimEnd */;
        if (!this.aimAnimPlayed) {
          this.aimAnimPlayed = true;
          this.aimLayer.defaultWeight = 1;
          this.weaponAnimator.play("aim_out01", 1);
          Laya.Tween.to(this.mainCamera, { fieldOfView: 55 }, 300, Laya.Ease.linearIn);
        }
      } else {
        this.aimLayer.defaultWeight = 0;
        if (this.reloadStart) {
          this.reloadLayer.defaultWeight = 1;
          if (this.reloadEnd) {
            this.reloadEnd = false;
            let animName = WeaponManager.GetInstance().curAmmoValue > 0 ? "reload_left01" : "reload_out_of01";
            this.weaponAnimator.play(animName, 2);
          }
          this.curActionType = 5 /* ReloadStart */;
        } else {
          this.reloadLayer.defaultWeight = 0;
          if (this.isShooting) {
            this.curActionType = 4 /* Fire */;
          } else {
            if (this.isMoving) {
              if (!this.isJumping) {
                this.curActionType = this.shiftPress && OperateManager.GetInstance().moveForward ? 2 /* Run */ : 1 /* Walk */;
              } else {
                this.curActionType = 3 /* Jump */;
              }
            } else {
              this.curActionType = this.isJumping ? 3 /* Jump */ : 0 /* Idle */;
            }
          }
        }
      }
      this.SetAnimatorByActionType();
    }
    // 根据当前动作类型设置动画状态机参数
    SetAnimatorByActionType() {
      if (this.lastActionType == null || this.lastActionType != this.curActionType) {
        console.log("curActionType " + this.curActionType);
        this.lastActionType = this.curActionType;
        switch (this.curActionType) {
          case 0 /* Idle */: {
            this.weaponAnimator.setParamsBool("IsWalking", false);
            this.weaponAnimator.setParamsBool("IsRunning", false);
            this.weaponAnimator.setParamsBool("IsFiring", false);
            this.weaponAnimator.setParamsBool("IsIdle", true);
            this.weaponAnimator.setParamsBool("IsAim", false);
            this.weaponAnimator.setParamsNumber("Reload", 0);
            break;
          }
          case 1 /* Walk */: {
            this.weaponAnimator.setParamsBool("IsWalking", true);
            this.weaponAnimator.setParamsBool("IsRunning", false);
            this.weaponAnimator.setParamsBool("IsFiring", false);
            this.weaponAnimator.setParamsBool("IsIdle", false);
            this.weaponAnimator.setParamsBool("IsAim", false);
            this.weaponAnimator.setParamsNumber("Reload", 0);
            break;
          }
          case 2 /* Run */: {
            this.weaponAnimator.setParamsBool("IsWalking", false);
            this.weaponAnimator.setParamsBool("IsRunning", true);
            this.weaponAnimator.setParamsBool("IsFiring", false);
            this.weaponAnimator.setParamsBool("IsIdle", false);
            this.weaponAnimator.setParamsBool("IsAim", false);
            this.weaponAnimator.setParamsNumber("Reload", 0);
            break;
          }
          case 3 /* Jump */: {
            this.weaponAnimator.setParamsBool("IsWalking", false);
            this.weaponAnimator.setParamsBool("IsRunning", false);
            this.weaponAnimator.setParamsBool("IsFiring", false);
            this.weaponAnimator.setParamsBool("IsIdle", true);
            this.weaponAnimator.setParamsBool("IsAim", false);
            this.weaponAnimator.setParamsNumber("Reload", 0);
            break;
          }
          case 4 /* Fire */: {
            this.weaponAnimator.setParamsBool("IsWalking", false);
            this.weaponAnimator.setParamsBool("IsRunning", false);
            this.weaponAnimator.setParamsBool("IsFiring", true);
            this.weaponAnimator.setParamsBool("IsIdle", false);
            this.weaponAnimator.setParamsBool("IsAim", false);
            this.weaponAnimator.setParamsNumber("Reload", 0);
            break;
          }
          case 5 /* ReloadStart */: {
            let value = WeaponManager.GetInstance().curAmmoValue > 0 ? -2 : 2;
            this.weaponAnimator.setParamsNumber("ReloadType", value);
            this.weaponAnimator.setParamsBool("IsReload", true);
            this.weaponAnimator.setParamsBool("IsWalking", false);
            this.weaponAnimator.setParamsBool("IsRunning", false);
            this.weaponAnimator.setParamsBool("IsFiring", false);
            this.weaponAnimator.setParamsBool("IsIdle", false);
            this.weaponAnimator.setParamsBool("IsAim", false);
            break;
          }
          case 6 /* ReloadEnd */: {
            this.weaponAnimator.setParamsNumber("ReloadType", 0);
            this.weaponAnimator.setParamsBool("IsReload", false);
            this.weaponAnimator.setParamsBool("IsWalking", false);
            this.weaponAnimator.setParamsBool("IsRunning", false);
            this.weaponAnimator.setParamsBool("IsFiring", false);
            this.weaponAnimator.setParamsBool("IsIdle", true);
            this.weaponAnimator.setParamsBool("IsAim", false);
            break;
          }
          case 7 /* AimStart */: {
            this.weaponAnimator.setParamsBool("IsWalking", false);
            this.weaponAnimator.setParamsBool("IsRunning", false);
            this.weaponAnimator.setParamsBool("IsFiring", false);
            this.weaponAnimator.setParamsBool("IsIdle", false);
            this.weaponAnimator.setParamsBool("IsAim", true);
            this.weaponAnimator.setParamsNumber("Reload", 0);
            break;
          }
          case 9 /* AimFire */: {
            this.weaponAnimator.setParamsBool("IsWalking", false);
            this.weaponAnimator.setParamsBool("IsRunning", false);
            this.weaponAnimator.setParamsBool("IsFiring", true);
            this.weaponAnimator.setParamsBool("IsIdle", false);
            this.weaponAnimator.setParamsBool("IsAim", true);
            this.weaponAnimator.setParamsNumber("Reload", 0);
            break;
          }
          case 8 /* AimEnd */: {
            this.weaponAnimator.setParamsBool("IsWalking", false);
            this.weaponAnimator.setParamsBool("IsRunning", false);
            this.weaponAnimator.setParamsBool("IsFiring", false);
            this.weaponAnimator.setParamsBool("IsIdle", true);
            this.weaponAnimator.setParamsBool("IsAim", false);
            this.weaponAnimator.setParamsNumber("Reload", 0);
            break;
          }
          default: {
            this.weaponAnimator.setParamsBool("IsWalking", false);
            this.weaponAnimator.setParamsBool("IsRunning", false);
            this.weaponAnimator.setParamsBool("IsFiring", false);
            this.weaponAnimator.setParamsBool("IsIdle", true);
            this.weaponAnimator.setParamsBool("IsAim", false);
            this.weaponAnimator.setParamsNumber("Reload", 0);
          }
        }
      }
    }
    // 底部射线检测
    RayCheck() {
      if (this.isMoving && this.charCtrl.isGrounded || this.jumpTouchGound) {
        if (this.jumpTouchGound)
          this.jumpTouchGound = false;
        let dir = Laya.Vector3.ZERO;
        this.playerTrs.getUp(dir);
        let ray = new Laya.Ray(this.playerTrs.position, new Laya.Vector3(0, -dir.y, 0));
        let hitResult = new Laya.HitResult();
        if (this.scene.physicsSimulation.rayCast(ray, hitResult, this.rayDistance)) {
          let sprite = hitResult.collider.owner;
          this.touchLayer = sprite.layer;
          this.audioManager.StartFootstep(this.shiftPress, this.touchLayer);
        } else {
          this.audioManager.StopFootstep();
        }
      } else {
        this.audioManager.StopFootstep();
      }
    }
    IsAimAction(reloadWhenAim = false) {
      if (!GameManager.GetInstance().IsGameStart)
        return;
      if (this.reloadStart && !reloadWhenAim)
        return;
      this.aimAnimPlayed = false;
      this.lastIsAiming = this.isAiming;
      this.isAiming = !this.isAiming;
      if (this.lastIsAiming && !this.isAiming) {
        WeaponManager.GetInstance().SetAimOut(true);
      }
    }
    InitPosAndRotation() {
      this.playerTrs.position = new Laya.Vector3(0, 1, 0);
      this.playerTrs.localRotationEuler = new Laya.Vector3(0, 0, 0);
      this.rootTrs.localRotationEuler = new Laya.Vector3(0, 0, 0);
    }
    InitParams() {
      this.charCtrl.move(new Laya.Vector3(0, 0, 0));
      this.isMoving = false;
      this.isTouchGround = null;
      this.isJumping = false;
      this.jumpTouchGound = false;
      this.isShooting = false;
      this.isAiming = false;
      this.reloadStart = false;
      this.reloadEnd = true;
      this.lastIsAiming = null;
      this.aimAnimPlayed = false;
      this.mainCamera.fieldOfView = 55;
      this.curActionType = 0 /* Idle */;
      this.SetAnimatorByActionType();
      this.aimLayer.defaultWeight = 0;
      this.weaponAnimator.play(null, 0);
      this.InitPosAndRotation();
    }
    MoveStop() {
    }
    DirectMove(angle) {
    }
    IsMoving() {
      return this.isMoving;
    }
    IsRunning() {
      return this.curActionType == 2 /* Run */;
    }
    IsGrounded() {
      return this.charCtrl.isGrounded;
    }
    GetTouchLayer() {
      return this.touchLayer;
    }
    GetIsJump() {
      return this.curActionType == 3 /* Jump */;
    }
  };
  __name(FpsController, "FpsController");
  __decorateClass([
    property10(Laya.Sprite3D)
  ], FpsController.prototype, "rootNode", 2);
  __decorateClass([
    property10(Laya.Sprite3D)
  ], FpsController.prototype, "camera", 2);
  __decorateClass([
    property10(Laya.Scene3D)
  ], FpsController.prototype, "scene", 2);
  __decorateClass([
    property10("number")
  ], FpsController.prototype, "walkSpeed", 2);
  __decorateClass([
    property10("number")
  ], FpsController.prototype, "runSpeed", 2);
  __decorateClass([
    property10("number")
  ], FpsController.prototype, "jumpHeight", 2);
  __decorateClass([
    property10(Laya.Animator)
  ], FpsController.prototype, "weaponAnimator", 2);
  __decorateClass([
    property10(AudioManager)
  ], FpsController.prototype, "audioManager", 2);
  __decorateClass([
    property10(Laya.Camera)
  ], FpsController.prototype, "mainCamera", 2);
  FpsController = __decorateClass([
    regClass10("14128449-0ed8-49ec-a10b-49162007e0da", "../src/Scripts/Player/FpsController.ts")
  ], FpsController);

  // src/Scripts/Player/FpsCtrlManager.ts
  var _FpsCtrlManager = class _FpsCtrlManager {
    static GetInstance() {
      if (_FpsCtrlManager.instance == null) {
        _FpsCtrlManager.instance = new _FpsCtrlManager();
        return _FpsCtrlManager.instance;
      } else {
        return _FpsCtrlManager.instance;
      }
    }
    InitFpsController(fpsCtrlNode) {
      this.fpsCtrlNode = fpsCtrlNode;
      this.fpsController = fpsCtrlNode.getComponent(FpsController);
    }
  };
  __name(_FpsCtrlManager, "FpsCtrlManager");
  _FpsCtrlManager.instance = null;
  var FpsCtrlManager = _FpsCtrlManager;

  // src/Scripts/Component/Roker.ts
  var { regClass: regClass11, property: property11 } = Laya;
  var Roker = class extends Laya.Script {
    constructor() {
      super();
      this.dropdis = 80;
      this.touchId = -1;
      this.curAngle = 0;
      this.playerAngle = 0;
      this.forwardDir = Laya.Vector3.ZERO;
      this.rotationAngle = Laya.Vector3.ZERO;
    }
    /**
     * 组件被激活后执行，此时所有节点和组件均已创建完毕，次方法只执行一次
     * 此方法为虚方法，使用时重写覆盖即可
     */
    onAwake() {
      this.view = this.owner;
      this._currentMouse = new Laya.Point();
      this.playerTrs = FpsCtrlManager.GetInstance().fpsCtrlNode.transform;
    }
    InitOperation(operation) {
      this.operation = operation;
    }
    /**
     * 第一次执行update之前执行，只会执行一次
     * 此方法为虚方法，使用时重写覆盖即可
     */
    onStart() {
      this.currRockerbox = this.view;
      this.currRockerBar = this.view.getChildByName("freebar");
      this.dropdis = 100;
      this.initbarx = this.currRockerBar.x;
      this.initbary = this.currRockerBar.y;
      this.currRockerBar.on(Laya.Event.MOUSE_DOWN, this, this.rockerDown);
      Laya.stage.on(Laya.Event.MOUSE_DRAG, this, this.rockerMove);
      Laya.stage.on(Laya.Event.MOUSE_DRAG_END, this, this.rockerUp);
    }
    onUpdate() {
      if (this.rockerIsDown) {
        let radians = Math.PI / 180 * (this.curAngle + this.playerAngle);
        let sinValue = Math.sin(radians);
        let cosValue = Math.cos(radians);
        this.rotationAngle = new Laya.Vector3(sinValue, 0, cosValue);
        let isForward = this.curAngle < 30 && this.curAngle > -30;
        this.operation.MoveDir(this.rotationAngle, isForward);
      }
    }
    rockerDown(e) {
      if (this.touchId != -1)
        return;
      e.stopPropagation();
      this.touchId = e.touchId;
      this.rockerIsDown = true;
      this.currRockerBar.selected = true;
      if (this.rockerIsDown) {
        this.mdownx = this.currRockerbox.mouseX;
        this.mdowny = this.currRockerbox.mouseY;
        this.barinitx = this.currRockerBar.x;
        this.barinity = this.currRockerBar.y;
      }
    }
    rockerUp(e) {
      if (e.touchId == this.touchId) {
        this.touchId = -1;
        this.rockerIsDown = false;
        this.currRockerBar.x = this.initbarx;
        this.currRockerBar.y = this.initbary;
        this.currRockerBar.selected = false;
        this.operation.StopMove();
      }
    }
    rockerMove(e) {
      if (!this.rockerIsDown)
        return;
      if (e.touchId != this.touchId) {
        return;
      }
      e.stopPropagation();
      this._currentMouse.x = Math.round(e.touchPos.x / Laya.stage.clientScaleY);
      this._currentMouse.y = Math.round(e.touchPos.y / Laya.stage.clientScaleY);
      this.currRockerbox.globalToLocal(this._currentMouse, false);
      var cmousex = this._currentMouse.x;
      var cmousey = this._currentMouse.y;
      var value = (this.mdownx - cmousex) * (this.mdownx - cmousex) + (this.mdowny - cmousey) * (this.mdowny - cmousey);
      var dis = Math.sqrt(value);
      if (dis < 0)
        dis = -dis;
      var delatx = cmousex - this.mdownx;
      var delaty = cmousey - this.mdowny;
      var angle = Math.atan2(delatx, delaty) * 180 / Math.PI;
      this.curAngle = angle > 0 ? angle - 180 : angle + 180;
      this.playerTrs.getForward(this.forwardDir);
      this.playerAngle = Math.atan2(-this.forwardDir.x, -this.forwardDir.z) * 180 / Math.PI;
      var radians = Math.PI / 180 * angle;
      if (dis < this.dropdis) {
        this.currRockerBar.x = this.barinitx + delatx;
        this.currRockerBar.y = this.barinity + delaty;
      } else {
        var x = Math.floor(Math.sin(radians) * this.dropdis + this.barinitx);
        var y = Math.floor(Math.cos(radians) * this.dropdis + this.barinity);
        this.currRockerBar.x = x;
        this.currRockerBar.y = y;
      }
    }
  };
  __name(Roker, "Roker");
  Roker = __decorateClass([
    regClass11("878d6851-b60e-43e5-a038-f52da3188b5e", "../src/Scripts/Component/Roker.ts")
  ], Roker);

  // src/Scripts/Enemy/Target.ts
  var { regClass: regClass12, property: property12 } = Laya;
  var Target = class extends Laya.Script {
    constructor() {
      super(...arguments);
      this.canGetHurt = true;
    }
    onAwake() {
      this.transform = this.owner.transform;
      this.MoveRween();
    }
    GetHurt(socre) {
      if (!this.canGetHurt)
        return;
      this.canGetHurt = false;
      Laya.timer.once(4e3, this, () => {
        this.Reset();
      });
      this.RotationRween();
      MainViewManager.GetInstance().AddScore(socre);
    }
    Reset() {
      this.canGetHurt = true;
      this.RotationRween();
    }
    RotationRween() {
      if (this.moveTween != null) {
        Laya.Tween.clear(this.moveTween);
        this.moveTween = null;
      }
      let tarRotation = this.canGetHurt ? 0 : 90;
      this.rotationTween = Laya.Tween.to(
        this.transform,
        { localRotationEulerX: tarRotation },
        500,
        Laya.Ease.backOut,
        Laya.Handler.create(this, this.MoveRween)
      );
    }
    MoveRween() {
      if (!this.canGetHurt || !this.isMovable)
        return;
      let tarPos = this.isMoveLeft ? this.leftPos : this.rightPos;
      let offset = 0;
      if (this.isMoveLeft)
        offset = this.leftPos - this.transform.localPositionX;
      else
        offset = this.transform.localPositionX - this.rightPos;
      let time = offset / (this.leftPos - this.rightPos) * 2e3;
      this.moveTween = Laya.Tween.to(
        this.transform,
        { localPositionX: tarPos },
        time,
        Laya.Ease.linearIn,
        Laya.Handler.create(this, this.MoveOtherSide)
      );
    }
    MoveOtherSide() {
      this.isMoveLeft = !this.isMoveLeft;
      this.MoveRween();
    }
  };
  __name(Target, "Target");
  __decorateClass([
    property12(Boolean)
  ], Target.prototype, "isMovable", 2);
  __decorateClass([
    property12(Number)
  ], Target.prototype, "leftPos", 2);
  __decorateClass([
    property12(Number)
  ], Target.prototype, "rightPos", 2);
  __decorateClass([
    property12(Boolean)
  ], Target.prototype, "isMoveLeft", 2);
  Target = __decorateClass([
    regClass12("64ed3861-0848-415d-8b47-83e775f04508", "../src/Scripts/Enemy/Target.ts")
  ], Target);

  // src/Scripts/Weapon/AssaultRifle.ts
  var { regClass: regClass13, property: property13 } = Laya;
  var AssaultRifle = class extends FireArm {
    onAwake() {
      super.onAwake();
    }
    ReloadEnd() {
      super.ReloadEnd();
    }
    ReloadEndOutof() {
      super.ReloadEndOutof();
    }
  };
  __name(AssaultRifle, "AssaultRifle");
  AssaultRifle = __decorateClass([
    regClass13("38dbe5a9-836f-45b8-bbe6-41609701c3c9", "../src/Scripts/Weapon/AssaultRifle.ts")
  ], AssaultRifle);

  // src/Scripts/Weapon/Bullet.ts
  var { regClass: regClass14, property: property14 } = Laya;
  var Bullet = class extends Laya.Script {
    constructor() {
      super(...arguments);
      this.speed = 100;
      this.dir = Laya.Vector3.ZERO;
    }
    onStart() {
      this.transform = this.owner.transform;
      this.scene = Laya.stage.getChildAt(0);
      Laya.timer.once(5e3, this, () => {
        this.owner.removeSelf();
      });
    }
    onUpdate() {
      this.transform.translate(new Laya.Vector3(0, 0, -this.speed * Laya.timer.delta / 1e3));
      this.transform.getForward(this.dir);
      let ray = new Laya.Ray(this.transform.position, this.dir);
      let hitResult = new Laya.HitResult();
      if (this.scene.physicsSimulation.rayCast(ray, hitResult, 2)) {
        let sprite = hitResult.collider.owner;
        if (sprite.layer == 4) {
          console.log(hitResult.collider.owner.name);
          let point = 2;
          if (hitResult.collider.owner.name == "Head") {
            point = 10;
            sprite = sprite.parent;
          } else if (hitResult.collider.owner.name == "Body") {
            point = 5;
            sprite = sprite.parent;
          }
          let tarScript = sprite.getComponent(Target);
          tarScript.GetHurt(point);
          this.owner.removeSelf();
        }
      }
    }
    onDisable() {
      Laya.Pool.recover("Bullet", this.owner);
    }
  };
  __name(Bullet, "Bullet");
  Bullet = __decorateClass([
    regClass14("297140af-b3c1-42c5-81d2-5240b61920b2", "../src/Scripts/Weapon/Bullet.ts")
  ], Bullet);
})();
//# sourceMappingURL=bundle.js.map
