package projects.tanks.clients.fp10.libraries.tanksservices.service.premium
{
   import flash.events.IEventDispatcher;
   
   public interface PremiumService extends IEventDispatcher
   {
      
      function destroy() : void;
      
      function hasPremium() : Boolean;
      
      function getTimeLeft() : int;
      
      function updateTimeLeft(param1:int) : void;
   }
}

