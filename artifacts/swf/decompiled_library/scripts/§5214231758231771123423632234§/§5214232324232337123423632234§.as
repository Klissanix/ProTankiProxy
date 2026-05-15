package §5214231758231771123423632234§
{
   import §521423138772313890123423632234§.§5214235732235745123423632234§;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.MapBuildingCompleteEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.services.battlereadiness.BattleReadinessService;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class §5214232324232337123423632234§ implements §521423117662311779123423632234§, §if use default§
   {
      
      public static var §5214234439234452123423632234§:BattleReadinessService;
      
      public static var §with set include§:BattleEventDispatcher;
      
      private var §const const finally§:§521423120252312038123423632234§;
      
      private var §521423120492312062123423632234§:§5214235732235745123423632234§;
      
      public function §5214232324232337123423632234§(param1:§521423120252312038123423632234§, param2:§5214235732235745123423632234§)
      {
         super();
         this.§const const finally§ = param1;
         this.§521423120492312062123423632234§ = param2;
         if(§5214234439234452123423632234§.isMapReady())
         {
            this.§5214233143233156123423632234§();
         }
         else
         {
            §with set include§.addBattleEventListener(MapBuildingCompleteEvent,this);
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214233143233156123423632234§();
      }
      
      private function §5214233143233156123423632234§() : void
      {
         this.§521423120492312062123423632234§.§52142359723610123423632234§();
      }
      
      public function close() : void
      {
         this.§const const finally§ = null;
         this.§521423120492312062123423632234§ = null;
         §with set include§.removeBattleEventListener(MapBuildingCompleteEvent,this);
      }
   }
}

