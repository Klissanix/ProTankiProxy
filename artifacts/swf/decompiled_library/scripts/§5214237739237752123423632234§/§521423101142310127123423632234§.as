package §5214237739237752123423632234§
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §5214232389232402123423632234§.§5214233861233874123423632234§;
   import §5214233132233145123423632234§.§521423105452310558123423632234§;
   import §5214233132233145123423632234§.§extends catch switch§;
   import §5214235774235787123423632234§.§5214236557236570123423632234§;
   import §5214235774235787123423632234§.§super var dynamic§;
   import §5214237976237989123423632234§.§true const each§;
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
   import alternativa.tanks.battle.events.TankAddedToBattleEvent;
   import alternativa.tanks.battle.events.TankRemovedFromBattleEvent;
   import alternativa.tanks.battle.events.TankUnloadedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import §each var null§.§const throw§;
   import §final for with§.§5214238652238665123423632234§;
   import flash.utils.Dictionary;
   import §for const do§.§521423107282310741123423632234§;
   import §for const do§.§521423117342311747123423632234§;
   import §native set do§.§continue set case§;
   import §override catch default§.Long;
   import §set package each§.§5214237646237659123423632234§;
   import §set package each§.§finally set final§;
   import §set package in§.ClientObject;
   import §try set var§.§521423121332312146123423632234§;
   import §try set var§.§5214234602234615123423632234§;
   
   public class §521423101142310127123423632234§ extends §521423121332312146123423632234§ implements §5214234602234615123423632234§, §5214237250237263123423632234§, §521423112472311260123423632234§, §if use default§
   {
      
      private static const §continue package package§:Number = 1000000;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §with set include§:BattleEventDispatcher;
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      private var §5214237083237096123423632234§:Dictionary = new Dictionary();
      
      private var §521423105882310601123423632234§:Dictionary = new Dictionary();
      
      private var §521423109172310930123423632234§:§const const import§;
      
      public function §521423101142310127123423632234§()
      {
         super();
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§,this);
         this.§5214238269238282123423632234§.addEventHandler(TankAddedToBattleEvent,this.§each for var§);
         this.§5214238269238282123423632234§.addEventHandler(TankRemovedFromBattleEvent,this.§5214235377235390123423632234§);
         this.§5214238269238282123423632234§.addEventHandler(TankUnloadedEvent,this.§import catch break§);
         this.§5214238269238282123423632234§.activateHandlers();
      }
      
      private static function §5214238086238099123423632234§(param1:ClientObject) : §521423117342311747123423632234§
      {
         var _loc2_:§521423107282310741123423632234§ = §521423107282310741123423632234§(OSGi.getInstance().getService(§521423107282310741123423632234§));
         return _loc2_.§break var catch§(param1);
      }
      
      private static function §with const native§(param1:ClientObject) : §5214235412235425123423632234§
      {
         var _loc2_:§continue set case§ = §5214233861233874123423632234§.§5214239786239799123423632234§(param1);
         return _loc2_.§with const native§(param1);
      }
      
      private static function §return use const§(param1:ClientObject) : §5214237646237659123423632234§
      {
         var _loc2_:§finally set final§ = §finally set final§(modelRegistry.getModel(Long.getLong(-542156338,842183289)));
         return _loc2_.§5214231718231731123423632234§(param1);
      }
      
      public function §true var case§(param1:int, param2:Vector3, param3:§const throw§) : void
      {
         var _loc5_:§5214239411239424123423632234§ = param3.§521423122212312234123423632234§;
         var _loc4_:Vector3 = param2.clone();
         BattleUtils.globalToLocal(param3,_loc4_);
         this.§5214238269238282123423632234§.dispatchEvent(StateCorrectionEvent.§use var with§);
         §521423120492312062123423632234§.§5214237621237634123423632234§(param1,_loc5_.§5214233939233952123423632234§().id,_loc5_.§native catch class§,BattleUtils.getVector3d(param3.§implements catch catch§.§dynamic final§),BattleUtils.getVector3d(_loc4_),BattleUtils.getVector3d(param2));
      }
      
      private function §each for var§(param1:TankAddedToBattleEvent) : void
      {
         this.§521423105882310601123423632234§[param1.tank.§do for final§.§const const finally§] = param1.tank;
      }
      
      public function §case for use§(param1:ClientObject, param2:§52142320823221123423632234§) : void
      {
         var _loc3_:§521423121702312183123423632234§ = this.§5214237083237096123423632234§[param1];
         if(_loc3_ != null)
         {
            _loc3_.§5214237090237103123423632234§(BattleUtils.getVector3(param2));
         }
      }
      
      public function §521423132602313273123423632234§(param1:ClientObject) : void
      {
         var _loc2_:§5214239411239424123423632234§ = this.§521423105882310601123423632234§[param1];
         this.§521423109172310930123423632234§.§5214238646238659123423632234§(_loc2_.§break switch catch§().§implements catch catch§.§dynamic final§);
      }
      
      private function §5214235377235390123423632234§(param1:TankRemovedFromBattleEvent) : void
      {
         delete this.§521423105882310601123423632234§[param1.tank.§do for final§.§const const finally§];
      }
      
      public function §dynamic catch continue§(param1:ClientObject, param2:ClientObject, param3:§52142320823221123423632234§, param4:Number, param5:Boolean) : void
      {
         var _loc8_:§5214239411239424123423632234§ = null;
         var _loc6_:Vector3 = null;
         var _loc7_:§521423121702312183123423632234§ = this.§5214237083237096123423632234§[param1];
         if(_loc7_ != null)
         {
            _loc8_ = this.§521423105882310601123423632234§[param2];
            if(_loc8_ != null)
            {
               _loc6_ = BattleUtils.getVector3(param3);
               BattleUtils.localToGlobal(_loc8_.§break switch catch§(),_loc6_);
               _loc7_.§521423101892310202123423632234§(_loc8_,_loc6_,param4,param5);
            }
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238269238282123423632234§.handleBattleEvent(param1);
      }
      
      public function §5214238937238950123423632234§(param1:ClientObject) : §import catch null§
      {
         var _loc2_:§521423115072311520123423632234§ = new §521423115072311520123423632234§(param1);
         var _loc6_:§5214236557236570123423632234§ = §super var dynamic§(OSGi.getInstance().getService(LocalTankInfoService)).getTankData(param1);
         var _loc7_:§5214238652238665123423632234§ = §5214233861233874123423632234§.§521423135432313556123423632234§[_loc6_.§catch use continue§.id];
         var _loc4_:§extends catch switch§ = new §521423105452310558123423632234§(param1,_loc2_,1000000);
         var _loc5_:§521423117342311747123423632234§ = §5214238086238099123423632234§(_loc6_.§catch use continue§);
         var _loc3_:§const package override§ = new §const package override§(_loc5_.§5214231830231843123423632234§(),_loc5_.§import finally const§());
         this.§521423109172310930123423632234§ = new §const const import§(_loc7_.§var var set§.§521423128592312872123423632234§(),_loc3_,_loc4_,§return use const§(_loc6_.§catch use continue§),§with const native§(param1),this,new §true const each§());
         this.§5214237083237096123423632234§[param1] = this.§521423109172310930123423632234§;
         return this.§521423109172310930123423632234§;
      }
      
      public function §var const implements§(param1:int, param2:Vector3) : void
      {
         §521423120492312062123423632234§.§native switch final§(param1,BattleUtils.getVector3d(param2));
      }
      
      public function §521423125102312523123423632234§(param1:ClientObject) : void
      {
         var _loc2_:§521423121702312183123423632234§ = this.§5214237083237096123423632234§[param1];
         if(_loc2_ != null)
         {
            _loc2_.§5214237503237516123423632234§();
         }
      }
      
      public function §5214234994235007123423632234§(param1:int) : void
      {
         §521423120492312062123423632234§.§5214232176232189123423632234§(param1);
      }
      
      public function §finally use static§(param1:ClientObject) : §import catch null§
      {
         var _loc2_:§5214236557236570123423632234§ = §super var dynamic§(OSGi.getInstance().getService(LocalTankInfoService)).getTankData(param1);
         var _loc4_:§521423117342311747123423632234§ = §5214238086238099123423632234§(_loc2_.§catch use continue§);
         var _loc5_:§const package override§ = new §const package override§(_loc4_.§5214231830231843123423632234§(),_loc4_.§import finally const§());
         var _loc3_:§import catch null§ = new §521423121702312183123423632234§(_loc5_,§with const native§(param1));
         this.§5214237083237096123423632234§[param1] = _loc3_;
         return _loc3_;
      }
      
      private function §import catch break§(param1:TankUnloadedEvent) : void
      {
         var _loc2_:§import catch null§ = this.§5214237083237096123423632234§[param1.tank.§do for final§.§const const finally§];
         if(_loc2_ == this.§521423109172310930123423632234§)
         {
            this.§521423109172310930123423632234§ = null;
         }
         delete this.§5214237083237096123423632234§[param1.tank.§do for final§.§const const finally§];
      }
   }
}

