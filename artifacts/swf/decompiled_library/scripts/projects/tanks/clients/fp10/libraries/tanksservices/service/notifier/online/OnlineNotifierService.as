package projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.online
{
   import §521423121922312205123423632234§.ClientOnlineNotifierData;
   import §521423128372312850123423632234§.§continue§;
   import §5214234825234838123423632234§.ConnectionCloseStatus;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class OnlineNotifierService extends EventDispatcher implements IOnlineNotifierService, §continue§
   {
      
      private var §521423140382314051123423632234§:Dictionary = new Dictionary();
      
      public function OnlineNotifierService()
      {
         super();
      }
      
      public function addUserOnlineData(param1:ClientOnlineNotifierData) : void
      {
         this.§521423140382314051123423632234§[param1.userId] = param1;
      }
      
      public function setOnline(param1:Vector.<ClientOnlineNotifierData>) : void
      {
         dispatchEvent(new OnlineNotifierServiceEvent("OnlineNotifierServiceEvent.SET_ONLINE",param1));
      }
      
      public function getUserOnlineData(param1:String) : ClientOnlineNotifierData
      {
         return this.§521423140382314051123423632234§[param1];
      }
      
      public function removeUserOnlineData(param1:String) : void
      {
         delete this.§521423140382314051123423632234§[param1];
      }
      
      public function hasUserOnlineData(param1:String) : Boolean
      {
         return param1 in this.§521423140382314051123423632234§;
      }
      
      public function onConnectionClosed(param1:ConnectionCloseStatus) : void
      {
         this.§521423140382314051123423632234§ = new Dictionary();
      }
   }
}

