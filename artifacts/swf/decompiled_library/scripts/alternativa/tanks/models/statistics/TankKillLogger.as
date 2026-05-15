package alternativa.tanks.models.statistics
{
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.models.battle.gui.BattlefieldGUI;
   import §const false§.TankKilledEvent;
   import §const false§.TankReloadedEvent;
   import §const false§.TankSuicideEvent;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class TankKillLogger implements §521423117662311779123423632234§, §if use default§
   {
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §true set each§:BattlefieldGUI;
      
      private var §else package switch§:§521423120252312038123423632234§;
      
      private var §5214232206232219123423632234§:String;
      
      private var §521423135482313561123423632234§:String;
      
      private var §5214236603236616123423632234§:String;
      
      public function TankKillLogger()
      {
         super();
         this.init();
      }
      
      public function close() : void
      {
         this.§else package switch§ = null;
         §with set include§.removeBattleEventListener(TankKilledEvent,this);
         §with set include§.removeBattleEventListener(TankSuicideEvent,this);
         §with set include§.removeBattleEventListener(TankReloadedEvent,this);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         var _loc2_:TankKilledEvent = null;
         var _loc3_:TankSuicideEvent = null;
         var _loc4_:TankReloadedEvent = null;
         if(param1 is TankKilledEvent)
         {
            _loc2_ = TankKilledEvent(param1);
            if(_loc2_.§521423133932313406123423632234§ != _loc2_.§false switch break§)
            {
               §true set each§.showUserBattleLogMessage(_loc2_.§521423133932313406123423632234§,this.§521423135482313561123423632234§,_loc2_.§false switch break§);
            }
            else
            {
               §true set each§.showUserBattleLogMessage(_loc2_.§false switch break§,this.§5214232206232219123423632234§,null);
            }
         }
         else if(param1 is TankSuicideEvent)
         {
            _loc3_ = TankSuicideEvent(param1);
            §true set each§.showUserBattleLogMessage(_loc3_.§52142366723680123423632234§.id,this.§5214232206232219123423632234§,null);
         }
         else if(param1 is TankReloadedEvent)
         {
            _loc4_ = TankReloadedEvent(param1);
            §true set each§.logTankReloaded(_loc4_.userId,this.§5214236603236616123423632234§);
         }
      }
      
      private function init() : void
      {
         this.§5214232206232219123423632234§ = §5214236363236376123423632234§.getText("BATTLE_PLAYER_SUICIDED");
         this.§521423135482313561123423632234§ = §5214236363236376123423632234§.getText("BATTLE_PLAYER_KILLED");
         this.§5214236603236616123423632234§ = §5214236363236376123423632234§.getText("REARM_BATTLE_EVENT");
         §with set include§.addBattleEventListener(TankKilledEvent,this);
         §with set include§.addBattleEventListener(TankSuicideEvent,this);
         §with set include§.addBattleEventListener(TankReloadedEvent,this);
      }
   }
}

