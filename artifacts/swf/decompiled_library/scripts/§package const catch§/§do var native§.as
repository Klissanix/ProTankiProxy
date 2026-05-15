package §package const catch§
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §5214232389232402123423632234§.§5214233861233874123423632234§;
   import §5214233132233145123423632234§.§521423105452310558123423632234§;
   import §5214233132233145123423632234§.§extends catch switch§;
   import §5214234427234440123423632234§.§5214232489232502123423632234§;
   import §5214235774235787123423632234§.§5214236557236570123423632234§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238361238374123423632234§.§import catch null§;
   import §5214238868238881123423632234§.§521423115072311520123423632234§;
   import §5214238868238881123423632234§.§5214237250237263123423632234§;
   import §5214238868238881123423632234§.§const package override§;
   import alternativa.math.Vector3;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleEventSupport;
   import alternativa.tanks.battle.events.StateCorrectionEvent;
   import alternativa.tanks.battle.events.TankUnloadedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import §class for static§.§521423101042310117123423632234§;
   import §class for static§.§5214237274237287123423632234§;
   import §each var null§.§const throw§;
   import §final for with§.§5214238652238665123423632234§;
   import flash.utils.Dictionary;
   import §for const do§.§521423107282310741123423632234§;
   import §for const do§.§521423117342311747123423632234§;
   import §in var use§.§521423114252311438123423632234§;
   import §override catch default§.Long;
   import §set package each§.§5214237646237659123423632234§;
   import §set package each§.§finally set final§;
   import §set package in§.ClientObject;
   
   public class §do var native§ extends §5214237274237287123423632234§ implements §521423101042310117123423632234§, §5214237250237263123423632234§, §if use default§, §5214231810231823123423632234§
   {
      
      private static const §default switch default§:Number = 1000000;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §5214237923237936123423632234§:LocalTankInfoService;
      
      private var §5214237083237096123423632234§:Dictionary = new Dictionary();
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      public function §do var native§()
      {
         super();
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§,this);
         this.§5214238269238282123423632234§.addEventHandler(TankUnloadedEvent,this.§import catch break§);
         this.§5214238269238282123423632234§.activateHandlers();
      }
      
      private static function §return use const§(param1:ClientObject) : §5214237646237659123423632234§
      {
         var _loc2_:§finally set final§ = §finally set final§(modelRegistry.getModel(Long.getLong(-542156338,842183289)));
         return _loc2_.§5214231718231731123423632234§(param1);
      }
      
      private static function §with const native§(param1:ClientObject) : §52142336923382123423632234§
      {
         var _loc2_:§finally set default§ = §5214233861233874123423632234§.§521423127052312718123423632234§(param1);
         return _loc2_.§with const native§(param1);
      }
      
      private static function §break var catch§(param1:ClientObject) : §521423117342311747123423632234§
      {
         var _loc2_:§521423107282310741123423632234§ = §521423107282310741123423632234§(OSGi.getInstance().getService(§521423107282310741123423632234§));
         return _loc2_.§break var catch§(param1);
      }
      
      public function §true var case§(param1:int, param2:Vector3, param3:§const throw§) : void
      {
         var _loc9_:Vector3 = param2.clone();
         BattleUtils.globalToLocal(param3,_loc9_);
         var _loc6_:§52142320823221123423632234§ = BattleUtils.getVector3d(_loc9_);
         var _loc7_:§5214239411239424123423632234§ = param3.§521423122212312234123423632234§;
         var _loc4_:int = _loc7_.§native catch class§;
         var _loc5_:§52142320823221123423632234§ = BattleUtils.getVector3d(param3.§implements catch catch§.§dynamic final§);
         this.§5214238269238282123423632234§.dispatchEvent(StateCorrectionEvent.§use var with§);
         var _loc8_:ClientObject = _loc7_.§5214233939233952123423632234§();
         §521423120492312062123423632234§.§in const super§(param1,_loc6_,_loc8_ == null ? null : _loc8_.id,_loc4_,_loc5_,BattleUtils.getVector3d(param2));
      }
      
      public function §var const implements§(param1:int, param2:Vector3) : void
      {
         this.§5214238269238282123423632234§.dispatchEvent(StateCorrectionEvent.§use var with§);
         §521423120492312062123423632234§.§true switch class§(param1,BattleUtils.getVector3d(param2));
      }
      
      public function §5214238937238950123423632234§(param1:ClientObject) : §import catch null§
      {
         var _loc3_:§521423115072311520123423632234§ = new §521423115072311520123423632234§(param1);
         var _loc10_:§5214236557236570123423632234§ = §5214237923237936123423632234§.getTankData(param1);
         var _loc11_:§5214238652238665123423632234§ = §5214233861233874123423632234§.§521423135432313556123423632234§[_loc10_.§catch use continue§.id];
         var _loc8_:§521423117342311747123423632234§ = §break var catch§(_loc10_.§catch use continue§);
         var _loc9_:§5214237646237659123423632234§ = §return use const§(_loc10_.§catch use continue§);
         var _loc6_:§5214232489232502123423632234§ = new §5214232489232502123423632234§();
         _loc6_.putInitParams(§521423114252311438123423632234§(_loc10_.§catch use continue§.getParams(§521423114252311438123423632234§)));
         _loc6_.objectLoaded(_loc10_.§catch use continue§);
         var _loc7_:§52142336923382123423632234§ = §with const native§(param1);
         var _loc5_:§extends catch switch§ = new §521423105452310558123423632234§(param1,_loc3_,1000000);
         var _loc4_:§const package override§ = new §const package override§(_loc8_.§5214231830231843123423632234§(),_loc8_.§import finally const§());
         var _loc2_:§import catch null§ = new §521423121952312208123423632234§(_loc11_.§var var set§.§521423128592312872123423632234§(),_loc4_,_loc9_,_loc5_,_loc6_,_loc7_,this);
         this.§5214237083237096123423632234§[param1] = _loc2_;
         return _loc2_;
      }
      
      public function §dynamic catch continue§(param1:ClientObject, param2:ClientObject, param3:§52142320823221123423632234§) : void
      {
         var _loc5_:§5214239411239424123423632234§ = null;
         var _loc6_:Vector3 = null;
         var _loc4_:§return use catch§ = this.§5214237083237096123423632234§[param1];
         if(_loc4_ != null)
         {
            _loc5_ = §5214237923237936123423632234§.getTankData(param2).§521423122212312234123423632234§;
            if(_loc5_ != null && _loc5_.§break switch catch§() != null)
            {
               _loc6_ = BattleUtils.getVector3(param3);
               BattleUtils.localToGlobal(_loc5_.§break switch catch§(),_loc6_);
               _loc4_.§dynamic catch continue§(_loc5_,_loc6_);
            }
         }
      }
      
      public function §case for use§(param1:ClientObject, param2:§52142320823221123423632234§) : void
      {
         var _loc3_:§return use catch§ = this.§5214237083237096123423632234§[param1];
         if(_loc3_ != null)
         {
            _loc3_.§case for use§(BattleUtils.getVector3(param2));
         }
      }
      
      public function §521423125102312523123423632234§(param1:ClientObject) : void
      {
         var _loc2_:§return use catch§ = this.§5214237083237096123423632234§[param1];
         if(_loc2_ != null)
         {
            _loc2_.§521423125102312523123423632234§();
         }
      }
      
      private function §import catch break§(param1:TankUnloadedEvent) : void
      {
         delete this.§5214237083237096123423632234§[param1.tank.§5214233939233952123423632234§()];
      }
      
      public function §finally use static§(param1:ClientObject) : §import catch null§
      {
         var _loc2_:§5214236557236570123423632234§ = §5214237923237936123423632234§.getTankData(param1);
         var _loc7_:§521423117342311747123423632234§ = §break var catch§(_loc2_.§catch use continue§);
         var _loc8_:§5214237646237659123423632234§ = §return use const§(_loc2_.§catch use continue§);
         var _loc5_:§52142336923382123423632234§ = §with const native§(param1);
         var _loc6_:§5214232489232502123423632234§ = new §5214232489232502123423632234§();
         _loc6_.putInitParams(§521423114252311438123423632234§(_loc2_.§catch use continue§.getParams(§521423114252311438123423632234§)));
         _loc6_.objectLoaded(_loc2_.§catch use continue§);
         var _loc3_:§const package override§ = new §const package override§(_loc7_.§5214231830231843123423632234§(),_loc7_.§import finally const§());
         var _loc4_:§import catch null§ = new §return use catch§(_loc3_,_loc8_,_loc6_,_loc5_);
         this.§5214237083237096123423632234§[param1] = _loc4_;
         return _loc4_;
      }
      
      public function §5214234994235007123423632234§(param1:int) : void
      {
         §521423120492312062123423632234§.§5214234974234987123423632234§(param1);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238269238282123423632234§.handleBattleEvent(param1);
      }
   }
}

