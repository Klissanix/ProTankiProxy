package §5214236339236352123423632234§
{
   import §5214235774235787123423632234§.§super var dynamic§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§dynamic switch break§;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleEventSupport;
   import alternativa.tanks.battle.events.BattleFinishEvent;
   import alternativa.tanks.battle.events.TankAddedToBattleEvent;
   import alternativa.tanks.battle.events.TankUnloadedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import §finally catch with§.§throw for continue§;
   
   public class §var throw§ implements §dynamic switch break§, §if use default§
   {
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §5214237923237936123423632234§:LocalTankInfoService;
      
      private var §each get§:int;
      
      private var §521423122212312234123423632234§:§5214239411239424123423632234§;
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      public function §var throw§(param1:int, param2:§5214239411239424123423632234§)
      {
         super();
         this.§each get§ = param1;
         this.§521423122212312234123423632234§ = param2;
         this.§5214233213233226123423632234§(§with set include§);
      }
      
      public function runLogic(param1:int, param2:int) : void
      {
         var _loc3_:§super var dynamic§ = null;
         this.§521423122212312234123423632234§.§include switch break§().§5214238469238482123423632234§(§throw for continue§.§52142393423947123423632234§((this.§each get§ - param1) / 500,0,1));
         if(param1 > this.§each get§)
         {
            this.§521423129602312973123423632234§();
            _loc3_ = §super var dynamic§(§5214237923237936123423632234§);
            _loc3_.§static for else§(this.§521423122212312234123423632234§);
         }
      }
      
      private function §each for var§(param1:TankAddedToBattleEvent) : void
      {
         if(param1.tank == this.§521423122212312234123423632234§)
         {
            this.§521423129602312973123423632234§();
         }
      }
      
      private function §default for for§(param1:BattleFinishEvent) : void
      {
         this.§521423129602312973123423632234§();
      }
      
      private function §import catch break§(param1:TankUnloadedEvent) : void
      {
         if(param1.tank == this.§521423122212312234123423632234§)
         {
            this.§521423129602312973123423632234§();
         }
      }
      
      private function §521423129602312973123423632234§() : void
      {
         §52142380523818123423632234§.getBattleRunner().removeLogicUnit(this);
         this.§5214238269238282123423632234§.deactivateHandlers();
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238269238282123423632234§.handleBattleEvent(param1);
      }
      
      private function §5214233213233226123423632234§(param1:BattleEventDispatcher) : void
      {
         this.§5214238269238282123423632234§ = new BattleEventSupport(param1,this);
         this.§5214238269238282123423632234§.addEventHandler(TankAddedToBattleEvent,this.§each for var§);
         this.§5214238269238282123423632234§.addEventHandler(TankUnloadedEvent,this.§import catch break§);
         this.§5214238269238282123423632234§.addEventHandler(BattleFinishEvent,this.§default for for§);
         this.§5214238269238282123423632234§.activateHandlers();
      }
   }
}

