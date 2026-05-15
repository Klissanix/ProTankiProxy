package alternativa.tanks.models.battle.assault
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §521423136592313672123423632234§.ASKeyPointHudMarker;
   import §5214231817231830123423632234§.§5214233863233876123423632234§;
   import §5214233087233100123423632234§.§throw for true§;
   import §5214235485235498123423632234§.CTFCommonTargetEvaluator;
   import §5214235485235498123423632234§.CTFFlagState;
   import §5214235485235498123423632234§.CTFRailgunTargetEvaluator;
   import §5214235485235498123423632234§.FlagMessage;
   import §52142360623619123423632234§.§dynamic const§;
   import §5214238325238338123423632234§.§5214234586234599123423632234§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238361238374123423632234§.§get catch§;
   import §5214239225239238123423632234§.TDMHealingGunTargetEvaluator;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.BSP;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Vector3;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.battle.§521423111742311187123423632234§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleEventSupport;
   import alternativa.tanks.battle.events.BattleFinishEvent;
   import alternativa.tanks.battle.events.BattleRestartEvent;
   import alternativa.tanks.battle.events.LocalTankActivationEvent;
   import alternativa.tanks.battle.events.StateCorrectionEvent;
   import alternativa.tanks.battle.events.TankAddedToBattleEvent;
   import alternativa.tanks.battle.events.TankLoadedEvent;
   import alternativa.tanks.battle.events.TankUnloadedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.engine3d.TextureAnimation;
   import alternativa.tanks.models.battle.battlefield.BattleType;
   import alternativa.tanks.models.battle.battlefield.§extends set null§;
   import alternativa.tanks.models.battle.gui.BattlefieldGUI;
   import alternativa.tanks.service.settings.keybinding.GameActionEnum;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.tanks.services.lightingeffects.ILightingEffectsService;
   import alternativa.utils.TextureMaterialRegistry;
   import §break const dynamic§.§521423138842313897123423632234§;
   import §break const dynamic§.§52142347523488123423632234§;
   import §break const dynamic§.§5214238536238549123423632234§;
   import §break const dynamic§.§package for class§;
   import §break const dynamic§.§return package return§;
   import §break const dynamic§.§switch for if§;
   import §const false§.TankDeadEvent;
   import §const use implements§.§dynamic include§;
   import §each var null§.§catch for in§;
   import §each var null§.§const throw§;
   import §else switch default§.§5214235140235153123423632234§;
   import §extends var import§.§5214231658231671123423632234§;
   import §finally catch with§.§true use package§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.KeyboardEvent;
   import flash.geom.Matrix;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import §override catch default§.Long;
   import §package package false§.§static set true§;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import §switch var native§.ModeLight;
   import §switch var native§.TeamLightColor;
   import §throw set function§.§if catch true§;
   import §throw set function§.§try var case§;
   
   public class AssaultModel extends §521423138842313897123423632234§ implements §52142347523488123423632234§, §5214234168234181123423632234§, §throw catch var§, §if use default§, §extends set null§, §52142381823831123423632234§
   {
      
      public static const §import set case§:Number = 80;
      
      private static const §52142373323746123423632234§:int = 128;
      
      private static const §import finally for§:int = 256;
      
      private static const §5214235600235613123423632234§:int = 5000;
      
      private static const §extends use final§:String = "taken";
      
      private static const §521423133482313361123423632234§:String = "lost";
      
      private static const §521423133922313405123423632234§:String = "returned";
      
      private static const §5214237192237205123423632234§:String = "captured";
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §5214235868235881123423632234§:TextureMaterialRegistry;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var display:IDisplay;
      
      public static var §5214236492236505123423632234§:BattleInputService;
      
      public static var §5214239937239950123423632234§:ILightingEffectsService;
      
      public static var §extends package override§:KeysBindingService;
      
      private static const §function use const§:Class = c45dcd5_png$3df6b4593df030d223059ed0b73aa2f71977303224;
      
      private static const §521423118932311906123423632234§:BitmapData = Bitmap(new §function use const§()).bitmapData;
      
      private var §5214231017231030123423632234§:Boolean;
      
      private var §if switch finally§:BattlefieldGUI;
      
      private var §with var include§:§dynamic const§;
      
      private var §5214232242232255123423632234§:§5214234586234599123423632234§;
      
      private var §else for include§:Vector.<ASFlag>;
      
      private var §5214231426231439123423632234§:Object;
      
      private var §in switch§:Object;
      
      private var §var use get§:Object;
      
      private var §521423128352312848123423632234§:FlagMessage;
      
      private var §5214231777231790123423632234§:Sound;
      
      private var §set throw§:Sound;
      
      private var §5214231320231333123423632234§:Sound;
      
      private var §5214234542234555123423632234§:Sound;
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      private var §5214239755239768123423632234§:Dictionary;
      
      private var §implements package while§:§5214239411239424123423632234§;
      
      private var §const use if§:Vector.<ASFlagBaseTrigger>;
      
      private var §521423128032312816123423632234§:Vector.<ASKeyPointHudMarker>;
      
      private var §set package class§:Vector.<§521423111742311187123423632234§>;
      
      public function AssaultModel()
      {
         super();
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§,this);
         this.§5214238269238282123423632234§.addEventHandler(BattleFinishEvent,this.c629987c);
         this.§5214238269238282123423632234§.addEventHandler(BattleRestartEvent,this.b50281ca);
         this.§5214238269238282123423632234§.addEventHandler(TankLoadedEvent,this.onTankLoaded);
         this.§5214238269238282123423632234§.addEventHandler(TankUnloadedEvent,this.a47915e9);
         this.§5214238269238282123423632234§.addEventHandler(TankAddedToBattleEvent,this.b3b06d40);
         this.§5214238269238282123423632234§.addEventHandler(LocalTankActivationEvent,this.d3b9261b);
         this.§5214238269238282123423632234§.addEventHandler(TankDeadEvent,this.f1196fd5);
      }
      
      private static function d491a9e(param1:BitmapData) : TextureMaterial
      {
         var _loc2_:TextureMaterial = §5214235868235881123423632234§.getMaterial(param1,false);
         _loc2_.resolution = 1000 / param1.width;
         return _loc2_;
      }
      
      private static function c551a4e2(param1:§5214233863233876123423632234§) : Object3D
      {
         var _loc3_:TextureMaterial = null;
         var _loc2_:Mesh = Mesh(param1.§5214237990238003123423632234§[0]);
         var _loc4_:BSP = new BSP();
         _loc4_.createTree(_loc2_);
         var _loc5_:BitmapData = param1.§finally for break§(0);
         if(_loc5_ == null)
         {
            _loc5_ = new §throw for true§(16776960);
         }
         _loc3_ = §5214235868235881123423632234§.getMaterial(_loc5_);
         _loc3_.resolution = 1;
         _loc4_.setMaterialToAllFaces(_loc3_);
         return _loc4_;
      }
      
      private function b20430e(param1:String) : void
      {
         if(param1)
         {
            this.a49feb44("returned",param1);
         }
         else
         {
            this.§if switch finally§.showBattleMessage(this.§521423128352312848123423632234§.color,this.§521423128352312848123423632234§.text);
         }
      }
      
      private function a172bed6() : void
      {
         this.c3fbdf8c();
         this.a6b4e7ea();
         this.§521423128352312848123423632234§ = new FlagMessage(§5214236363236376123423632234§.getText("CTF_RED_FLAG_RETURNED"),16776960);
      }
      
      public function returnFlagToBase(param1:int, param2:String) : void
      {
         this.b5983d13(this.§else for include§[param1]);
         this.b20430e(param2);
         §52142380523818123423632234§.soundManager.playSound(this.§set throw§);
      }
      
      public function getRicochetTargetEvaluator() : §try var case§
      {
         var _loc1_:§if catch true§ = new §if catch true§();
         this.§set package class§.push(_loc1_);
         return _loc1_;
      }
      
      private function c1e62da5(param1:ASFlag, param2:§5214239411239424123423632234§) : void
      {
         if(param2 != null && this.§implements package while§ != null && !this.d625eaa2())
         {
            this.c218e4da(param2.§break switch catch§());
         }
      }
      
      public function flagTaken(param1:int, param2:String) : void
      {
         var _loc3_:ASFlag = this.§else for include§[param1];
         var _loc4_:§5214239411239424123423632234§ = this.§5214239755239768123423632234§[param2];
         if(this.§implements package while§ != null && this.§implements package while§ == _loc4_)
         {
            this.e6ad72fd(_loc3_,param2,_loc4_);
         }
         else
         {
            this.a76dfc37(_loc3_,param2,_loc4_);
         }
         if(this.§implements package while§ != null || §return set get§.isSpectatorMode())
         {
            this.eebfaba(_loc3_);
            this.a49feb44("taken",_loc4_.§5214233939233952123423632234§().id);
            §52142380523818123423632234§.soundManager.playSound(this.§5214231320231333123423632234§);
         }
         this.§if switch finally§.asShowFlagCarried();
      }
      
      public function onEnterPointCapturingZone() : void
      {
         this.§5214238269238282123423632234§.dispatchEvent(StateCorrectionEvent.§use var with§);
      }
      
      private function d16dcfe0() : void
      {
         var _loc1_:§switch for if§ = null;
         this.§521423128032312816123423632234§ = new Vector.<ASKeyPointHudMarker>(§switch var switch§().§continue set function§.length);
         for each(_loc1_ in §switch var switch§().§continue set function§)
         {
            this.§521423128032312816123423632234§[_loc1_.id] = new ASKeyPointHudMarker(§52142380523818123423632234§.getBattleScene3D().§while set for§(),new Vector3(_loc1_.§dynamic final§.x,_loc1_.§dynamic final§.y,_loc1_.§dynamic final§.§continue package false§));
            §52142380523818123423632234§.getBattleScene3D().§5214231991232004123423632234§(this.§521423128032312816123423632234§[_loc1_.id],0);
            if(§return set get§.isSpectatorMode())
            {
               this.§521423128032312816123423632234§[_loc1_.id].show();
            }
         }
      }
      
      public function onFlagTouch(param1:int) : void
      {
         this.eebfaba(this.§else for include§[param1]);
         this.§5214238269238282123423632234§.dispatchEvent(StateCorrectionEvent.§use var with§);
      }
      
      private function d625eaa2() : Boolean
      {
         return this.§implements package while§.§5214238124238137123423632234§ == §5214231658231671123423632234§.§521423107532310766123423632234§;
      }
      
      private function a49feb44(param1:String, param2:String) : void
      {
         var _loc3_:FlagMessage = this.f76d533e(param1);
         this.d52129f8(_loc3_,param2);
         this.§if switch finally§.showUserBattleLogMessage(param2,_loc3_.text,null);
      }
      
      private function c6ac4396() : void
      {
         this.§set package class§ = new Vector.<§521423111742311187123423632234§>();
         var _loc1_:CTFCommonTargetEvaluator = new CTFCommonTargetEvaluator();
         §52142380523818123423632234§.setCommonTargetEvaluator(_loc1_);
         this.§set package class§.push(_loc1_);
         var _loc2_:TDMHealingGunTargetEvaluator = new TDMHealingGunTargetEvaluator();
         §52142380523818123423632234§.setHealingGunTargetEvaluator(_loc2_);
         this.§set package class§.push(_loc2_);
         var _loc3_:CTFRailgunTargetEvaluator = new CTFRailgunTargetEvaluator();
         §52142380523818123423632234§.setRailgunTargetEvaluator(_loc3_);
         this.§set package class§.push(_loc3_);
         var _loc4_:§if catch true§ = new §if catch true§();
         §52142380523818123423632234§.setRicochetTargetEvaluator(_loc4_);
         this.§set package class§.push(_loc4_);
      }
      
      private function b5983d13(param1:ASFlag) : void
      {
         this.§5214231017231030123423632234§ = false;
         param1.returnToBase();
         if(Boolean(this.§implements package while§) && Boolean(this.§implements package while§.§5214238124238137123423632234§))
         {
            if(this.§implements package while§.§try for const§(§5214231658231671123423632234§.§implements set implements§))
            {
               this.c218e4da(null);
            }
            else
            {
               this.a75b81c4(param1);
            }
         }
         this.§if switch finally§.asShowFlagAtBase();
      }
      
      private function b50281ca(param1:Object) : void
      {
         var _loc2_:ASFlag = null;
         var _loc3_:ASFlagBaseTrigger = null;
         for each(_loc2_ in this.§else for include§)
         {
            this.b5983d13(_loc2_);
         }
         for each(_loc3_ in this.§const use if§)
         {
            _loc3_.reset();
         }
      }
      
      private function eebfaba(param1:ASFlag) : void
      {
         §52142380523818123423632234§.getBattleRunner().removeTrigger(param1);
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:GameActionEnum = §extends package override§.getBindingAction(param1.keyCode,param1.ctrlKey);
         var _loc3_:GameActionEnum = _loc2_;
         if(GameActionEnum.DROP_FLAG === _loc3_)
         {
            this.c155a41c();
         }
      }
      
      private function f1196fd5(param1:TankDeadEvent) : void
      {
         var _loc2_:ASFlag = null;
         if(this.§implements package while§ != null && this.§implements package while§ == param1.§52142366723680123423632234§)
         {
            for each(_loc2_ in this.§else for include§)
            {
               this.eebfaba(_loc2_);
            }
         }
      }
      
      public function dropFlag(param1:int, param2:§52142320823221123423632234§) : void
      {
         var _loc3_:ASFlag = this.§else for include§[param1];
         this.f45acf41(_loc3_);
         this.§if switch finally§.asShowFlagDropped();
         this.c1da9bd6(_loc3_);
         _loc3_.dropAt(new Vector3(param2.x,param2.y,param2.§continue package false§));
      }
      
      public function onPickupTimeoutPassed(param1:int) : void
      {
         var _loc2_:ASFlag = this.§else for include§[param1];
         if(_loc2_.state != CTFFlagState.CARRIED)
         {
            this.a75b81c4(_loc2_);
         }
      }
      
      private function c629987c(param1:Object) : void
      {
         var _loc2_:ASFlag = null;
         this.§5214231017231030123423632234§ = false;
         for each(_loc2_ in this.§else for include§)
         {
            this.eebfaba(_loc2_);
         }
      }
      
      private function d3b9261b(param1:Object) : void
      {
         var _loc2_:§521423111742311187123423632234§ = null;
         var _loc3_:ASFlag = null;
         if(this.d625eaa2())
         {
            for each(_loc3_ in this.§else for include§)
            {
               if(_loc3_.state != CTFFlagState.CARRIED)
               {
                  this.a75b81c4(_loc3_);
               }
            }
         }
         for each(_loc2_ in this.§set package class§)
         {
            _loc2_.setLocalTeamType(this.§implements package while§.§5214238124238137123423632234§);
         }
      }
      
      private function a76dfc37(param1:ASFlag, param2:String, param3:§5214239411239424123423632234§) : void
      {
         param1.setRemoteCarrier(param2,param3);
         this.c1e62da5(param1,param3);
      }
      
      private function c47892f6(param1:§52142320823221123423632234§) : void
      {
         var _loc2_:BitmapData = §switch var switch§().§5214238804238817123423632234§.data.clone();
         var _loc4_:Matrix = new Matrix();
         _loc4_.tx = (_loc2_.height - §521423118932311906123423632234§.height) / 2;
         _loc4_.ty = (_loc2_.height - §521423118932311906123423632234§.height) / 2;
         _loc2_.draw(§521423118932311906123423632234§,_loc4_);
         var _loc5_:TextureMaterial = d491a9e(_loc2_);
         var _loc3_:ASProgressPlane = new ASProgressPlane(_loc5_,§52142380523818123423632234§);
         §52142380523818123423632234§.getBattleScene3D().§5214231991232004123423632234§(_loc3_,0);
         _loc3_.x = param1.x;
         _loc3_.y = param1.y;
         _loc3_.z = param1.§continue package false§ + 350;
         §52142380523818123423632234§.getBattleScene3D().§5214231095231108123423632234§(_loc3_);
         this.edcd94c(param1);
      }
      
      public function onLeaveFlagBaseZone() : void
      {
         this.§5214232242232255123423632234§.lockItem(5,2,false);
      }
      
      private function d3dc03df(param1:String, param2:String, param3:Boolean) : void
      {
         this.§5214231426231439123423632234§[param1] = new FlagMessage(§5214236363236376123423632234§.getText(param2),param3 ? 65280 : 16776960);
         this.§in switch§[param1] = new FlagMessage(§5214236363236376123423632234§.getText(param2),!param3 ? 65280 : 16776960);
      }
      
      private function b3b06d40(param1:TankAddedToBattleEvent) : void
      {
         var _loc2_:ASFlag = null;
         for each(_loc2_ in this.§else for include§)
         {
            if(_loc2_.state == CTFFlagState.CARRIED && _loc2_.carrierid == param1.tank.§5214233939233952123423632234§().id)
            {
               this.a76dfc37(_loc2_,_loc2_.carrierid,param1.tank);
               this.eebfaba(_loc2_);
            }
         }
      }
      
      public function onLeavePointCapturingZone() : void
      {
         this.§5214238269238282123423632234§.dispatchEvent(StateCorrectionEvent.§use var with§);
      }
      
      private function a75b81c4(param1:ASFlag) : void
      {
         if(this.§implements package while§ != null && this.§implements package while§.§implements catch catch§ == §get catch§.§52142350323516123423632234§ && §52142380523818123423632234§.isBattleActive())
         {
            §52142380523818123423632234§.getBattleRunner().addTrigger(param1);
         }
      }
      
      private function c1177c82() : void
      {
         var _loc1_:§package for class§ = null;
         var _loc2_:§switch for if§ = null;
         var _loc3_:§return package return§ = §switch var switch§();
         this.§else for include§ = new Vector.<ASFlag>(_loc3_.§break var include§.length);
         for each(_loc1_ in _loc3_.§break var include§)
         {
            this.a4fdcbe5(§5214231658231671123423632234§.§implements set implements§,_loc1_,_loc3_.§do for return§.data,_loc3_.§override catch implements§);
         }
         for each(_loc2_ in _loc3_.§continue set function§)
         {
            this.d7540478(_loc3_.§5214233564233577123423632234§,_loc2_.§dynamic final§);
            this.c47892f6(_loc2_.§dynamic final§);
         }
      }
      
      private function a4fdcbe5(param1:§5214231658231671123423632234§, param2:§package for class§, param3:BitmapData, param4:§5214233863233876123423632234§) : void
      {
         var _loc8_:Vector3 = null;
         if(param3 == null)
         {
            param3 = new BitmapData(128,256,false,param1 == §5214231658231671123423632234§.§521423107532310766123423632234§ ? 11141120 : 170);
         }
         var _loc9_:TextureAnimation = §true use package§.§5214231046231059123423632234§(§5214235868235881123423632234§,param3,128,param3.height,0,false);
         var _loc6_:Vector3 = new Vector3(param2.§throw use else§.x,param2.§throw use else§.y,param2.§throw use else§.§continue package false§);
         var _loc7_:§5214235140235153123423632234§ = §52142380523818123423632234§.getBattleScene3D();
         var _loc5_:ASFlag = new ASFlag(param2.id,param1,_loc6_,128,256,_loc9_,§52142380523818123423632234§.getBattleRunner().getCollisionDetector(),this);
         _loc5_.addToScene();
         if(param2.§each for switch§ != null)
         {
            this.a76dfc37(_loc5_,param2.§each for switch§,this.§5214239755239768123423632234§[param2.§each for switch§]);
            this.§if switch finally§.asShowFlagCarried();
         }
         else if(param2.final != null)
         {
            _loc8_ = new Vector3();
            _loc8_.x = param2.final.x;
            _loc8_.y = param2.final.y;
            _loc8_.z = param2.final.§continue package false§;
            _loc5_.dropAt(_loc8_);
            this.§if switch finally§.asShowFlagAtBase();
         }
         _loc7_.§5214231991232004123423632234§(_loc5_,1);
         _loc7_.§5214233808233821123423632234§.add(_loc5_);
         this.d7540478(param4,param2.§throw use else§);
         this.§else for include§[_loc5_.getId()] = _loc5_;
      }
      
      private function a47915e9(param1:TankUnloadedEvent) : void
      {
         var _loc2_:ASFlag = null;
         var _loc5_:§const throw§ = null;
         var _loc6_:§catch for in§ = null;
         var _loc3_:Vector3 = null;
         var _loc4_:§5214239411239424123423632234§ = param1.tank;
         for each(_loc2_ in this.§else for include§)
         {
            if(_loc2_.carrier == _loc4_)
            {
               _loc5_ = _loc4_.§break switch catch§();
               _loc6_ = _loc5_.§implements catch catch§;
               _loc3_ = _loc6_.§dynamic final§;
               this.dropFlag(_loc2_.getId(),BattleUtils.getVector3d(_loc3_));
            }
         }
         delete this.§5214239755239768123423632234§[_loc4_.§5214233939233952123423632234§().id];
      }
      
      private function d52129f8(param1:FlagMessage, param2:String) : void
      {
         var _loc3_:String = param2 != null ? param2 : null;
         if(_loc3_)
         {
            this.§if switch finally§.showBattleMessage(param1.color,_loc3_ + " " + param1.text);
         }
      }
      
      public function objectUnloaded() : void
      {
         var _loc1_:ASFlag = null;
         display.stage.removeEventListener("keyDown",this.onKeyDown);
         for each(_loc1_ in this.§else for include§)
         {
            _loc1_.dispose();
         }
         this.§else for include§ = null;
         this.§if switch finally§ = null;
         this.§implements package while§ = null;
         this.§5214239755239768123423632234§ = null;
         this.§const use if§ = null;
         this.§5214238269238282123423632234§.deactivateHandlers();
         this.§set package class§ = null;
         §52142380523818123423632234§.setCommonTargetEvaluator(null);
         §52142380523818123423632234§.setHealingGunTargetEvaluator(null);
         §52142380523818123423632234§.setRailgunTargetEvaluator(null);
         §52142380523818123423632234§.setRicochetTargetEvaluator(null);
      }
      
      private function c3fbdf8c() : void
      {
         this.§5214231426231439123423632234§ = {};
         this.§in switch§ = {};
         this.d3dc03df("taken","CTF_GOT_FLAG_NEUTRAL",true);
         this.d3dc03df("lost","CTF_LOST_FLAG_NEUTRAL",false);
         this.d3dc03df("returned","CTF_RETURNED_FLAG_NEUTRAL",false);
         this.d3dc03df("captured","CTF_CAPTURED_FLAG_NEUTRAL",true);
      }
      
      private function a6b4e7ea() : void
      {
         this.§var use get§ = {};
         this.§var use get§["taken"] = new FlagMessage(§5214236363236376123423632234§.getText("CTF_GOT_FLAG_NEUTRAL"),15741974);
         this.§var use get§["lost"] = new FlagMessage(§5214236363236376123423632234§.getText("CTF_LOST_FLAG_NEUTRAL"),15741974);
         this.§var use get§["returned"] = new FlagMessage(§5214236363236376123423632234§.getText("CTF_RETURNED_FLAG_NEUTRAL"),4691967);
         this.§var use get§["captured"] = new FlagMessage(§5214236363236376123423632234§.getText("CTF_CAPTURED_FLAG_NEUTRAL"),15741974);
      }
      
      private function c218e4da(param1:§const throw§) : void
      {
         var _loc2_:§521423111742311187123423632234§ = null;
         for each(_loc2_ in this.§set package class§)
         {
            _loc2_.setFlagCarrier(param1);
         }
      }
      
      private function edcd94c(param1:§52142320823221123423632234§) : void
      {
         var _loc4_:OmniLight = null;
         var _loc2_:ModeLight = §5214239937239950123423632234§.getLightForMode(§dynamic include§.§catch package use§);
         var _loc3_:TeamLightColor = _loc2_.getLightForTeam(§5214231658231671123423632234§.§implements set implements§);
         _loc4_ = new OmniLight(0,_loc2_.getAttenuationBegin(),_loc2_.getAttenuationEnd());
         _loc4_.color = _loc3_.getColor();
         _loc4_.intensity = _loc3_.getIntensity();
         _loc4_.x = param1.x;
         _loc4_.y = param1.y;
         _loc4_.z = param1.§continue package false§ + 350;
         §52142380523818123423632234§.getBattleScene3D().§5214231095231108123423632234§(_loc4_);
      }
      
      public function flagDelivered(param1:int, param2:int, param3:String) : void
      {
         var _loc5_:§5214239411239424123423632234§ = null;
         var _loc4_:ASFlag = this.§else for include§[param1];
         this.b5983d13(_loc4_);
         if(this.§implements package while§ != null || §return set get§.isSpectatorMode())
         {
            _loc5_ = this.§5214239755239768123423632234§[param3];
            if(_loc5_ != null)
            {
               this.a49feb44("captured",_loc5_.§5214233939233952123423632234§().id);
               §52142380523818123423632234§.soundManager.playSound(this.§5214234542234555123423632234§);
            }
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238269238282123423632234§.handleBattleEvent(param1);
      }
      
      private function c155a41c() : void
      {
         if(§52142380523818123423632234§.isBattleActive() && !§5214236492236505123423632234§.isInputLocked() && this.§implements package while§ != null && !this.§5214231017231030123423632234§)
         {
            for each(var _loc1_ in this.§else for include§)
            {
               if(_loc1_.carrier == this.§implements package while§)
               {
                  this.§5214231017231030123423632234§ = true;
                  this.§5214238269238282123423632234§.dispatchEvent(StateCorrectionEvent.§use var with§);
                  §521423120492312062123423632234§.§5214232882232895123423632234§();
               }
            }
         }
      }
      
      public function onEnterFlagBaseZone() : void
      {
         this.§5214232242232255123423632234§.lockItem(5,2,true);
      }
      
      private function f45acf41(param1:ASFlag) : void
      {
         if(param1.carrier == null)
         {
            return;
         }
         this.a49feb44("lost",param1.carrier.§5214233939233952123423632234§().id);
         §52142380523818123423632234§.soundManager.playSound(this.§5214231777231790123423632234§);
      }
      
      private function c1da9bd6(param1:ASFlag) : void
      {
         if(this.§implements package while§ == null || param1.carrier == null)
         {
            return;
         }
         if(!this.d625eaa2())
         {
            this.c218e4da(null);
         }
         if(param1.carrier == this.§implements package while§)
         {
            if(this.§5214231017231030123423632234§)
            {
               this.§5214231017231030123423632234§ = false;
               §52142380523818123423632234§.getBattleRunner().addLogicUnit(new ASFlagPickupTimeoutTask(param1.getId(),this,getTimer() + 5000));
            }
         }
         else
         {
            this.a75b81c4(param1);
         }
      }
      
      public function objectLoadedPost() : void
      {
         var _loc1_:§5214238536238549123423632234§ = §switch var switch§().§5214235405235418123423632234§;
         this.§5214231777231790123423632234§ = _loc1_.§5214231777231790123423632234§.§set const switch§;
         this.§set throw§ = _loc1_.§set throw§.§set const switch§;
         this.§5214231320231333123423632234§ = _loc1_.§5214231320231333123423632234§.§set const switch§;
         this.§5214234542234555123423632234§ = _loc1_.§5214234542234555123423632234§.§set const switch§;
         this.§5214239755239768123423632234§ = new Dictionary();
         this.§const use if§ = new Vector.<ASFlagBaseTrigger>();
         this.a172bed6();
         this.§5214232242232255123423632234§ = §5214234586234599123423632234§(modelRegistry.getModel(Long.getLong(-1967712540,-458647807)));
         this.§if switch finally§ = BattlefieldGUI(modelRegistry.getModel(Long.getLong(-2051760404,-666586432)));
         this.§with var include§ = §dynamic const§(modelRegistry.getModel(Long.getLong(-1367246999,1092854311)));
         display.stage.addEventListener("keyDown",this.onKeyDown);
         this.§5214238269238282123423632234§.activateHandlers();
         this.c6ac4396();
         this.d16dcfe0();
         this.c1177c82();
      }
      
      public function getBattleType() : BattleType
      {
         return BattleType.AS;
      }
      
      private function e6ad72fd(param1:ASFlag, param2:String, param3:§5214239411239424123423632234§) : void
      {
         param1.setLocalCarrier(param2,param3);
         this.c1e62da5(param1,param3);
      }
      
      private function onTankLoaded(param1:TankLoadedEvent) : void
      {
         var _loc2_:ASKeyPointHudMarker = null;
         this.§5214239755239768123423632234§[param1.tank.§5214233939233952123423632234§().id] = param1.tank;
         if(param1.isLocal)
         {
            for each(_loc2_ in this.§521423128032312816123423632234§)
            {
               _loc2_.show();
            }
            this.§implements package while§ = param1.tank;
         }
      }
      
      private function d7540478(param1:§5214233863233876123423632234§, param2:§52142320823221123423632234§) : void
      {
         var _loc5_:Object3D = c551a4e2(param1);
         var _loc6_:Vector3 = BattleUtils.getVector3(param2);
         _loc6_.z = _loc6_.z - 80;
         _loc5_.x = _loc6_.x;
         _loc5_.y = _loc6_.y;
         _loc5_.z = _loc6_.z;
         §52142380523818123423632234§.getBattleScene3D().§5214231095231108123423632234§(_loc5_);
         var _loc3_:§static set true§ = §52142380523818123423632234§.getBattleRunner().getCollisionDetector();
         var _loc4_:ASFlagBaseTrigger = new ASFlagBaseTrigger(_loc6_,this.§with var include§.§extends set override§(),400,this,_loc3_);
         this.§const use if§.push(_loc4_);
         §52142380523818123423632234§.getBattleRunner().addTrigger(_loc4_);
      }
      
      private function f76d533e(param1:String) : FlagMessage
      {
         if(§return set get§.isSpectatorMode())
         {
            return this.§var use get§[param1];
         }
         return this.§implements package while§.§5214238124238137123423632234§ == §5214231658231671123423632234§.§implements set implements§ ? this.§in switch§[param1] : this.§5214231426231439123423632234§[param1];
      }
   }
}

