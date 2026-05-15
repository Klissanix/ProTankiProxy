package projects.tanks.clients.fp10.libraries.tanksservices.model
{
   import §extends else§.§5214233932233945123423632234§;
   import §extends else§.§5214237786237799123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.FriendActionServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.FriendActionServiceUidEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendActionService;
   
   public class FriendsModel extends §5214237786237799123423632234§ implements §5214233932233945123423632234§, §521423108392310852123423632234§
   {
      
      public static var §5214232180232193123423632234§:IFriendActionService;
      
      public function FriendsModel()
      {
         super();
      }
      
      private function c74b9c3a(param1:FriendActionServiceEvent) : void
      {
         §521423120492312062123423632234§.§set package break§(param1.userId);
      }
      
      private function b88d2fc(param1:FriendActionServiceUidEvent) : void
      {
         §521423120492312062123423632234§.§extends set do§(param1.uid);
      }
      
      private function d580177c(param1:FriendActionServiceEvent) : void
      {
         §521423120492312062123423632234§.§default catch try§();
      }
      
      public function isLocal() : Boolean
      {
         return true;
      }
      
      private function f4cb789f(param1:FriendActionServiceUidEvent) : void
      {
         §521423120492312062123423632234§.§5214238820238833123423632234§(param1.uid);
      }
      
      public function uidExist() : void
      {
         §5214232180232193123423632234§.uidExist();
      }
      
      private function d67ea26c(param1:FriendActionServiceEvent) : void
      {
         §521423120492312062123423632234§.§5214236013236026123423632234§(param1.userId);
      }
      
      private function b25fd16(param1:FriendActionServiceEvent) : void
      {
         §521423120492312062123423632234§.§5214238820238833123423632234§(param1.userId);
      }
      
      public function alreadyInAcceptedFriends(param1:String) : void
      {
         §5214232180232193123423632234§.alreadyInAcceptedFriends(param1);
      }
      
      private function e40ee7eb(param1:FriendActionServiceEvent) : void
      {
         §521423120492312062123423632234§.§5214234123234136123423632234§(param1.userId);
      }
      
      public function objectUnloaded() : void
      {
         §5214232180232193123423632234§.removeEventListener("FriendsActionServiceEvent.ACCEPT",this.d67ea26c);
         §5214232180232193123423632234§.removeEventListener("FriendsActionServiceEvent.ADD",this.b25fd16);
         §5214232180232193123423632234§.removeEventListener("FriendActionServiceUidEvent.ADD",this.f4cb789f);
         §5214232180232193123423632234§.removeEventListener("FriendsActionServiceEvent.BREAK_OFF",this.e40ee7eb);
         §5214232180232193123423632234§.removeEventListener("FriendsActionServiceEvent.REJECT",this.c74b9c3a);
         §5214232180232193123423632234§.removeEventListener("FriendsActionServiceEvent.REJECT_ALL_INCOMING",this.d580177c);
         §5214232180232193123423632234§.removeEventListener("FriendsActionServiceEvent.REVOKE",this.d5224978);
         §5214232180232193123423632234§.removeEventListener("FriendActionServiceUidEvent.CHECK",this.b88d2fc);
      }
      
      public function alreadyInIncomingFriends(param1:String, param2:String) : void
      {
         §5214232180232193123423632234§.alreadyInIncomingFriends(param1,param2);
      }
      
      public function objectLoaded() : void
      {
         §5214232180232193123423632234§.addEventListener("FriendsActionServiceEvent.ACCEPT",this.d67ea26c);
         §5214232180232193123423632234§.addEventListener("FriendsActionServiceEvent.ADD",this.b25fd16);
         §5214232180232193123423632234§.addEventListener("FriendActionServiceUidEvent.ADD",this.f4cb789f);
         §5214232180232193123423632234§.addEventListener("FriendsActionServiceEvent.BREAK_OFF",this.e40ee7eb);
         §5214232180232193123423632234§.addEventListener("FriendsActionServiceEvent.REJECT",this.c74b9c3a);
         §5214232180232193123423632234§.addEventListener("FriendsActionServiceEvent.REJECT_ALL_INCOMING",this.d580177c);
         §5214232180232193123423632234§.addEventListener("FriendsActionServiceEvent.REVOKE",this.d5224978);
         §5214232180232193123423632234§.addEventListener("FriendActionServiceUidEvent.CHECK",this.b88d2fc);
      }
      
      public function uidNotExist() : void
      {
         §5214232180232193123423632234§.uidNotExist();
      }
      
      private function d5224978(param1:FriendActionServiceEvent) : void
      {
         §521423120492312062123423632234§.§with var for§(param1.userId);
      }
      
      public function alreadyInOutgoingFriends(param1:String) : void
      {
         §5214232180232193123423632234§.alreadyInOutgoingFriends(param1);
      }
   }
}

