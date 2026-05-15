package §static var set§
{
   import §5214235774235787123423632234§.§super var dynamic§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleEventSupport;
   import alternativa.tanks.battle.events.BattleFinishEvent;
   import alternativa.tanks.battle.events.StateCorrectionEvent;
   import alternativa.tanks.battle.events.TankAddedToBattleEvent;
   import alternativa.tanks.battle.events.TankRemovedFromBattleEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   
   public class §package for native§ implements §521423117662311779123423632234§, §if use default§
   {
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §5214237923237936123423632234§:LocalTankInfoService;
      
      private var §5214233072233085123423632234§:§5214239411239424123423632234§;
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      public function §package for native§(param1:§5214239411239424123423632234§)
      {
         super();
         this.§5214233072233085123423632234§ = param1;
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§,this);
         this.§5214238269238282123423632234§.addEventHandler(TankAddedToBattleEvent,this.§each for var§);
         this.§5214238269238282123423632234§.addEventHandler(TankRemovedFromBattleEvent,this.§5214235377235390123423632234§);
         this.§5214238269238282123423632234§.addEventHandler(StateCorrectionEvent,this.§5214237686237699123423632234§);
         this.§5214238269238282123423632234§.addEventHandler(BattleFinishEvent,this.§null set§);
         this.§5214238269238282123423632234§.activateHandlers();
      }
      
      private function §5214235377235390123423632234§(param1:TankRemovedFromBattleEvent) : void
      {
         var _loc2_:§super var dynamic§ = null;
         if(param1.tank == this.§5214233072233085123423632234§)
         {
            _loc2_ = §super var dynamic§(§5214237923237936123423632234§);
            _loc2_.§5214233827233840123423632234§();
         }
      }
      
      private function §5214237686237699123423632234§(param1:StateCorrectionEvent) : void
      {
         var _loc2_:§super var dynamic§ = §super var dynamic§(§5214237923237936123423632234§);
         _loc2_.§super catch in§(param1.mandatory);
      }
      
      private function §each for var§(param1:TankAddedToBattleEvent) : void
      {
         var _loc2_:§super var dynamic§ = null;
         if(param1.tank == this.§5214233072233085123423632234§)
         {
            _loc2_ = §super var dynamic§(§5214237923237936123423632234§);
            _loc2_.§5214237972237985123423632234§();
         }
      }
      
      public function close() : void
      {
         this.§5214238269238282123423632234§.deactivateHandlers();
         this.§5214238269238282123423632234§ = null;
         this.§5214233072233085123423632234§ = null;
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         if(§5214238269238282123423632234§)
         {
            this.§5214238269238282123423632234§.handleBattleEvent(param1);
         }
      }
      
      private function §null set§(param1:Object) : void
      {
         var _loc2_:§super var dynamic§ = §super var dynamic§(§5214237923237936123423632234§);
         _loc2_.§5214233827233840123423632234§();
      }
   }
}

