package projects.tanks.clients.fp10.libraries.tanksservices.service.friend
{
   import flash.events.IEventDispatcher;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   
   public interface §52142355023563123423632234§ extends IEventDispatcher
   {
      
      function updateLastAccessTime() : void;
      
      function incrementVisibleLabelsCounter() : void;
      
      function decrementVisibleLabelsCounter() : void;
      
      function get state() : FriendState;
   }
}

