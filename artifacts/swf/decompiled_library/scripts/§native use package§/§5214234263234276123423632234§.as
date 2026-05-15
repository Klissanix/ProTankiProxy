package §native use package§
{
   import §5214231210231223123423632234§.§5214237451237464123423632234§;
   import §5214231210231223123423632234§.§implements use var§;
   import §5214233396233409123423632234§.§521423126092312622123423632234§;
   import alternativa.tanks.models.service.ClanNotificationEvent;
   import alternativa.tanks.models.service.ClanUserNotificationsManager;
   import alternativa.tanks.service.clan.user.ClanUserService;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.model.§throw catch var§;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class §5214234263234276123423632234§ extends §5214237451237464123423632234§ implements §do set function§, §throw catch var§, §implements use var§
   {
      
      public static var §switch use var§:ClanUserService;
      
      public function §5214234263234276123423632234§()
      {
         super();
      }
      
      public function §false switch throw§(param1:Long) : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         ClanUserNotificationsManager.onIncomingNotification(param1);
      }
      
      private function §with var function§(param1:ClanNotificationEvent) : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         var _loc2_:§521423120252312038123423632234§ = §switch use var§.getObjectById(param1.clanId);
         §521423120492312062123423632234§.§521423105812310594123423632234§(_loc2_.name);
      }
      
      public function objectUnloaded() : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         ClanUserNotificationsManager.dispatcher.removeEventListener("ClanNotificationEvent.REMOVE_INCOMING_NOTIFICATION",getFunctionWrapper(this.§with var function§));
         ClanUserNotificationsManager.resetManager();
      }
      
      private function §dynamic set class§() : Boolean
      {
         var _loc1_:§521423126092312622123423632234§ = §521423126092312622123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§521423126092312622123423632234§));
         return _loc1_.§case var const§();
      }
      
      public function objectLoaded() : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         ClanUserNotificationsManager.initializeIncomingNotifications(§switch var switch§().§5214237990238003123423632234§);
         ClanUserNotificationsManager.dispatcher.addEventListener("ClanNotificationEvent.REMOVE_INCOMING_NOTIFICATION",getFunctionWrapper(this.§with var function§));
      }
      
      public function §final use case§(param1:Long) : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         ClanUserNotificationsManager.onRemoveIncomingNotification(param1);
      }
   }
}

