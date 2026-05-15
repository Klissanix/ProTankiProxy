package §implements set include§
{
   import §521423120692312082123423632234§.§521423102422310255123423632234§;
   import §521423120692312082123423632234§.§each switch while§;
   import alternativa.osgi.service.logging.LogService;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.NewFriendRemoveEvent;
   import §static for super§.§521423130772313090123423632234§;
   
   public class FriendsIncomingNotificatorModel extends §521423102422310255123423632234§ implements §each switch while§, §do set function§, §throw catch var§
   {
      
      public static var §5214234621234634123423632234§:LogService;
      
      public static var §5214237545237558123423632234§:IFriendInfoService;
      
      public function FriendsIncomingNotificatorModel()
      {
         super();
      }
      
      public function objectLoaded() : void
      {
         var _loc1_:§521423130772313090123423632234§ = null;
         var _loc2_:* = null;
         _loc1_ = §switch var switch§();
         for each(_loc2_ in _loc1_.§else use while§)
         {
            §5214237545237558123423632234§.onAddNewIncomingFriend(_loc2_);
         }
         §5214237545237558123423632234§.addEventListener("NewFriendRemoveEvent.INCOMING",this.remove);
      }
      
      public function onRemoved(param1:String) : void
      {
         §5214237545237558123423632234§.onRemoveNewIncomingFriend(param1);
      }
      
      public function onAdding(param1:String) : void
      {
         §5214237545237558123423632234§.onAddNewIncomingFriend(param1);
      }
      
      public function remove(param1:NewFriendRemoveEvent) : void
      {
         §521423120492312062123423632234§.§5214231431231444123423632234§(param1.userId);
      }
      
      public function objectUnloaded() : void
      {
         §5214237545237558123423632234§.removeEventListener("NewFriendRemoveEvent.INCOMING",this.remove);
      }
   }
}

