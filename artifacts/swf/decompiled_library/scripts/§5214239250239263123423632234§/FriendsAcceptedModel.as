package §5214239250239263123423632234§
{
   import §finally else§.§521423140922314105123423632234§;
   import §finally else§.§const var true§;
   import platform.client.fp10.core.model.§do set function§;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import §static for super§.§521423130772313090123423632234§;
   
   public class FriendsAcceptedModel extends §const var true§ implements §521423140922314105123423632234§, §do set function§
   {
      
      public static var §5214237545237558123423632234§:IFriendInfoService;
      
      public function FriendsAcceptedModel()
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
            §5214237545237558123423632234§.setFriendState(_loc2_,FriendState.ACCEPTED);
         }
      }
      
      public function onRemoved(param1:String) : void
      {
         §5214237545237558123423632234§.deleteFriend(param1,FriendState.ACCEPTED);
      }
      
      public function onAdding(param1:String) : void
      {
         §5214237545237558123423632234§.setFriendState(param1,FriendState.ACCEPTED);
      }
   }
}

