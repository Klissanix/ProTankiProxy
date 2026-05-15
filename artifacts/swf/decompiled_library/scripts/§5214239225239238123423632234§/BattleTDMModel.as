package §5214239225239238123423632234§
{
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.tanks.battle.§521423102802310293123423632234§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.LocalTankActivationEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.models.battle.battlefield.BattleType;
   import alternativa.tanks.models.battle.battlefield.§extends set null§;
   import §extends var import§.§5214231658231671123423632234§;
   import §for switch extends§.§5214238461238474123423632234§;
   import §for switch extends§.§null set while§;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.§throw catch var§;
   import §throw set function§.§class for get§;
   import §throw set function§.§try var case§;
   
   public class BattleTDMModel extends §null set while§ implements §5214238461238474123423632234§, §5214234168234181123423632234§, §throw catch var§, §if use default§, §extends set null§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §with set include§:BattleEventDispatcher;
      
      private var §set package class§:Vector.<§521423102802310293123423632234§>;
      
      public function BattleTDMModel()
      {
         super();
      }
      
      public function objectLoadedPost() : void
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
         §with set include§.addBattleEventListener(LocalTankActivationEvent,this);
      }
      
      public function getBattleType() : BattleType
      {
         return BattleType.TDM;
      }
      
      public function getRicochetTargetEvaluator() : §try var case§
      {
         var _loc1_:§class for get§ = new §class for get§();
         this.§set package class§.push(_loc1_);
         return _loc1_;
      }
      
      public function objectUnloaded() : void
      {
         this.§set package class§ = null;
         §52142380523818123423632234§.setCommonTargetEvaluator(null);
         §52142380523818123423632234§.setHealingGunTargetEvaluator(null);
         §52142380523818123423632234§.setRailgunTargetEvaluator(null);
         §52142380523818123423632234§.setRicochetTargetEvaluator(null);
         §with set include§.removeBattleEventListener(LocalTankActivationEvent,this);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         var _loc2_:LocalTankActivationEvent = LocalTankActivationEvent(param1);
         var _loc4_:§5214239411239424123423632234§ = _loc2_.tank;
         var _loc5_:§5214231658231671123423632234§ = _loc4_.§5214238124238137123423632234§;
         for each(var _loc3_ in this.§set package class§)
         {
            _loc3_.setLocalTeamType(_loc5_);
         }
      }
   }
}

