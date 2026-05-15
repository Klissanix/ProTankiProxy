package §5214238291238304123423632234§
{
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.NewFriendRemoveEvent;
   import §static for super§.§521423130772313090123423632234§;
   import §with var extends§.§5214233570233583123423632234§;
   import §with var extends§.§if package import§;
   
   public class FriendsAcceptedNotificatorModel extends §5214233570233583123423632234§ implements §if package import§, §do set function§, §throw catch var§
   {
      
      public static var §5214237545237558123423632234§:IFriendInfoService;
      
      public function FriendsAcceptedNotificatorModel()
      {
         super();
      }
      
      public function onAdding(param1:String) : void
      {
         §5214237545237558123423632234§.onAddNewAcceptedFriend(param1);
      }
      
      public function objectUnloaded() : void
      {
         §5214237545237558123423632234§.removeEventListener("NewFriendRemoveEvent.ACCEPTED",this.remove);
      }
      
      public function objectLoaded() : void
      {
         var _loc1_:§521423130772313090123423632234§ = null;
         var _loc2_:* = null;
         _loc1_ = §switch var switch§();
         for each(_loc2_ in _loc1_.§else use while§)
         {
            §5214237545237558123423632234§.onAddNewAcceptedFriend(_loc2_);
         }
         §5214237545237558123423632234§.addEventListener("NewFriendRemoveEvent.ACCEPTED",this.remove);
      }
      
      public function onRemoved(param1:String) : void
      {
         §5214237545237558123423632234§.onRemoveNewAcceptedFriend(param1);
      }
      
      private function remove(param1:NewFriendRemoveEvent) : void
      {
         §521423120492312062123423632234§.§function use case§(param1.userId);
      }
   }
}

