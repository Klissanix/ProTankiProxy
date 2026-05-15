package alternativa.tanks.services.battleinput
{
   import flash.events.IEventDispatcher;
   
   public interface BattleInputService extends IEventDispatcher
   {
      
      function isInputLocked() : Boolean;
      
      function unlock(param1:BattleInputLockType) : void;
      
      function lock(param1:BattleInputLockType) : void;
   }
}

