package alternativa.tanks.models.battle.battlefield
{
   import §521423107652310778123423632234§.§521423129242312937123423632234§;
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §5214231366231379123423632234§.§521423130562313069123423632234§;
   import §5214231816231829123423632234§.§5214231575231588123423632234§;
   import §5214231816231829123423632234§.§const package for§;
   import §5214231816231829123423632234§.§switch set const§;
   import §5214231817231830123423632234§.§static switch var§;
   import §5214233087233100123423632234§.§5214237988238001123423632234§;
   import §5214234285234298123423632234§.§default set set§;
   import §5214235774235787123423632234§.§5214233345233358123423632234§;
   import §5214236338236351123423632234§.§5214239451239464123423632234§;
   import §5214237930237943123423632234§.§throw var§;
   import §5214237976237989123423632234§.§5214231455231468123423632234§;
   import §5214237976237989123423632234§.§catch use native§;
   import §5214237976237989123423632234§.§for const native§;
   import §5214237976237989123423632234§.§for switch default§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238735238748123423632234§.ErrorForm;
   import alternativa.math.Vector3;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.osgi.service.logging.§dynamic use try§;
   import alternativa.tanks.battle.BattleRunner;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.battle.BattleView;
   import alternativa.tanks.battle.SpeedHackChecker;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleEventSupport;
   import alternativa.tanks.battle.events.BattleFinishEvent;
   import alternativa.tanks.battle.events.BattleRestartEvent;
   import alternativa.tanks.battle.events.MainLoopExecutionErrorEvent;
   import alternativa.tanks.battle.events.MapBuildingCompleteEvent;
   import alternativa.tanks.battle.events.SpeedHackEvent;
   import alternativa.tanks.battle.events.StateCorrectionEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.bg.IBackgroundService;
   import alternativa.tanks.service.fps.FPSService;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.settings.SettingEnum;
   import alternativa.tanks.service.settings.SettingsServiceEvent;
   import alternativa.tanks.service.settings.keybinding.GameActionEnum;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.tanks.services.battleinput.BattleInputLockType;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.tanks.services.battlereadiness.BattleReadinessService;
   import alternativa.tanks.services.colortransform.ColorTransformService;
   import alternativa.tanks.services.colortransform.§false use do§;
   import alternativa.tanks.services.lightingeffects.ILightingEffectsService;
   import alternativa.tanks.services.mipmapping.MipMappingService;
   import alternativa.tanks.services.targeting.TargetingInputManager;
   import alternativa.tanks.services.targeting.TargetingModeService;
   import alternativa.tanks.services.validator.DataValidationErrorEvent;
   import alternativa.tanks.services.validator.DataValidator;
   import alternativa.tanks.sfx.§5214232204232217123423632234§;
   import alternativa.tanks.sfx.Sound3D;
   import alternativa.tanks.sfx.Sound3DEffect;
   import alternativa.tanks.sfx.§break use null§;
   import alternativa.utils.DebugPanel;
   import alternativa.utils.TextureMaterialRegistry;
   import §class package function§.§for switch import§;
   import §class set do§.§52142318623199123423632234§;
   import §class set do§.BonusCache;
   import §dynamic catch true§.§for switch class§;
   import §dynamic const static§.§521423107902310803123423632234§;
   import §else switch default§.§5214235140235153123423632234§;
   import §else switch default§.§5214236289236302123423632234§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.geom.ColorTransform;
   import flash.media.Sound;
   import flash.system.Capabilities;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import §for use else§.§get catch finally§;
   import §for use else§.§static catch catch§;
   import §function use super§.§extends set for§;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.model.§throw catch var§;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import scpacker.networking.Network;
   import §static var set§.§52142317523188123423632234§;
   import §throw set function§.§try var case§;
   import §use switch use§.BonusCommonModel;
   import §var const get§.§each const set§;
   import §var set var§.§dynamic catch use§;
   import §var set var§.§false switch class§;
   import §var set var§.§if for try§;
   
   public class BattlefieldModel extends §static catch catch§ implements BattleService, §get catch finally§, §do set function§, §throw catch var§, §if use default§
   {
      
      private static const §5214235065235078123423632234§:int = 3000;
      
      private static const §override catch return§:int = 5000;
      
      public static var §extends switch null§:§5214239451239464123423632234§;
      
      public static var §5214234621234634123423632234§:LogService;
      
      public static var display:IDisplay;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §5214231316231329123423632234§:DataValidator;
      
      public static var §5214232551232564123423632234§:ISettingsService;
      
      public static var §5214238741238754123423632234§:IBackgroundService;
      
      public static var §5214235037235050123423632234§:MipMappingService;
      
      public static var §5214235868235881123423632234§:TextureMaterialRegistry;
      
      public static var §5214238990239003123423632234§:ColorTransformService;
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §5214234439234452123423632234§:BattleReadinessService;
      
      public static var §521423131302313143123423632234§:BattleInputService;
      
      public static var §case const default§:BattleGUIService;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §5214239937239950123423632234§:ILightingEffectsService;
      
      public static var §false var continue§:TargetingInputManager;
      
      public static var §5214235930235943123423632234§:TargetingModeService;
      
      public static var §extends package override§:KeysBindingService;
      
      public static var §for continue§:ResourceRegistry;
      
      private static const §5214233216233229123423632234§:String = "battle";
      
      private static const §521423110022311015123423632234§:String = "battle2server";
      
      private const objectPool:§throw var§ = new §throw var§();
      
      private var §5214238078238091123423632234§:BattleView;
      
      private var §521423122272312240123423632234§:DebugPanel;
      
      private const §5214237013237026123423632234§:TimeStatistics = new TimeStatistics();
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      private var battleActive:Boolean;
      
      private var ambientSound:AmbientSound;
      
      private var §catch package while§:SpeedHackChecker;
      
      public var §native catch try§:§5214236232236245123423632234§;
      
      private var §function package include§:StageFrameRateController;
      
      private var §break package throw§:§5214231455231468123423632234§;
      
      private const §static use final§:§for switch default§ = new §default set set§();
      
      private var §throw package const§:§catch use native§;
      
      private var §5214233405233418123423632234§:§for const native§;
      
      private var §override set true§:§try var case§;
      
      private var §5214234317234330123423632234§:§dynamic catch use§;
      
      private var §5214238147238160123423632234§:§if for try§;
      
      private var §5214236494236507123423632234§:§each const set§;
      
      private var §5214235338235351123423632234§:Vector3 = new Vector3();
      
      private var §while use with§:Vector3 = new Vector3();
      
      private var §521423112332311246123423632234§:Object3DRevolver;
      
      private var §with package continue§:BattleRunner;
      
      private var §5214234521234534123423632234§:BattleData;
      
      private var §521423131402313153123423632234§:§5214231575231588123423632234§;
      
      private var battleScene:§5214235140235153123423632234§;
      
      private var §get set with§:§dynamic use try§;
      
      private var §5214233030233043123423632234§:§dynamic use try§;
      
      private var §5214238077238090123423632234§:SpectatorUserTitleRenderer;
      
      private var §throw catch while§:FollowCameraControllerLocker;
      
      private var §5214233338233351123423632234§:SpectatorFogToggleSupport;
      
      private var §5214234326234339123423632234§:§52142317523188123423632234§;
      
      private var §5214232577232590123423632234§:§5214233345233358123423632234§;
      
      private var §in package set§:Boolean;
      
      private var §5214231603231616123423632234§:Boolean;
      
      private var mapId:Long;
      
      private var spectator:Boolean;
      
      private var §true const null§:PerformanceDisplay;
      
      private var §5214234793234806123423632234§:§521423117662311779123423632234§;
      
      private var §521423119242311937123423632234§:int;
      
      private var §521423140132314026123423632234§:Network = Network(OSGi.getInstance().getService(Network));
      
      public function BattlefieldModel()
      {
         super();
         this.§5214233030233043123423632234§ = §5214234621234634123423632234§.getLogger("battle2server");
         this.§get set with§ = §5214234621234634123423632234§.getLogger("battle");
         this.c5045c8();
      }
      
      private static function e400ab3f() : void
      {
         var _loc1_:ErrorForm = new ErrorForm(§5214236363236376123423632234§);
         _loc1_.setErrorText(§5214236363236376123423632234§.getText("ERROR_FATAL"));
         _loc1_.setSupportUrl(§5214236363236376123423632234§.getText("FATAL_ERROR_WIKI_LINK"));
         display.contentLayer.addChild(_loc1_);
      }
      
      public function addGraphicEffect(param1:§5214232204232217123423632234§) : void
      {
         this.battleScene.§each var use§(param1);
      }
      
      public function initBattleCore() : void
      {
         OSGi.getInstance().registerService(BattleService,this);
         this.battleScene = new §5214235140235153123423632234§(display.stage,§5214235868235881123423632234§);
         var _loc1_:§5214231575231588123423632234§ = this.§521423131402313153123423632234§;
         var _loc2_:§switch set const§ = _loc1_.§continue set import§;
         var _loc3_:§const package for§ = _loc1_.§class catch null§;
         this.battleScene.§case switch final§(_loc2_.color,_loc2_.§set package const§,_loc2_.§true switch extends§,_loc2_.§521423118592311872123423632234§);
         this.battleScene.§5214231269231282123423632234§(_loc3_.§const while§,_loc3_.§5214233090233103123423632234§,_loc3_.§52142317323186123423632234§,_loc3_.§do for set§);
         this.§5214238078238091123423632234§ = new BattleView();
         this.§with package continue§ = new BattleRunner(_loc1_.§break catch else§,this.§5214234521234534123423632234§.tankExplosionSound,§with set include§);
         this.battleScene.§each set default§(new §5214236289236302123423632234§(this.§with package continue§.getCollisionDetector()));
         this.battleScene.§5214231117231130123423632234§(this,_loc1_.§5214235952235965123423632234§);
         this.battleScene.§final for continue§(_loc1_.§final final§);
         this.§function package include§ = new StageFrameRateController(display.stage,this.§with package continue§,this.§5214237013237026123423632234§,§5214232551232564123423632234§.refreshRate);
         this.§function package include§.setAdaptiveFrameRate(§5214232551232564123423632234§.adaptiveFPS);
         this.§5214238078238091123423632234§.addToScreen(§case const default§.getViewportContainer());
         this.§521423122272312240123423632234§ = new DebugPanel();
         this.§521423122272312240123423632234§.visible = false;
         display.stage.addChild(this.§521423122272312240123423632234§);
         this.§5214234317234330123423632234§ = new §dynamic catch use§();
         this.§5214238147238160123423632234§ = new §if for try§(3000);
         this.§5214234326234339123423632234§ = new §52142317523188123423632234§();
         this.§5214232577232590123423632234§ = new §5214233345233358123423632234§();
      }
      
      public function addSound3DEffect(param1:§break use null§) : void
      {
         this.§with package continue§.getSoundManager().addEffect(param1);
      }
      
      private function c6179eb4(param1:Error) : void
      {
         this.§5214233030233043123423632234§.error(param1.message);
         this.removeListeners();
         e400ab3f();
         §with set include§.dispatchEvent(new MainLoopExecutionErrorEvent());
      }
      
      private function d947e2d(param1:Number, param2:ColorTransform) : void
      {
         §5214239937239950123423632234§.setBonusLighting(param1,param2,param2);
      }
      
      public function addBonus(param1:§521423120252312038123423632234§, param2:Long, param3:§52142320823221123423632234§) : void
      {
         this.b43be5bb(param1,param2,param3,0);
      }
      
      public function setFollowCamera() : void
      {
         this.setCameraController(this.§5214234317234330123423632234§);
      }
      
      public function battleFinish() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:§52142318623199123423632234§ = null;
         this.battleActive = false;
         §with set include§.dispatchEvent(new BattleFinishEvent());
         for(_loc1_ in this.§native catch try§.bonuses)
         {
            _loc2_ = this.§native catch try§.bonuses[_loc1_];
            _loc2_.remove();
            delete this.§native catch try§.bonuses[_loc1_];
         }
      }
      
      public function activateFollowCamera() : void
      {
         this.§5214234317234330123423632234§.§extends for include§();
         this.§5214234317234330123423632234§.§5214239604239617123423632234§();
      }
      
      private function c153900a() : void
      {
         var _loc1_:Boolean = false;
         if(§5214234439234452123423632234§.isBattleReady())
         {
            _loc1_ = §5214232551232564123423632234§.muteSound;
            this.§with package continue§.getSoundManager().setMute(_loc1_);
            this.ambientSound.play(!_loc1_ && §5214232551232564123423632234§.bgSound);
         }
      }
      
      public function onTankCollision(param1:§52142318623199123423632234§) : void
      {
         §with set include§.dispatchEvent(StateCorrectionEvent.§use var with§);
         this.e5f061ee(§for switch import§.idToStr(param1.bonusId));
      }
      
      public function battleStart() : void
      {
         this.battleActive = true;
      }
      
      private function addListeners() : void
      {
         display.stage.addEventListener("enterFrame",this.e1d1903);
         display.stage.addEventListener("keyDown",this.a48ef3d9);
         display.stage.addEventListener("keyUp",this.a48ef3d9);
         display.stage.addEventListener("keyDown",this.onKeyDown);
      }
      
      public function initBonuses(param1:Array) : void
      {
         for each(var _loc2_ in param1)
         {
            this.b43be5bb(_loc2_.object,_loc2_.id,_loc2_.position,_loc2_.timeFromAppearing);
         }
      }
      
      public function recalculateFollowCamera() : void
      {
         this.§5214234317234330123423632234§.§if switch native§();
      }
      
      public function isBattleActive() : Boolean
      {
         return this.battleActive;
      }
      
      public function objectLoaded() : void
      {
         this.a74c0faa();
         if(this.spectator)
         {
            this.initSpectatorMode();
            §false var continue§.init();
         }
         else
         {
            this.c71faf4c();
         }
         §return set get§.battleLoad();
      }
      
      private function a74c0faa() : void
      {
         this.battleScene.§include package super§(§5214232551232564123423632234§.graphicsAutoQuality,this.mapId.toString());
         if(!§5214232551232564123423632234§.graphicsAutoQuality)
         {
            this.battleScene.§521423862399123423632234§(§5214232551232564123423632234§.fog);
            this.battleScene.§5214232359232372123423632234§(§5214232551232564123423632234§.shadows);
            this.battleScene.§5214234590234603123423632234§(§5214232551232564123423632234§.dynamicShadows);
            this.battleScene.§5214231578231591123423632234§(§5214232551232564123423632234§.softParticles);
            this.battleScene.§5214232747232760123423632234§(§5214232551232564123423632234§.dust);
            this.battleScene.§continue for in§(§5214232551232564123423632234§.ssao);
            this.battleScene.§final use package§(§5214232551232564123423632234§.dynamicLighting);
            this.battleScene.§const for do§(§5214232551232564123423632234§.antialiasing);
         }
         this.battleScene.§default package return§(§5214232551232564123423632234§.alternatePaintBlend);
         this.battleScene.§each switch break§(true);
         §5214235037235050123423632234§.setMipMapping(§5214232551232564123423632234§.mipMapping);
      }
      
      private function b32e1033(param1:§521423120252312038123423632234§) : void
      {
         this.d277a369();
         var _loc2_:§521423129242312937123423632234§ = this.e158a7f6(param1);
         var _loc4_:§static switch var§ = _loc2_.getMapResource();
         var _loc6_:§static switch var§;
         this.mapId = (_loc6_ = _loc4_).§5214239618239631123423632234§.id;
         var _loc5_:XML = XML(_loc4_.§each set catch§.toString());
         var _loc3_:§5214239451239464123423632234§ = new §5214239451239464123423632234§(§5214235868235881123423632234§,_loc4_.§function switch if§);
         _loc3_.§521423105162310529123423632234§(_loc5_,this.b3dd4334);
         §extends switch null§ = _loc3_;
      }
      
      private function removeListeners() : void
      {
         display.stage.removeEventListener("enterFrame",this.e1d1903);
         display.stage.removeEventListener("keyDown",this.a48ef3d9);
         display.stage.removeEventListener("keyUp",this.a48ef3d9);
         display.stage.removeEventListener("keyDown",this.onKeyDown);
      }
      
      public function getBattleScene3D() : §5214235140235153123423632234§
      {
         return this.battleScene;
      }
      
      public function setCommonTargetEvaluator(param1:§5214231455231468123423632234§) : void
      {
         this.§break package throw§ = param1;
      }
      
      public function setHealingGunTargetEvaluator(param1:§catch use native§) : void
      {
         this.§throw package const§ = param1;
      }
      
      public function playSound(param1:§5214237988238001123423632234§, param2:String, param3:int, param4:int) : void
      {
         var _loc5_:Sound3D = null;
         var _loc6_:Vector3 = new Vector3();
         if(_loc6_)
         {
            _loc5_ = Sound3D.create(param1.§set const switch§,1,param3,param4);
            this.§with package continue§.getSoundManager().addEffect(Sound3DEffect.create(_loc6_,_loc5_,0));
         }
         else
         {
            this.§with package continue§.getSoundManager().playSound(param1.§set const switch§);
         }
      }
      
      public function getExcludedObjects3D() : Dictionary
      {
         return this.battleScene.§package package each§();
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:GameActionEnum = null;
         if(!§521423131302313143123423632234§.isInputLocked())
         {
            _loc2_ = §extends package override§.getBindingAction(param1.keyCode,param1.ctrlKey);
            if(_loc2_ == GameActionEnum.OPEN_GARAGE)
            {
               §continue for final§.showGarage();
            }
         }
      }
      
      public function getBattleRunner() : BattleRunner
      {
         return this.§with package continue§;
      }
      
      public function getTankExplosionSound() : Sound
      {
         return this.§5214234521234534123423632234§.tankExplosionSound;
      }
      
      public function getConicAreaTargetValidator() : §for switch default§
      {
         return this.§static use final§;
      }
      
      public function initObject(param1:Boolean, param2:§5214231575231588123423632234§, param3:int, param4:int, param5:String, param6:Boolean, param7:§521423120252312038123423632234§, param8:Object) : void
      {
         this.battleActive = param1;
         this.§521423131402313153123423632234§ = param2;
         this.spectator = param6;
         this.§native catch try§ = new §5214236232236245123423632234§();
         §return set get§.setInBattle(true);
         §return set get§.reArmorEnabled = param8.reArmorEnabled;
         §return set get§.spectator = param6;
         §return set get§.setCurrentSelectionBattle(param8.battleId,param8.minRank,param8.maxRank);
         §return set get§.currentBattleId = param8.battleId;
         §5214238990239003123423632234§.setColorTransform(§false use do§.calculateColorTransform(param2.§class catch null§,0.5));
         this.a576ef04(param8.ambientSoundId,param3,param4,param8.tankExplosionSound);
         this.initBattleCore();
         this.b32e1033(param7);
         this.b38752b6();
         this.d947e2d(param8.bonusLightIntensity,param8.bonusColorAdjust);
         this.§with package continue§.getSoundManager().setMute(true);
         this.ambientSound = new AmbientSound(this.§5214234521234534123423632234§.ambientSound,this.§with package continue§.getSoundManager());
         this.a516ef39();
         this.§catch package while§ = new SpeedHackChecker(§with set include§);
         this.§5214237013237026123423632234§.reset();
         this.addListeners();
         this.objectLoaded();
      }
      
      public function getObjectPool() : §throw var§
      {
         return this.objectPool;
      }
      
      public function getTankActivationDelay() : int
      {
         return this.§5214234521234534123423632234§.getTankActivationDelay();
      }
      
      public function bonusTaken(param1:Long) : void
      {
         if(this.§native catch try§ == null)
         {
            return;
         }
         var _loc2_:§52142318623199123423632234§ = this.§native catch try§.bonuses[param1];
         if(_loc2_ != null)
         {
            delete this.§native catch try§.bonuses[param1];
            _loc2_.pickup();
         }
      }
      
      public function setCameraTarget(param1:§5214239411239424123423632234§) : void
      {
         this.§5214234317234330123423632234§.§do const get§(param1);
      }
      
      private function c4536239(param1:Vector3, param2:Vector3, param3:§521423130562313069123423632234§) : void
      {
         param1.x = param3.§false for use§;
         param1.y = param3.§use set return§;
         param1.z = param3.§const for get§ + 5000;
         param2.x = (param3.§false for use§ + param3.§case package class§) / 2;
         param2.y = (param3.§use set return§ + param3.§switch const final§) / 2;
         param2.z = param3.§super const if§;
      }
      
      public function setRicochetTargetEvaluator(param1:§try var case§) : void
      {
         this.§override set true§ = param1;
      }
      
      public function getBattleView() : BattleView
      {
         return this.§5214238078238091123423632234§;
      }
      
      private function settingsAccepted(param1:SettingsServiceEvent) : void
      {
         switch(param1.getSetting())
         {
            case SettingEnum.§521423126132312626123423632234§:
               battleScene.§521423111192311132123423632234§(§5214232551232564123423632234§.uiScale2x ? 2 : 1);
               return;
            case SettingEnum.§521423123062312319123423632234§:
               this.§function package include§.setAdaptiveFrameRate(§5214232551232564123423632234§.adaptiveFPS);
               return;
            case SettingEnum.§for static§:
               this.battleScene.§5214233530233543123423632234§(§5214232551232564123423632234§.showSkyBox);
               return;
            case SettingEnum.§5214235542235555123423632234§:
               this.§function package include§.setMaxFrameRate(§5214232551232564123423632234§.refreshRate);
               return;
            default:
               this.c153900a();
               this.a74c0faa();
               return;
         }
      }
      
      private function a48ef3d9(param1:KeyboardEvent) : void
      {
         if(!§521423131302313143123423632234§.isInputLocked())
         {
            if(param1.type == "keyDown")
            {
            }
         }
      }
      
      public function battleRestart() : void
      {
         this.battleActive = true;
         §with set include§.dispatchEvent(new BattleRestartEvent());
      }
      
      public function getIdleKickPeriod() : int
      {
         return this.§5214234521234534123423632234§.getIdleKickPeriod();
      }
      
      private function tick() : void
      {
         var _loc1_:int = getTimer();
         §5214237013237026123423632234§.update(_loc1_);
         §with package continue§.tick(_loc1_);
         §5214231316231329123423632234§.tick();
         §false var continue§.tick();
         §5214235930235943123423632234§.tick();
      }
      
      private function b3dd4334() : void
      {
         this.§5214234317234330123423632234§.§521423106122310625123423632234§(§extends switch null§.§5214231310231323123423632234§());
         this.a985cb2();
         §5214234439234452123423632234§.unlockMap();
         §with set include§.dispatchEvent(new MapBuildingCompleteEvent());
      }
      
      public function isLocalTankFirstLoad() : Boolean
      {
         return !this.§in package set§;
      }
      
      public function getHealingGunTargetEvaluator() : §catch use native§
      {
         return this.§throw package const§;
      }
      
      public function setRailgunTargetEvaluator(param1:§for const native§) : void
      {
         this.§5214233405233418123423632234§ = param1;
      }
      
      public function setBillboardImage(param1:BitmapData) : void
      {
         this.battleScene.§5214235815235828123423632234§(param1);
      }
      
      public function getRailgunTargetEvaluator() : §for const native§
      {
         return this.§5214233405233418123423632234§;
      }
      
      private function e5f061ee(param1:String) : void
      {
         §521423140132314026123423632234§.send(new §extends set for§(param1));
      }
      
      private function c5045c8() : void
      {
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§,this);
         this.§5214238269238282123423632234§.addEventHandler(SpeedHackEvent,this.d26cc834);
         this.§5214238269238282123423632234§.addEventHandler(DataValidationErrorEvent,this.f36885bf);
         this.§5214238269238282123423632234§.activateHandlers();
      }
      
      public function setFollowCameraTargetParams(param1:Vector3, param2:Vector3) : void
      {
         this.§5214234317234330123423632234§.§var function§(param1,param2);
      }
      
      public function isLocalTankPaused() : Boolean
      {
         return this.§5214231603231616123423632234§;
      }
      
      public function resetFollowCamera() : void
      {
         if(this.battleScene != null)
         {
            this.battleScene.§while set for§().rotationY = 0;
            this.§5214234317234330123423632234§.§5214239604239617123423632234§();
         }
      }
      
      private function c71faf4c() : void
      {
         §false var continue§.init();
         §5214235930235943123423632234§.init();
      }
      
      public function getPhysicsTime() : int
      {
         return this.§with package continue§.getPhysicsTime();
      }
      
      public function setLocalTankLoaded() : void
      {
         this.§in package set§ = true;
      }
      
      private function a274d0c6(param1:int) : void
      {
         var _loc2_:int = param1;
         §521423120492312062123423632234§.§5214231542231555123423632234§(_loc2_);
      }
      
      public function getCommonTargetEvaluator() : §5214231455231468123423632234§
      {
         return this.§break package throw§;
      }
      
      public function setCameraController(param1:§false switch class§) : void
      {
         this.battleScene.§get var for§(param1);
      }
      
      private function a516ef39() : void
      {
         §5214232551232564123423632234§.addEventListener("SettingsServiceEvent.SETTINGS_CHANGED",this.settingsAccepted);
      }
      
      public function removeBonus(param1:Long) : void
      {
         if(this.§native catch try§ == null)
         {
            return;
         }
         var _loc2_:§52142318623199123423632234§ = this.§native catch try§.bonuses[param1];
         if(_loc2_ != null)
         {
            delete this.§native catch try§.bonuses[param1];
            _loc2_.remove();
         }
      }
      
      private function e1d1903(param1:Event) : void
      {
         var _loc2_:§for switch class§ = null;
         try
         {
            tick();
         }
         catch(e:Error)
         {
            _loc2_ = §for switch class§(OSGi.getInstance().getService(§for switch class§));
            _loc2_.§5214231352231365123423632234§("[BattlefieldModel] #/battle/" + §return set get§.currentBattleId + "\n" + "Minutes-" + int(getTimer() / 1000 / 60) + "\n" + e.getStackTrace() + "\n" + "user:" + IUserPropertiesService(OSGi.getInstance().getService(IUserPropertiesService)).userName + " " + IUserPropertiesService(OSGi.getInstance().getService(IUserPropertiesService)).rank + "\n" + "vers:" + Capabilities.version + "\nfpr: " + display.stage.stageWidth + "x" + display.stage.stageHeight + "@" + FPSService(OSGi.getInstance().getService(FPSService)).getFps().toFixed(1) + "\n" + "\n\n");
            c6179eb4(e);
         }
      }
      
      private function a576ef04(param1:Long, param2:int, param3:int, param4:Long) : void
      {
         this.§5214234521234534123423632234§ = new BattleData();
         this.§5214234521234534123423632234§.setTankActivationDelay(param3);
         this.§5214234521234534123423632234§.setIdleKickPeriod(param2);
         var _loc5_:§5214237988238001123423632234§ = §5214237988238001123423632234§(§for continue§.getResource(param1));
         this.§5214234521234534123423632234§.ambientSound = _loc5_.§set const switch§;
         _loc5_ = §5214237988238001123423632234§(§for continue§.getResource(param4));
         this.§5214234521234534123423632234§.tankExplosionSound = _loc5_.§set const switch§;
      }
      
      public function getRicochetTargetEvaluator() : §try var case§
      {
         return this.§override set true§;
      }
      
      public function objectUnloaded() : void
      {
         var _loc1_:§52142318623199123423632234§ = null;
         if(this.spectator)
         {
            this.§throw catch while§.close();
            this.§5214233338233351123423632234§.close();
            this.§5214238077238090123423632234§.close();
         }
         this.battleActive = false;
         §with set include§.dispatchEvent(new BattleUnloadEvent());
         this.§function package include§.restoreStageParams();
         this.§function package include§ = null;
         this.a4b739b2();
         this.battleScene.§each package super§();
         this.§with package continue§.shutdown();
         this.removeListeners();
         this.§5214232577232590123423632234§.close();
         this.§5214232577232590123423632234§ = null;
         this.§5214234326234339123423632234§.close();
         this.§5214234326234339123423632234§ = null;
         this.§5214238078238091123423632234§.removeFromScreen();
         this.§5214238078238091123423632234§.destroy();
         this.§5214238078238091123423632234§ = null;
         this.battleScene.§while set for§().view.clear();
         this.battleScene.§while set for§().view = null;
         this.setCameraTarget(null);
         this.§521423122272312240123423632234§ = null;
         for each(_loc1_ in this.§native catch try§.bonuses)
         {
            _loc1_.remove();
            _loc1_ = null;
         }
         §5214238741238754123423632234§.drawBg();
         §return set get§.setInBattle(false);
         §return set get§.resetCurrentBattle();
         §5214231316231329123423632234§.removeAllValidators();
         §5214238990239003123423632234§.setColorTransform(null);
         OSGi.getInstance().unregisterService(BattleService);
         §5214234439234452123423632234§.reset();
         §case const default§.hide();
         this.§5214234317234330123423632234§.close();
         this.§5214234317234330123423632234§ = null;
         this.§5214238147238160123423632234§.close();
         this.§5214238147238160123423632234§ = null;
         if(this.§5214236494236507123423632234§)
         {
            this.§5214236494236507123423632234§.close();
            this.§5214236494236507123423632234§ = null;
         }
         BonusCache.clear();
         if(!this.spectator)
         {
            §5214235930235943123423632234§.close();
         }
         §false var continue§.close();
         this.spectator = false;
         this.§native catch try§ = null;
         this.§in package set§ = false;
         this.getObjectPool().§false set final§();
         this.§5214231603231616123423632234§ = false;
         §extends switch null§.close();
         §extends switch null§ = null;
      }
      
      public function unlockBattle() : void
      {
         §case const default§.show();
         this.battleScene.§52142359123604123423632234§();
         this.c153900a();
      }
      
      public function setLocalTankPaused(param1:Boolean) : void
      {
         this.§5214231603231616123423632234§ = param1;
      }
      
      public function lockFollowCamera() : void
      {
         this.§5214234317234330123423632234§.§521423134202313433123423632234§(true);
      }
      
      public function initSpectatorMode() : void
      {
         var _loc1_:Vector3 = new Vector3();
         var _loc2_:Vector3 = new Vector3();
         this.c4536239(_loc1_,_loc2_,§extends switch null§.§set var throw§());
         this.battleScene.§while set for§().§5214233236233249123423632234§(_loc1_);
         this.battleScene.§while set for§().lookAt(_loc2_.x,_loc2_.y,_loc2_.z);
         this.§5214236494236507123423632234§ = new §each const set§();
         this.§5214236494236507123423632234§.§extends for include§();
         this.setCameraController(this.§5214236494236507123423632234§);
         var _loc3_:SpectatorUserTitleRenderer = new SpectatorUserTitleRenderer();
         this.§5214238077238090123423632234§ = _loc3_;
         this.battleScene.§const set static§(_loc3_);
         §5214234439234452123423632234§.unlockUser();
         this.§throw catch while§ = new FollowCameraControllerLocker(this.§5214236494236507123423632234§);
         this.§5214233338233351123423632234§ = new SpectatorFogToggleSupport();
         if(!§continue for final§.isSwitchInProgress())
         {
            §521423131302313143123423632234§.unlock(BattleInputLockType.§final package false§);
         }
      }
      
      private function a985cb2() : void
      {
         ++display.stage.frameRate;
         --display.stage.frameRate;
      }
      
      private function a4b739b2() : void
      {
         §5214232551232564123423632234§.removeEventListener("SettingsServiceEvent.SETTINGS_CHANGED",this.settingsAccepted);
      }
      
      private function e158a7f6(param1:§521423120252312038123423632234§) : §521423129242312937123423632234§
      {
         return §521423129242312937123423632234§(param1.adapt(§521423129242312937123423632234§));
      }
      
      public function activateFlyCamera(param1:Vector3, param2:Vector3) : void
      {
         if(this.battleScene.§for switch switch§() != this.§5214234317234330123423632234§)
         {
            return;
         }
         this.§5214234317234330123423632234§.§5214234355234368123423632234§();
         this.§5214234317234330123423632234§.§override use default§(param1,param2,this.§5214235338235351123423632234§,this.§while use with§);
         this.§5214238147238160123423632234§.init(this.§5214235338235351123423632234§,this.§while use with§);
         this.battleScene.§get var for§(this.§5214238147238160123423632234§);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238269238282123423632234§.handleBattleEvent(param1);
      }
      
      private function d26cc834(param1:SpeedHackEvent) : void
      {
         §521423120492312062123423632234§.§override for class§(Vector.<int>(param1.§dynamic const with§));
      }
      
      public function unlockFollowCamera() : void
      {
         this.§5214234317234330123423632234§.§521423134202313433123423632234§(false);
      }
      
      public function getRespawnDurationMs() : int
      {
         return this.§5214238147238160123423632234§.§dynamic for null§;
      }
      
      public function get soundManager() : §521423107902310803123423632234§
      {
         return this.§with package continue§.getSoundManager();
      }
      
      private function d277a369() : void
      {
         var _loc2_:Number = this.§521423131402313153123423632234§.§5214236344236357123423632234§;
         var _loc1_:BattleSkyBox = new BattleSkyBox(this.§521423131402313153123423632234§.§5214233586233599123423632234§,_loc2_);
         this.battleScene.§try switch set§(_loc1_);
         this.battleScene.§5214233530233543123423632234§(§5214232551232564123423632234§.showSkyBox);
         var _loc3_:Vector3 = BattleUtils.getVector3(this.§521423131402313153123423632234§.§dynamic use static§);
         this.§521423112332311246123423632234§ = new Object3DRevolver(_loc1_,_loc3_,_loc2_);
         this.battleScene.§5214231991232004123423632234§(this.§521423112332311246123423632234§,0);
      }
      
      private function b38752b6() : void
      {
         var _loc1_:ColorTransform = new ColorTransform(1,0.75,0.6,1,-16,-66,-66);
         var _loc2_:ColorTransform = new ColorTransform(1,1,1.5,1,20,80,100,0);
         §5214238990239003123423632234§.setColorAdjust(_loc1_,_loc2_,_loc1_,_loc2_);
      }
      
      private function f36885bf(param1:DataValidationErrorEvent) : void
      {
         this.a274d0c6(param1.type);
      }
      
      private function b43be5bb(param1:§521423120252312038123423632234§, param2:Long, param3:§52142320823221123423632234§, param4:int) : §52142318623199123423632234§
      {
         var _loc6_:§52142318623199123423632234§ = null;
         var _temp_1:* = Model;
         var _loc8_:§521423120252312038123423632234§ = param1;
         var _loc7_:Model = _temp_1;
         platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
         platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc8_;
         var _loc5_:BonusCommonModel = BonusCommonModel(modelRegistry.getModel(Long.getLong(-872532560,127564657)));
         _loc6_ = _loc5_.getBonus(param2);
         _loc6_.spawn(BattleUtils.getVector3(param3),param4,150,false,this.onTankCollision);
         this.§native catch try§.bonuses[_loc6_.bonusId] = _loc6_;
         Model.popObject();
         return _loc6_;
      }
   }
}

