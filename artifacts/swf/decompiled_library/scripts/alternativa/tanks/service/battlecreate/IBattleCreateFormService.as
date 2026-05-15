package alternativa.tanks.service.battlecreate
{
   import flash.events.IEventDispatcher;
   
   public interface IBattleCreateFormService extends IEventDispatcher
   {
      
      function get hasProAbonement() : Boolean;
      
      function set battleCreationDisabled(param1:Boolean) : void;
      
      function get battleCreationDisabled() : Boolean;
      
      function showForm() : void;
      
      function set hasProAbonement(param1:Boolean) : void;
      
      function hideForm() : void;
   }
}

