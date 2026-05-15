package alternativa.tanks.battle.events
{
   public interface BattleEventDispatcher
   {
      
      function removeBattleEventListener(param1:Class, param2:§if use default§) : void;
      
      function addBattleEventListener(param1:Class, param2:§if use default§) : void;
      
      function clearDispatchedOnce() : void;
      
      function dispatchEvent(param1:Object) : void;
      
      function dispatchEventOnce(param1:Object) : void;
   }
}

