package alternativa.tanks.models.controlpoints
{
   import §521423120812312094123423632234§.§521423104352310448123423632234§;
   import §521423120812312094123423632234§.§5214232128232141123423632234§;
   import §521423120812312094123423632234§.§5214234120234133123423632234§;
   import §521423120812312094123423632234§.§5214236852236865123423632234§;
   import §521423120812312094123423632234§.§extends catch native§;
   import §521423122592312272123423632234§.KeyPointHUDMarker;
   import §521423122592312272123423632234§.KeyPointHUDMarkers;
   import §5214234400234413123423632234§.ControlPointMessage;
   import §5214234400234413123423632234§.ControlPointMessages;
   import §5214238325238338123423632234§.§5214234586234599123423632234§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214239225239238123423632234§.TDMCommonTargetEvaluator;
   import §5214239225239238123423632234§.TDMHealingGunTargetEvaluator;
   import §5214239225239238123423632234§.TDMRailgunTargetEvaluator;
   import §5214239840239853123423632234§.AllBeamProperties;
   import §5214239840239853123423632234§.BeamEffects;
   import §5214239840239853123423632234§.DominationBeamEffect;
   import alternativa.math.Vector3;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.§521423102802310293123423632234§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleEventSupport;
   import alternativa.tanks.battle.events.BattleRestartEvent;
   import alternativa.tanks.battle.events.LocalTankActivationEvent;
   import alternativa.tanks.battle.events.StateCorrectionEvent;
   import alternativa.tanks.battle.events.TankAddedToBattleEvent;
   import alternativa.tanks.battle.events.TankLoadedEvent;
   import alternativa.tanks.battle.events.TankRemovedFromBattleEvent;
   import alternativa.tanks.battle.events.TankUnloadedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.models.battle.battlefield.BattleType;
   import alternativa.tanks.models.battle.gui.BattlefieldGUI;
   import alternativa.tanks.models.controlpoints.hud.KeyPoint;
   import alternativa.tanks.models.controlpoints.hud.KeyPointView;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import §catch switch final§.KeyPointsHUDPanel;
   import §class switch implements§.KeyPointSoundEffects;
   import §class switch implements§.Sounds;
   import §const false§.TankDeadEvent;
   import §extends var import§.§5214231658231671123423632234§;
   import flash.utils.Dictionary;
   import §include set return§.§521423137722313785123423632234§;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.model.§throw catch var§;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import §throw set function§.§class for get§;
   import §throw set function§.§try var case§;
   
   public class ControlPointsModel extends §extends catch native§ implements §5214236852236865123423632234§, §do set function§, §5214234168234181123423632234§, §throw catch var§, §dynamic catch while§, §if use default§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §521423107482310761123423632234§:EffectsMaterialRegistry;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §case const default§:BattleGUIService;
      
      public static var §return set get§:IBattleInfoService;
      
      private var §set package class§:Vector.<§521423102802310293123423632234§>;
      
      private var §if switch finally§:BattlefieldGUI;
      
      private var §5214232242232255123423632234§:§5214234586234599123423632234§;
      
      private var §native package var§:Dictionary = new Dictionary();
      
      private var §const use if§:Vector.<KeyPointTrigger>;
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      private var §521423135832313596123423632234§:KeyPointHUDMarkers;
      
      private var §5214233195233208123423632234§:KeyPointsHUDPanel;
      
      private var §implements package while§:§5214239411239424123423632234§;
      
      private var §521423105882310601123423632234§:Dictionary;
      
      private var gameObject:§521423120252312038123423632234§;
      
      private var §5214238890238903123423632234§:PointOccupationBuffer;
      
      private var §switch var get§:AllBeamProperties;
      
      private var §5214233034233047123423632234§:BeamEffects;
      
      private var §5214235405235418123423632234§:Sounds;
      
      private var §include catch catch§:Boolean;
      
      public function ControlPointsModel()
      {
         super();
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§,this);
         this.§5214238269238282123423632234§.addEventHandler(BattleRestartEvent,this.b50281ca);
         this.§5214238269238282123423632234§.addEventHandler(LocalTankActivationEvent,this.f447004d);
         this.§5214238269238282123423632234§.addEventHandler(TankLoadedEvent,this.onTankLoaded);
         this.§5214238269238282123423632234§.addEventHandler(TankUnloadedEvent,this.a47915e9);
         this.§5214238269238282123423632234§.addEventHandler(TankDeadEvent,this.f1196fd5);
         this.§5214238269238282123423632234§.addEventHandler(TankAddedToBattleEvent,this.b3b06d40);
         this.§5214238269238282123423632234§.addEventHandler(TankRemovedFromBattleEvent,this.e6d7f43c);
      }
      
      private static function d283b0fd(param1:§5214234120234133123423632234§) : §5214231658231671123423632234§
      {
         if(param1 == §5214234120234133123423632234§.§521423107532310766123423632234§)
         {
            return §5214231658231671123423632234§.§521423107532310766123423632234§;
         }
         if(param1 == §5214234120234133123423632234§.§implements set implements§)
         {
            return §5214231658231671123423632234§.§implements set implements§;
         }
         throw new Error();
      }
      
      public function pointCaptureStopped(param1:§5214231658231671123423632234§) : void
      {
         this.f1b642bd().playCaptureStopSound(param1);
      }
      
      private function c58fb968(param1:KeyPoint) : void
      {
         var _loc2_:§5214231658231671123423632234§ = d283b0fd(param1.getCaptureState());
         var _loc3_:ControlPointMessage = this.getCaptureMessage(_loc2_);
         var _loc4_:String = _loc3_.getMessage(param1.getName());
         this.§if switch finally§.showBattleMessage(_loc3_.color,_loc4_);
         this.§if switch finally§.showBattleLogMessage(_loc4_);
         this.f1b642bd().playCapturingSound(_loc2_);
      }
      
      public function objectLoaded() : void
      {
         var _temp_1:* = this;
         var _loc1_:Model = Model;
         _temp_1.gameObject = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
         this.§if switch finally§ = BattlefieldGUI(OSGi.getInstance().getService(BattlefieldGUI));
         this.§5214232242232255123423632234§ = §5214234586234599123423632234§(modelRegistry.getModel(Long.getLong(-1967712540,-458647807)));
         this.§const use if§ = new Vector.<KeyPointTrigger>();
         this.§521423105882310601123423632234§ = new Dictionary();
         this.§5214238269238282123423632234§.activateHandlers();
         this.§5214238890238903123423632234§ = new PointOccupationBuffer();
      }
      
      private function f447004d(param1:Object) : void
      {
         var _loc2_:LocalTankActivationEvent = LocalTankActivationEvent(param1);
         var _loc4_:§5214231658231671123423632234§ = _loc2_.tank.§5214238124238137123423632234§;
         for each(var _loc3_ in this.§set package class§)
         {
            _loc3_.setLocalTeamType(_loc4_);
         }
      }
      
      private function a6e70f7d(param1:§5214231658231671123423632234§) : ControlPointMessage
      {
         if(this.§implements package while§ == null)
         {
            return ControlPointMessages.getLostMessage(param1);
         }
         if(param1 == this.§implements package while§.§5214238124238137123423632234§)
         {
            return ControlPointMessages.§case const class§;
         }
         return ControlPointMessages.§const switch package§;
      }
      
      public function onLeavePointCapturingZone(param1:int) : void
      {
         this.§5214238269238282123423632234§.dispatchEvent(StateCorrectionEvent.§use var with§);
      }
      
      private function onTankLoaded(param1:TankLoadedEvent) : void
      {
         if(param1.isLocal)
         {
            this.§implements package while§ = param1.tank;
            this.§521423135832313596123423632234§.show();
            this.§5214233195233208123423632234§.visible = true;
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238269238282123423632234§.handleBattleEvent(param1);
      }
      
      public function getRicochetTargetEvaluator() : §try var case§
      {
         var _loc1_:§class for get§ = new §class for get§();
         this.§set package class§.push(_loc1_);
         return _loc1_;
      }
      
      public function stopBattle() : void
      {
         this.reset();
      }
      
      private function b40cd86a() : PointOccupationBuffer
      {
         return this.§5214238890238903123423632234§;
      }
      
      public function setPointState(param1:int, param2:§5214234120234133123423632234§) : void
      {
         var _loc3_:KeyPoint = this.§native package var§[param1];
         var _loc4_:§5214234120234133123423632234§ = _loc3_.getCaptureState();
         _loc3_.setCaptureState(param2);
         if(param2 == §5214234120234133123423632234§.§const use while§)
         {
            this.c51de8b6(_loc3_,_loc4_);
         }
         else
         {
            this.c58fb968(_loc3_);
         }
      }
      
      public function setPointProgress(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:KeyPoint = this.§native package var§[param1];
         _loc4_.setServerProgressData(param2,param3);
      }
      
      private function e56e6c15() : BeamEffects
      {
         return this.§5214233034233047123423632234§;
      }
      
      private function e4bf791(param1:int, param2:§5214239411239424123423632234§, param3:AllBeamProperties) : void
      {
         var _loc6_:DominationBeamEffect = DominationBeamEffect(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(DominationBeamEffect));
         var _loc4_:KeyPoint = this.§native package var§[param1];
         var _loc5_:Vector3 = new Vector3();
         _loc4_.readPosition(_loc5_);
         _loc6_.init(param2.§include switch break§().§static set catch§(),_loc5_,param3.getBeamProperties(param2.§5214238124238137123423632234§),§52142380523818123423632234§.getExcludedObjects3D());
         this.e56e6c15().addEffect(param2,_loc6_);
      }
      
      private function a47915e9(param1:TankUnloadedEvent) : void
      {
         if(param1.tank == this.§implements package while§)
         {
            this.§implements package while§ = null;
         }
      }
      
      private function reset() : void
      {
         this.c6d8b69b();
         this.b5f6eeb9();
      }
      
      public function tankEnteredPointZone(param1:int, param2:String) : void
      {
         var _loc3_:KeyPoint = this.§native package var§[param1];
         ++_loc3_.§5214236142236155123423632234§;
         var _loc4_:§5214239411239424123423632234§ = this.§521423105882310601123423632234§[param2];
         if(_loc4_ != null)
         {
            this.e4bf791(param1,_loc4_,this.§switch var get§);
         }
         else
         {
            this.b40cd86a().add(param2,param1);
         }
      }
      
      private function c51de8b6(param1:KeyPoint, param2:§5214234120234133123423632234§) : void
      {
         var _loc4_:§5214231658231671123423632234§ = d283b0fd(param2);
         var _loc5_:ControlPointMessage = this.a6e70f7d(_loc4_);
         var _loc3_:String = _loc5_.getMessage(param1.getName());
         this.§if switch finally§.showBattleMessage(_loc5_.color,_loc3_);
         this.§if switch finally§.showBattleLogMessage(_loc3_);
         this.f1b642bd().playNeutralizedSound(_loc4_);
      }
      
      public function tankLeftPointZone(param1:int, param2:String) : void
      {
         var _loc3_:KeyPoint = this.§native package var§[param1];
         --_loc3_.§5214236142236155123423632234§;
         var _loc4_:§5214239411239424123423632234§ = this.§521423105882310601123423632234§[param2];
         if(_loc4_ != null)
         {
            this.e56e6c15().removeEffect(_loc4_);
         }
         else
         {
            this.b40cd86a().remove(param2);
         }
      }
      
      private function f1b642bd() : Sounds
      {
         return this.§5214235405235418123423632234§;
      }
      
      private function b5f6eeb9() : void
      {
         var _loc1_:KeyPointTrigger = null;
         for each(_loc1_ in this.§const use if§)
         {
            _loc1_.reset();
         }
      }
      
      public function pointCaptureStarted(param1:§5214231658231671123423632234§) : void
      {
         this.f1b642bd().playCaptureStartSound(param1);
      }
      
      private function b50281ca(param1:Object) : void
      {
         this.reset();
      }
      
      public function onLeaveMineRestrictionZone(param1:int) : void
      {
         this.§5214232242232255123423632234§.lockItem(5,2,false);
      }
      
      private function c6d8b69b() : void
      {
         var _loc1_:KeyPoint = null;
         for each(_loc1_ in this.§native package var§)
         {
            _loc1_.reset();
         }
      }
      
      private function d18a00e4(param1:§521423104352310448123423632234§) : KeyPoint
      {
         var _loc2_:§5214232128232141123423632234§ = §switch var switch§();
         var _loc3_:KeyPointView = new KeyPointView(param1.§extends set case§,§52142380523818123423632234§.getBattleScene3D(),_loc2_.§try switch native§,§include catch catch§);
         var _loc6_:Vector3 = BattleUtils.getVector3(param1.§dynamic final§);
         var _loc4_:§521423137722313785123423632234§ = _loc2_.§5214235405235418123423632234§;
         var _loc7_:KeyPointSoundEffects = new KeyPointSoundEffects(§52142380523818123423632234§,_loc4_.§implements var var§.§set const switch§,_loc4_.§5214234909234922123423632234§.§set const switch§);
         var _loc5_:KeyPoint = new KeyPoint(param1.id,param1.§extends set case§,_loc6_,§52142380523818123423632234§,this,_loc7_,_loc3_);
         _loc5_.§5214236142236155123423632234§ = param1.§use package null§.length;
         _loc5_.setCaptureState(param1.§implements catch catch§);
         _loc5_.setServerProgressData(param1.score,param1.§function for extends§);
         return _loc5_;
      }
      
      public function objectUnloaded() : void
      {
         this.§set package class§ = null;
         §52142380523818123423632234§.setCommonTargetEvaluator(null);
         §52142380523818123423632234§.setHealingGunTargetEvaluator(null);
         §52142380523818123423632234§.setRailgunTargetEvaluator(null);
         §52142380523818123423632234§.setRicochetTargetEvaluator(null);
         this.§5214238269238282123423632234§.deactivateHandlers();
         this.§5214233195233208123423632234§.removeFromParent();
         this.§5214233195233208123423632234§ = null;
         this.§521423105882310601123423632234§ = null;
      }
      
      private function b3b06d40(param1:TankAddedToBattleEvent) : void
      {
         this.§521423105882310601123423632234§[param1.tank.§do for final§.userName] = param1.tank;
         var _loc2_:int = this.b40cd86a().takeTankPointId(param1.tank.§do for final§.userName);
         if(_loc2_ >= 0)
         {
            this.e4bf791(_loc2_,param1.tank,this.§switch var get§);
         }
      }
      
      public function forceUpdatePoint(param1:int) : void
      {
         var _loc2_:int = param1;
      }
      
      private function e6d7f43c(param1:TankRemovedFromBattleEvent) : void
      {
         var _loc2_:§5214239411239424123423632234§ = param1.tank;
         this.e56e6c15().removeEffect(_loc2_);
         delete this.§521423105882310601123423632234§[_loc2_];
      }
      
      private function f1196fd5(param1:TankDeadEvent) : void
      {
         this.e56e6c15().removeEffect(param1.§52142366723680123423632234§);
      }
      
      private function a3efe808() : void
      {
         var _loc3_:KeyPoint = null;
         var _loc5_:KeyPointTrigger = null;
         var _loc6_:PointOccupationBuffer = null;
         this.§521423135832313596123423632234§ = new KeyPointHUDMarkers(§52142380523818123423632234§.getBattleScene3D().§while set for§());
         §52142380523818123423632234§.getBattleScene3D().§5214231991232004123423632234§(this.§521423135832313596123423632234§,0);
         var _loc7_:Vector.<KeyPoint> = new Vector.<KeyPoint>();
         var _loc1_:§5214232128232141123423632234§ = §switch var switch§();
         for each(var _loc2_ in _loc1_.§do catch const§)
         {
            _loc3_ = this.d18a00e4(_loc2_);
            this.§native package var§[_loc2_.id] = _loc3_;
            §52142380523818123423632234§.getBattleRunner().addLogicUnit(_loc3_);
            _loc7_[_loc7_.length] = _loc3_;
            _loc5_ = new KeyPointTrigger(_loc3_.getPosition(),BattleUtils.toClientScale(_loc1_.§5214237206237219123423632234§),BattleUtils.toClientScale(_loc1_.§5214236347236360123423632234§),_loc2_.id,this,§52142380523818123423632234§.getBattleRunner().getCollisionDetector(),_loc1_.§return catch in§);
            this.§const use if§[§const use if§.length] = _loc5_;
            §52142380523818123423632234§.getBattleRunner().addTrigger(_loc5_);
            this.§521423135832313596123423632234§.addMarker(new KeyPointHUDMarker(_loc3_,§include catch catch§));
            _loc6_ = this.b40cd86a();
            for each(var _loc4_ in _loc2_.§use package null§)
            {
               _loc6_.add(_loc4_,_loc2_.id);
            }
         }
         this.§5214233195233208123423632234§ = new KeyPointsHUDPanel(_loc7_,§include catch catch§);
         this.§5214233195233208123423632234§.visible = false;
         §case const default§.getGuiContainer().addChild(this.§5214233195233208123423632234§);
         §52142380523818123423632234§.getBattleScene3D().§5214231991232004123423632234§(this.§5214233195233208123423632234§,0);
         this.§if switch finally§.addWidget(this.§5214233195233208123423632234§);
         if(§return set get§.isSpectatorMode())
         {
            this.§521423135832313596123423632234§.show();
            this.§5214233195233208123423632234§.visible = true;
         }
      }
      
      public function onEnterMineRestrictionZone(param1:int) : void
      {
         this.§5214232242232255123423632234§.lockItem(5,2,true);
      }
      
      public function getBattleType() : BattleType
      {
         return BattleType.CP;
      }
      
      public function onEnterPointCapturingZone(param1:int) : void
      {
         this.§5214238269238282123423632234§.dispatchEvent(StateCorrectionEvent.§use var with§);
      }
      
      private function c6ac4396() : void
      {
         this.§set package class§ = new Vector.<§521423102802310293123423632234§>(4);
         var _loc4_:TDMCommonTargetEvaluator = new TDMCommonTargetEvaluator();
         §52142380523818123423632234§.setCommonTargetEvaluator(_loc4_);
         this.§set package class§[0] = _loc4_;
         var _loc2_:TDMHealingGunTargetEvaluator = new TDMHealingGunTargetEvaluator();
         §52142380523818123423632234§.setHealingGunTargetEvaluator(_loc2_);
         this.§set package class§[1] = _loc2_;
         var _loc3_:TDMRailgunTargetEvaluator = new TDMRailgunTargetEvaluator();
         §52142380523818123423632234§.setRailgunTargetEvaluator(_loc3_);
         this.§set package class§[2] = _loc3_;
         var _loc1_:§class for get§ = new §class for get§();
         §52142380523818123423632234§.setRicochetTargetEvaluator(_loc1_);
         this.§set package class§[3] = _loc1_;
      }
      
      public function objectLoadedPost() : void
      {
         this.c6ac4396();
         var _loc1_:§5214232128232141123423632234§ = §switch var switch§();
         var _loc2_:§include catch with§ = _loc1_.§try switch native§.§5214238774238787123423632234§;
         var _loc3_:Long = _loc2_.§5214239618239631123423632234§.§5214231514231527123423632234§;
         §include catch catch§ = _loc3_.b34eb168 == 22;
         this.a3efe808();
         this.§switch var get§ = new AllBeamProperties(§521423107482310761123423632234§,_loc1_.§try switch native§);
         this.§5214233034233047123423632234§ = new BeamEffects();
         this.§5214235405235418123423632234§ = new Sounds(§52142380523818123423632234§.soundManager,_loc1_.§5214235405235418123423632234§);
      }
      
      private function getCaptureMessage(param1:§5214231658231671123423632234§) : ControlPointMessage
      {
         if(this.§implements package while§ == null)
         {
            return ControlPointMessages.getCaptureMessage(param1);
         }
         if(param1 == this.§implements package while§.§5214238124238137123423632234§)
         {
            return ControlPointMessages.§function switch set§;
         }
         return ControlPointMessages.§import for try§;
      }
   }
}

