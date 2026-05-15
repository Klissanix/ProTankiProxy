package projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.online
{
   import §521423121922312205123423632234§.ClientOnlineNotifierData;
   import flash.events.IEventDispatcher;
   
   public interface IOnlineNotifierService extends IEventDispatcher
   {
      
      function removeUserOnlineData(param1:String) : void;
      
      function hasUserOnlineData(param1:String) : Boolean;
      
      function addUserOnlineData(param1:ClientOnlineNotifierData) : void;
      
      function setOnline(param1:Vector.<ClientOnlineNotifierData>) : void;
      
      function getUserOnlineData(param1:String) : ClientOnlineNotifierData;
   }
}

