package §521423128272312840123423632234§
{
   import §5214233396233409123423632234§.§521423126092312622123423632234§;
   import §5214234142234155123423632234§.§52142340723420123423632234§;
   import §5214234142234155123423632234§.§5214234727234740123423632234§;
   import alternativa.tanks.models.service.ClanNotificationEvent;
   import alternativa.tanks.models.service.ClanNotificationsManager;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.model.§throw catch var§;
   
   public class §5214231283231296123423632234§ extends §52142340723420123423632234§ implements §do set function§, §throw catch var§, §5214234727234740123423632234§
   {
      
      public function §5214231283231296123423632234§()
      {
         super();
      }
      
      public function §5214235656235669123423632234§(param1:String) : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         ClanNotificationsManager.onAcceptedNotification(param1);
      }
      
      private function §5214234216234229123423632234§(param1:ClanNotificationEvent) : void
      {
         §521423120492312062123423632234§.§52142328823301123423632234§(param1.userId);
      }
      
      public function §521423134052313418123423632234§(param1:String) : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         ClanNotificationsManager.onRemoveAcceptedNotification(param1);
      }
      
      public function objectLoaded() : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         ClanNotificationsManager.initializeAcceptedNotifications(§switch var switch§().§else use while§);
         ClanNotificationsManager.dispatcher.addEventListener("ClanNotificationEvent.REMOVE_ACCEPTED_NOTIFICATION",getFunctionWrapper(this.§5214234216234229123423632234§));
      }
      
      private function §dynamic set class§() : Boolean
      {
         var _loc1_:§521423126092312622123423632234§ = §521423126092312622123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§521423126092312622123423632234§));
         return _loc1_.§case var const§();
      }
      
      public function objectUnloaded() : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         ClanNotificationsManager.dispatcher.removeEventListener("ClanNotificationEvent.REMOVE_ACCEPTED_NOTIFICATION",getFunctionWrapper(this.§5214234216234229123423632234§));
      }
   }
}

