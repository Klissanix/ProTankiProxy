package §extends override§
{
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleEventSupport;
   import alternativa.tanks.battle.events.TankLoadedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import alternativa.tanks.services.bonusregion.IBonusRegionService;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import §try catch var§.§5214234821234834123423632234§;
   import §try catch var§.§native use default§;
   import §try catch var§.§package use package§;
   
   public class BonusRegionsModel extends §native use default§ implements §package use package§, §do set function§, §5214234168234181123423632234§, §throw catch var§, §if use default§
   {
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §521423105142310527123423632234§:IBonusRegionService;
      
      public static var §5214237923237936123423632234§:LocalTankInfoService;
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      public function BonusRegionsModel()
      {
         super();
         this.init();
      }
      
      private static function onTankLoaded(param1:TankLoadedEvent) : void
      {
         if(param1.isLocal)
         {
            §521423105142310527123423632234§.setTank(param1.tank);
         }
      }
      
      public function showDropZone(param1:§5214234821234834123423632234§) : void
      {
         §521423105142310527123423632234§.addAndShowRegion(param1);
      }
      
      private function init() : void
      {
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§,this);
         this.§5214238269238282123423632234§.addEventHandler(TankLoadedEvent,onTankLoaded);
      }
      
      public function objectUnloaded() : void
      {
         if(!§return set get§.isSpectatorMode())
         {
            this.§5214238269238282123423632234§.deactivateHandlers();
         }
         §521423105142310527123423632234§.destroy();
      }
      
      public function objectLoadedPost() : void
      {
         var _loc1_:§5214239411239424123423632234§ = null;
         §521423105142310527123423632234§.addFewRegions(§switch var switch§().§5214231694231707123423632234§);
         if(§return set get§.isSpectatorMode())
         {
            §521423105142310527123423632234§.showAll();
         }
         else
         {
            this.§5214238269238282123423632234§.activateHandlers();
            _loc1_ = §5214237923237936123423632234§.getLocalTank();
            if(_loc1_ != null)
            {
               §521423105142310527123423632234§.setTank(_loc1_);
            }
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238269238282123423632234§.handleBattleEvent(param1);
      }
      
      public function objectLoaded() : void
      {
         §521423105142310527123423632234§.prepare(§switch var switch§().§5214236329236342123423632234§);
      }
      
      public function hideDropZone(param1:§5214234821234834123423632234§) : void
      {
         §521423105142310527123423632234§.hideAndRemoveRegion(param1);
      }
   }
}

