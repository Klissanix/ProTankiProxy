package §in catch static§
{
   import §5214233396233409123423632234§.§521423126092312622123423632234§;
   import §5214233894233907123423632234§.§switch const static§;
   import §5214233894233907123423632234§.§throw for default§;
   import alternativa.tanks.models.service.ClanNotificationEvent;
   import alternativa.tanks.models.service.ClanNotificationsManager;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.model.§throw catch var§;
   
   public class §5214232157232170123423632234§ extends §switch const static§ implements §do set function§, §throw catch var§, §throw for default§
   {
      
      public function §5214232157232170123423632234§()
      {
         super();
      }
      
      public function §5214235308235321123423632234§(param1:String) : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         ClanNotificationsManager.onRemoveIncomingNotification(param1);
      }
      
      public function objectUnloaded() : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         ClanNotificationsManager.dispatcher.removeEventListener("ClanNotificationEvent.REMOVE_INCOMING_NOTIFICATION",getFunctionWrapper(this.§with var function§));
      }
      
      public function objectLoaded() : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         ClanNotificationsManager.initializeIncomingNotifications(§switch var switch§().§else use while§);
         ClanNotificationsManager.dispatcher.addEventListener("ClanNotificationEvent.REMOVE_INCOMING_NOTIFICATION",getFunctionWrapper(this.§with var function§));
      }
      
      private function §dynamic set class§() : Boolean
      {
         var _loc1_:§521423126092312622123423632234§ = §521423126092312622123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§521423126092312622123423632234§));
         return _loc1_.§case var const§();
      }
      
      public function §5214232017232030123423632234§(param1:String) : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         ClanNotificationsManager.onIncomingNotification(param1);
      }
      
      private function §with var function§(param1:ClanNotificationEvent) : void
      {
         §521423120492312062123423632234§.§function switch with§(param1.userId);
      }
   }
}

