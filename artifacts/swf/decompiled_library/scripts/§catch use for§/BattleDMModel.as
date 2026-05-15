package §catch use for§
{
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.models.battle.battlefield.BattleType;
   import alternativa.tanks.models.battle.battlefield.§extends set null§;
   import §final var true§.§521423111112311124123423632234§;
   import §final var true§.§implements switch override§;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.§throw catch var§;
   import §throw set function§.§521423112822311295123423632234§;
   import §throw set function§.§try var case§;
   
   public class BattleDMModel extends §implements switch override§ implements §521423111112311124123423632234§, §5214234168234181123423632234§, §throw catch var§, §extends set null§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public function BattleDMModel()
      {
         super();
      }
      
      public function objectLoadedPost() : void
      {
         §52142380523818123423632234§.setCommonTargetEvaluator(new DMCommonTargetEvaluator());
         §52142380523818123423632234§.setHealingGunTargetEvaluator(new DMHealingGunTargetEvaluator());
         §52142380523818123423632234§.setRailgunTargetEvaluator(new DMRailgunTargetEvaluator());
         §52142380523818123423632234§.setRicochetTargetEvaluator(this.getRicochetTargetEvaluator());
      }
      
      public function getBattleType() : BattleType
      {
         return BattleType.DM;
      }
      
      public function getRicochetTargetEvaluator() : §try var case§
      {
         return new §521423112822311295123423632234§();
      }
      
      public function objectUnloaded() : void
      {
         §52142380523818123423632234§.setCommonTargetEvaluator(null);
         §52142380523818123423632234§.setHealingGunTargetEvaluator(null);
         §52142380523818123423632234§.setRailgunTargetEvaluator(null);
         §52142380523818123423632234§.setRicochetTargetEvaluator(null);
      }
   }
}

