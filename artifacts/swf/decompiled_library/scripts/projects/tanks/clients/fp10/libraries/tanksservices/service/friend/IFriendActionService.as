package projects.tanks.clients.fp10.libraries.tanksservices.service.friend
{
   import flash.events.IEventDispatcher;
   
   public interface IFriendActionService extends IEventDispatcher
   {
      
      function alreadyInOutgoingFriends(param1:String) : void;
      
      function revoke(param1:String) : void;
      
      function rejectAllIncoming() : void;
      
      function alreadyInIncomingFriends(param1:String, param2:String) : void;
      
      function add(param1:String) : void;
      
      function breakItOff(param1:String) : void;
      
      function reject(param1:String) : void;
      
      function uidExist() : void;
      
      function addByUid(param1:String) : void;
      
      function accept(param1:String) : void;
      
      function checkUid(param1:String) : void;
      
      function alreadyInAcceptedFriends(param1:String) : void;
      
      function uidNotExist() : void;
   }
}

