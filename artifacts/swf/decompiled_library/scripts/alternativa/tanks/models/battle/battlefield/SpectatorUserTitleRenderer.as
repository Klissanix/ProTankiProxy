package alternativa.tanks.models.battle.battlefield
{
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleEventSupport;
   import alternativa.tanks.battle.events.TankAddedToBattleEvent;
   import alternativa.tanks.battle.events.TankRemovedFromBattleEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.battle.§while catch with§;
   import alternativa.tanks.services.spectatorservice.SpectatorService;
   import alternativa.utils.clearDictionary;
   import flash.utils.Dictionary;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   
   public class SpectatorUserTitleRenderer implements §while catch with§, §if use default§, §521423117662311779123423632234§
   {
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §5214236748236761123423632234§:SpectatorService;
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      private const §521423104452310458123423632234§:Dictionary = new Dictionary();
      
      public function SpectatorUserTitleRenderer()
      {
         super();
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§,this);
         this.§5214238269238282123423632234§.addEventHandler(TankAddedToBattleEvent,this.b3b06d40);
         this.§5214238269238282123423632234§.addEventHandler(TankRemovedFromBattleEvent,this.e6d7f43c);
         this.§5214238269238282123423632234§.activateHandlers();
      }
      
      public function close() : void
      {
         this.§5214238269238282123423632234§.deactivateHandlers();
         clearDictionary(this.§521423104452310458123423632234§);
      }
      
      private function b3b06d40(param1:TankAddedToBattleEvent) : void
      {
         this.§521423104452310458123423632234§[param1.tank] = true;
      }
      
      private function b54e86d(param1:§5214239411239424123423632234§) : void
      {
         if(param1.§do for final§.§5214231837231850123423632234§ > 0 && §5214236748236761123423632234§.getUserTitlesVisible())
         {
            param1.§while extends§();
         }
         else
         {
            param1.§521423127392312752123423632234§();
         }
      }
      
      public function renderUserTitles() : void
      {
         var _loc1_:* = undefined;
         for(_loc1_ in this.§521423104452310458123423632234§)
         {
            this.b54e86d(_loc1_);
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238269238282123423632234§.handleBattleEvent(param1);
      }
      
      private function e6d7f43c(param1:TankRemovedFromBattleEvent) : void
      {
         delete this.§521423104452310458123423632234§[param1.tank];
      }
   }
}

