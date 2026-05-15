package projects.tanks.clients.fp10.libraries.tanksservices.service.friend
{
   import flash.events.IEventDispatcher;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   
   public interface IFriendInfoService extends IEventDispatcher
   {
      
      function hasUpdater(param1:String) : Boolean;
      
      function onAddNewIncomingFriend(param1:String) : void;
      
      function getOrCreateUpdater(param1:String) : §52142355023563123423632234§;
      
      function removeNewAcceptedFriend(param1:String) : void;
      
      function deleteFriend(param1:String, param2:FriendState) : void;
      
      function isNewFriend(param1:String) : Boolean;
      
      function getFriendsIdByState(param1:FriendState) : Vector.<String>;
      
      function get newIncomingFriendsLength() : int;
      
      function onAddNewAcceptedFriend(param1:String) : void;
      
      function get outgoingFriendsLength() : int;
      
      function isNewIncomingFriend(param1:String) : Boolean;
      
      function get newAcceptedFriendsLength() : int;
      
      function removeNewIncomingFriend(param1:String) : void;
      
      function get acceptedFriendsLength() : int;
      
      function onRemoveNewIncomingFriend(param1:String) : void;
      
      function isNewAcceptedFriend(param1:String) : Boolean;
      
      function get incomingFriendsLength() : int;
      
      function onRemoveNewAcceptedFriend(param1:String) : void;
      
      function isFriendsInState(param1:String, param2:FriendState) : Boolean;
      
      function setFriendState(param1:String, param2:FriendState) : void;
   }
}

