package projects.tanks.clients.fp10.libraries.tanksservices.service.battle
{
   import flash.events.IEventDispatcher;
   
   public interface IBattleInfoService extends IEventDispatcher
   {
      
      function get battleActive() : Boolean;
      
      function resetCurrentBattle() : void;
      
      function hasCurrentSelectionBattleId() : Boolean;
      
      function set currentBattleId(param1:String) : void;
      
      function battleLoad() : void;
      
      function battleRestart() : void;
      
      function get spectator() : Boolean;
      
      function hasCurrentBattleId() : Boolean;
      
      function set reArmorEnabled(param1:Boolean) : void;
      
      function get reArmorEnabled() : Boolean;
      
      function availableRank(param1:int) : Boolean;
      
      function get currentBattleId() : String;
      
      function resetCurrentSelectionBattleId() : void;
      
      function isSpectatorMode() : Boolean;
      
      function isInBattle() : Boolean;
      
      function get currentSelectionBattleId() : String;
      
      function set spectator(param1:Boolean) : void;
      
      function setCurrentSelectionBattle(param1:String, param2:int, param3:int) : void;
      
      function set battleActive(param1:Boolean) : void;
      
      function setInBattle(param1:Boolean) : void;
   }
}

