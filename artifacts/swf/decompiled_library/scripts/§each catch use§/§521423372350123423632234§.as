package §each catch use§
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §5214232389232402123423632234§.§5214233861233874123423632234§;
   import §5214235774235787123423632234§.§5214236557236570123423632234§;
   import §5214235774235787123423632234§.§super var dynamic§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238361238374123423632234§.§import catch null§;
   import §5214238868238881123423632234§.§5214237250237263123423632234§;
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
   import §each var null§.§const throw§;
   import flash.utils.Dictionary;
   import §set package in§.ClientObject;
   import §use catch static§.§521423113182311331123423632234§;
   import §use catch static§.§5214233108233121123423632234§;
   import §use catch static§.§5214238584238597123423632234§;
   
   public class §521423372350123423632234§ extends §5214238584238597123423632234§ implements §5214233108233121123423632234§, §5214237250237263123423632234§, §implements use native§, §if use default§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §with set include§:BattleEventDispatcher;
      
      private var §5214237083237096123423632234§:Dictionary = new Dictionary();
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      public function §521423372350123423632234§()
      {
         super();
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§,this);
         this.§5214238269238282123423632234§.addEventHandler(TankUnloadedEvent,this.§import catch break§);
         this.§5214238269238282123423632234§.activateHandlers();
      }
      
      private static function §with const native§(param1:ClientObject) : §static for false§
      {
         return §5214233861233874123423632234§.§class set with§(param1);
      }
      
      public function §catch const super§(param1:int, param2:int) : void
      {
         if(§52142380523818123423632234§.isBattleActive())
         {
            this.§5214238269238282123423632234§.dispatchEvent(StateCorrectionEvent.§use var with§);
            §521423120492312062123423632234§.§5214231819231832123423632234§(param1,param2);
         }
      }
      
      public function §finally use static§(param1:ClientObject) : §import catch null§
      {
         var _loc2_:§5214236557236570123423632234§ = §super var dynamic§(OSGi.getInstance().getService(LocalTankInfoService)).getTankData(param1);
         var _loc3_:§import catch null§ = new §5214234866234879123423632234§(param1,_loc2_.§catch use continue§.getParams(§521423113182311331123423632234§) as §521423113182311331123423632234§,§with const native§(param1));
         this.§5214237083237096123423632234§[param1] = _loc3_;
         return _loc3_;
      }
      
      public function §52142325723270123423632234§(param1:ClientObject, param2:int) : void
      {
         var _loc3_:§5214234866234879123423632234§ = null;
         if(§52142380523818123423632234§.isBattleActive())
         {
            _loc3_ = this.§5214237083237096123423632234§[param1];
            if(_loc3_ != null)
            {
               _loc3_.§52142325723270123423632234§(param2);
            }
         }
      }
      
      public function §5214238937238950123423632234§(param1:ClientObject) : §import catch null§
      {
         var _loc2_:§5214236557236570123423632234§ = §super var dynamic§(OSGi.getInstance().getService(LocalTankInfoService)).getTankData(param1);
         var _loc3_:§import catch null§ = new §continue switch continue§(param1,_loc2_.§catch use continue§,_loc2_.§catch use continue§.getParams(§521423113182311331123423632234§) as §521423113182311331123423632234§,§with const native§(param1),this);
         this.§5214237083237096123423632234§[param1] = _loc3_;
         return _loc3_;
      }
      
      public function §5214234994235007123423632234§(param1:int, param2:int, param3:int, param4:Vector3) : void
      {
         if(§52142380523818123423632234§.isBattleActive())
         {
            this.§5214238269238282123423632234§.dispatchEvent(StateCorrectionEvent.§use var with§);
            §521423120492312062123423632234§.§5214232176232189123423632234§(param1,param3,param2,BattleUtils.getVector3d(param4));
         }
      }
      
      private function §import catch break§(param1:TankUnloadedEvent) : void
      {
         delete this.§5214237083237096123423632234§[param1.tank.§5214233939233952123423632234§()];
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238269238282123423632234§.handleBattleEvent(param1);
      }
      
      public function §521423131632313176123423632234§(param1:ClientObject, param2:int, param3:§52142320823221123423632234§) : void
      {
         var _loc4_:§5214234866234879123423632234§ = null;
         if(§52142380523818123423632234§.isBattleActive())
         {
            _loc4_ = this.§5214237083237096123423632234§[param1];
            if(_loc4_ != null)
            {
               _loc4_.§521423131632313176123423632234§(param2,BattleUtils.getVector3(param3));
            }
         }
      }
      
      public function §else use var§(param1:int, param2:§const throw§, param3:Vector3) : void
      {
         var _loc6_:§5214239411239424123423632234§ = null;
         var _loc4_:ClientObject = null;
         var _loc5_:§52142320823221123423632234§ = null;
         if(§52142380523818123423632234§.isBattleActive())
         {
            _loc6_ = param2.§521423122212312234123423632234§;
            _loc4_ = _loc6_.§5214233939233952123423632234§();
            _loc5_ = BattleUtils.getVector3d(param2.§implements catch catch§.§dynamic final§);
            §521423120492312062123423632234§.§5214232829232842123423632234§(§52142380523818123423632234§.getPhysicsTime(),param1,_loc4_.id,_loc5_,BattleUtils.getVector3d(param3));
         }
      }
      
      public function §521423136472313660123423632234§(param1:int, param2:Vector3) : void
      {
         if(§52142380523818123423632234§.isBattleActive())
         {
            §521423120492312062123423632234§.§throw const final§(§52142380523818123423632234§.getPhysicsTime(),param1,BattleUtils.getVector3d(param2));
         }
      }
      
      public function objectLoaded(param1:ClientObject) : void
      {
         var _loc2_:§521423113182311331123423632234§ = §switch var switch§();
         _loc2_.§extends catch function§ = BattleUtils.toClientScale(_loc2_.§extends catch function§);
         _loc2_.§5214236311236324123423632234§ = BattleUtils.toClientScale(_loc2_.§5214236311236324123423632234§);
         _loc2_.§in use each§ = BattleUtils.toClientScale(_loc2_.§in use each§);
         param1.putParams(§521423113182311331123423632234§,_loc2_);
      }
   }
}

