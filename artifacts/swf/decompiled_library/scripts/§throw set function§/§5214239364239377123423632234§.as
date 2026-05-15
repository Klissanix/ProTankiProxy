package §throw set function§
{
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
   import §const set null§.§521423136232313636123423632234§;
   import §const set null§.§5214232634232647123423632234§;
   import §const set null§.§catch switch catch§;
   import §each var null§.§const throw§;
   import flash.utils.Dictionary;
   import §set package in§.ClientObject;
   
   public class §5214239364239377123423632234§ extends §catch switch catch§ implements §5214232634232647123423632234§, §5214237250237263123423632234§, §final use class§, §if use default§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §with set include§:BattleEventDispatcher;
      
      private static const §5214233716233729123423632234§:Vector3 = new Vector3();
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      private var §5214237083237096123423632234§:Dictionary = new Dictionary();
      
      public function §5214239364239377123423632234§()
      {
         super();
         this.§5214233213233226123423632234§();
      }
      
      private static function §with const native§(param1:ClientObject) : §return switch native§
      {
         return §5214233861233874123423632234§.§5214239272239285123423632234§(param1);
      }
      
      private static function §implements var return§(param1:Number) : Number
      {
         return param1 * 32767;
      }
      
      private static function §break for break§(param1:Number) : Number
      {
         return param1 / 32767;
      }
      
      public function §else use var§(param1:int, param2:§const throw§, param3:Vector.<Vector3>) : void
      {
         var _loc4_:§5214239411239424123423632234§ = null;
         if(§52142380523818123423632234§.isBattleActive())
         {
            _loc4_ = param2.§521423122212312234123423632234§;
            §521423120492312062123423632234§.§5214232829232842123423632234§(§52142380523818123423632234§.getPhysicsTime(),_loc4_.§5214233939233952123423632234§().id,param1,BattleUtils.getVector3d(param2.§implements catch catch§.§dynamic final§),BattleUtils.isVector3dNaNgetVector3dVector(param3));
         }
      }
      
      public function §catch const super§(param1:int) : void
      {
         if(§52142380523818123423632234§.isBattleActive())
         {
            this.§5214238269238282123423632234§.dispatchEvent(StateCorrectionEvent.§use var with§);
            §521423120492312062123423632234§.§5214231819231832123423632234§(param1);
         }
      }
      
      public function §5214238937238950123423632234§(param1:ClientObject) : §import catch null§
      {
         var _loc2_:§5214236557236570123423632234§ = §super var dynamic§(OSGi.getInstance().getService(LocalTankInfoService)).getTankData(param1);
         var _loc3_:§import catch null§ = new §5214237592237605123423632234§(param1,_loc2_.§catch use continue§.getParams(§521423136232313636123423632234§) as §521423136232313636123423632234§,§with const native§(param1),this);
         this.§5214237083237096123423632234§[param1] = _loc3_;
         return _loc3_;
      }
      
      public function §52142325723270123423632234§(param1:ClientObject) : void
      {
         var _loc2_:§include set import§ = this.§5214237083237096123423632234§[param1];
         if(_loc2_ != null)
         {
            _loc2_.§class with§();
         }
      }
      
      public function §5214234994235007123423632234§(param1:int, param2:int, param3:Vector3) : void
      {
         if(§52142380523818123423632234§.isBattleActive())
         {
            this.§5214238269238282123423632234§.dispatchEvent(StateCorrectionEvent.§use var with§);
            §521423120492312062123423632234§.§5214232176232189123423632234§(param1,param2,§implements var return§(param3.x),§implements var return§(param3.y),§implements var return§(param3.z));
         }
      }
      
      public function §521423131632313176123423632234§(param1:ClientObject, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:§include set import§ = this.§5214237083237096123423632234§[param1];
         if(_loc5_ != null)
         {
            §5214233716233729123423632234§.reset(§break for break§(param2),§break for break§(param3),§break for break§(param4)).normalize();
            _loc5_.§521423125102312523123423632234§(§5214233716233729123423632234§);
         }
      }
      
      public function objectLoaded(param1:ClientObject) : void
      {
         var _loc2_:§521423136232313636123423632234§ = §switch var switch§();
         _loc2_.§in use each§ = BattleUtils.toClientScale(_loc2_.§in use each§);
         _loc2_.§5214231890231903123423632234§ = BattleUtils.toClientScale(_loc2_.§5214231890231903123423632234§);
         _loc2_.§5214231670231683123423632234§ = BattleUtils.toClientScale(_loc2_.§5214231670231683123423632234§);
         param1.putParams(§521423136232313636123423632234§,_loc2_);
      }
      
      private function §5214233213233226123423632234§() : void
      {
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§,this);
         this.§5214238269238282123423632234§.addEventHandler(TankUnloadedEvent,this.§import catch break§);
         this.§5214238269238282123423632234§.activateHandlers();
      }
      
      private function §import catch break§(param1:TankUnloadedEvent) : void
      {
         delete this.§5214237083237096123423632234§[param1.tank.§5214233939233952123423632234§()];
      }
      
      public function §finally use static§(param1:ClientObject) : §import catch null§
      {
         var _loc2_:§5214236557236570123423632234§ = §super var dynamic§(OSGi.getInstance().getService(LocalTankInfoService)).getTankData(param1);
         var _loc3_:§import catch null§ = new §include set import§(param1,_loc2_.§catch use continue§.getParams(§521423136232313636123423632234§) as §521423136232313636123423632234§,§with const native§(param1));
         this.§5214237083237096123423632234§[param1] = _loc3_;
         return _loc3_;
      }
      
      public function §521423136472313660123423632234§(param1:int, param2:Vector.<Vector3>) : void
      {
         if(§52142380523818123423632234§.isBattleActive())
         {
            §521423120492312062123423632234§.§throw const final§(§52142380523818123423632234§.getPhysicsTime(),param1,BattleUtils.isVector3dNaNgetVector3dVector(param2));
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238269238282123423632234§.handleBattleEvent(param1);
      }
   }
}

