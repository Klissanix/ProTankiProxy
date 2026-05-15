package alternativa.tanks.models.tank.pause
{
   import §5214235774235787123423632234§.§5214236549236562123423632234§;
   import §5214235774235787123423632234§.§5214236557236570123423632234§;
   import §5214235774235787123423632234§.§super var dynamic§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import §else package static§.§5214236189236202123423632234§;
   import §false switch true§.§5214236044236057123423632234§;
   import §false switch true§.§super var in§;
   import §static var set§.§case§;
   
   public class TankPauseModel extends §5214236044236057123423632234§ implements §super var in§, ITankPause, §5214236189236202123423632234§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §5214237923237936123423632234§:LocalTankInfoService;
      
      private var §use catch package§:§5214236549236562123423632234§ = new §5214236549236562123423632234§();
      
      private var §final catch with§:§case§;
      
      public function TankPauseModel()
      {
         super();
      }
      
      public function enablePause() : void
      {
         §52142380523818123423632234§.setLocalTankPaused(true);
         var _loc1_:§super var dynamic§ = §super var dynamic§(§5214237923237936123423632234§);
         _loc1_.§return use function§(§5214236557236570123423632234§.§521423104062310419123423632234§.§const const finally§,8);
         _loc1_.§5214237440237453123423632234§(§5214236557236570123423632234§.§521423104062310419123423632234§.§const const finally§).§get catch import§(8,true);
      }
      
      public function getPauseSupport() : §case§
      {
         return this.§final catch with§;
      }
      
      public function localTankLoaded() : void
      {
         var _loc1_:Boolean = §52142380523818123423632234§.isLocalTankPaused();
         this.§final catch with§ = new §case§(§5214236557236570123423632234§.§521423104062310419123423632234§.§521423122212312234123423632234§,this.§use catch package§,_loc1_);
      }
      
      public function resetIdleKickTime() : void
      {
         this.§use catch package§.reset(§52142380523818123423632234§.getIdleKickPeriod());
      }
      
      public function disablePause() : void
      {
         §52142380523818123423632234§.setLocalTankPaused(false);
         var _loc1_:§super var dynamic§ = §super var dynamic§(§5214237923237936123423632234§);
         _loc1_.§super set static§(§5214236557236570123423632234§.§521423104062310419123423632234§.§const const finally§,8);
         _loc1_.§5214237440237453123423632234§(§5214236557236570123423632234§.§521423104062310419123423632234§.§const const finally§).§52142390823921123423632234§(8);
         this.resetIdleKickTime();
         §521423120492312062123423632234§.§throw get§();
      }
   }
}

