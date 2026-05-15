package §5214239974239987123423632234§
{
   import §5214238941238954123423632234§.§const set class§;
   import §5214238941238954123423632234§.§each package set§;
   import platform.client.fp10.core.model.§do set function§;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import §static for super§.§521423130772313090123423632234§;
   
   public class FriendsIncomingModel extends §each package set§ implements §const set class§, §do set function§
   {
      
      public static var §5214237545237558123423632234§:IFriendInfoService;
      
      public function FriendsIncomingModel()
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
            §5214237545237558123423632234§.setFriendState(_loc2_,FriendState.INCOMING);
         }
      }
      
      public function onRemoved(param1:String) : void
      {
         §5214237545237558123423632234§.deleteFriend(param1,FriendState.INCOMING);
      }
      
      public function onAdding(param1:String) : void
      {
         §5214237545237558123423632234§.setFriendState(param1,FriendState.INCOMING);
      }
   }
}

