package §switch use finally§
{
   import §521423138772313890123423632234§.§5214235732235745123423632234§;
   import §5214235774235787123423632234§.§5214236557236570123423632234§;
   import §5214235774235787123423632234§.§super var dynamic§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleEventSupport;
   import alternativa.tanks.battle.events.PauseActivationEvent;
   import alternativa.tanks.battle.events.PauseDeactivationEvent;
   import alternativa.tanks.battle.events.TankAddedToBattleEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   
   public class §5214232354232367123423632234§ implements §throw each§, §if use default§, §521423117662311779123423632234§
   {
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §5214237923237936123423632234§:LocalTankInfoService;
      
      private var §5214233072233085123423632234§:§5214239411239424123423632234§;
      
      private var §521423120492312062123423632234§:§5214235732235745123423632234§;
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      private var §521423113802311393123423632234§:Boolean;
      
      private var §521423135102313523123423632234§:Boolean;
      
      public function §5214232354232367123423632234§(param1:§5214239411239424123423632234§, param2:§5214235732235745123423632234§)
      {
         super();
         this.§5214233072233085123423632234§ = param1;
         this.§521423120492312062123423632234§ = param2;
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§,this);
         this.§5214238269238282123423632234§.addEventHandler(PauseActivationEvent,this.§5214237165237178123423632234§);
         this.§5214238269238282123423632234§.addEventHandler(PauseDeactivationEvent,this.§throw set finally§);
         this.§5214238269238282123423632234§.addEventHandler(TankAddedToBattleEvent,this.§each for var§);
         this.§5214238269238282123423632234§.activateHandlers();
      }
      
      private function §5214237165237178123423632234§(param1:Object) : void
      {
         this.§521423113802311393123423632234§ = true;
      }
      
      private function §each for var§(param1:TankAddedToBattleEvent) : void
      {
         if(param1.tank == this.§5214233072233085123423632234§)
         {
            this.§521423135102313523123423632234§ = false;
         }
      }
      
      public function close() : void
      {
         this.§5214233072233085123423632234§ = null;
         this.§521423120492312062123423632234§ = null;
         this.§5214238269238282123423632234§.deactivateHandlers();
         this.§5214238269238282123423632234§ = null;
      }
      
      public function handleReadyToSpawn() : void
      {
         var _loc1_:§super var dynamic§ = §super var dynamic§(§5214237923237936123423632234§);
         _loc1_.§set set function§(§5214236557236570123423632234§.§521423104062310419123423632234§.§521423122212312234123423632234§);
         if(this.§521423113802311393123423632234§)
         {
            this.§521423135102313523123423632234§ = true;
         }
         else
         {
            this.§do final§();
         }
      }
      
      private function §do final§() : void
      {
         this.§521423135102313523123423632234§ = false;
         this.§521423120492312062123423632234§.§52142359723610123423632234§();
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238269238282123423632234§.handleBattleEvent(param1);
      }
      
      private function §throw set finally§(param1:Object) : void
      {
         this.§521423113802311393123423632234§ = false;
         if(this.§521423135102313523123423632234§)
         {
            this.§do final§();
         }
      }
   }
}

