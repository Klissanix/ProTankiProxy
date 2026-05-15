package projects.tanks.clients.fp10.libraries.tanksservices.service.friend
{
   import flash.events.EventDispatcher;
   
   public class FriendActionService extends EventDispatcher implements IFriendActionService
   {
      
      public function FriendActionService()
      {
         super();
      }
      
      public function checkUid(param1:String) : void
      {
         dispatchEvent(new FriendActionServiceUidEvent("FriendActionServiceUidEvent.CHECK",param1));
      }
      
      public function accept(param1:String) : void
      {
         dispatchEvent(new FriendActionServiceEvent("FriendsActionServiceEvent.ACCEPT",param1));
      }
      
      public function breakItOff(param1:String) : void
      {
         dispatchEvent(new FriendActionServiceEvent("FriendsActionServiceEvent.BREAK_OFF",param1));
      }
      
      public function alreadyInIncomingFriends(param1:String, param2:String) : void
      {
         dispatchEvent(new FriendActionServiceUidEvent("FriendActionServiceUidEvent.ALREADY_IN_INCOMING_FRIENDS",param1,param2));
      }
      
      public function addByUid(param1:String) : void
      {
         dispatchEvent(new FriendActionServiceUidEvent("FriendActionServiceUidEvent.ADD",param1));
      }
      
      public function alreadyInOutgoingFriends(param1:String) : void
      {
         dispatchEvent(new FriendActionServiceUidEvent("FriendActionServiceUidEvent.ALREADY_IN_OUTGOING_FRIENDS",param1));
      }
      
      public function alreadyInAcceptedFriends(param1:String) : void
      {
         dispatchEvent(new FriendActionServiceUidEvent("FriendActionServiceUidEvent.ALREADY_IN_ACCEPTED_FRIENDS",param1));
      }
      
      public function add(param1:String) : void
      {
         dispatchEvent(new FriendActionServiceEvent("FriendsActionServiceEvent.ADD",param1));
      }
      
      public function uidNotExist() : void
      {
         dispatchEvent(new FriendActionServiceUidEvent("FriendActionServiceUidEvent.UID_NOT_EXIST",""));
      }
      
      public function revoke(param1:String) : void
      {
         dispatchEvent(new FriendActionServiceEvent("FriendsActionServiceEvent.REVOKE",param1));
      }
      
      public function rejectAllIncoming() : void
      {
         dispatchEvent(new FriendActionServiceEvent("FriendsActionServiceEvent.REJECT_ALL_INCOMING",null));
      }
      
      public function reject(param1:String) : void
      {
         dispatchEvent(new FriendActionServiceEvent("FriendsActionServiceEvent.REJECT",param1));
      }
      
      public function uidExist() : void
      {
         dispatchEvent(new FriendActionServiceUidEvent("FriendActionServiceUidEvent.UID_EXIST",""));
      }
   }
}

