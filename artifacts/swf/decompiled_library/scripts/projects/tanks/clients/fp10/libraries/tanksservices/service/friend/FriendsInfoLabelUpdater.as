package projects.tanks.clients.fp10.libraries.tanksservices.service.friend
{
   import flash.events.EventDispatcher;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.§5214231516231529123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.§521423128522312865123423632234§;
   
   public class FriendsInfoLabelUpdater extends EventDispatcher implements §5214231516231529123423632234§, §52142355023563123423632234§, §521423128522312865123423632234§
   {
      
      private var §else switch do§:FriendState;
      
      private var §5214234396234409123423632234§:int;
      
      private var §52142345723470123423632234§:Number;
      
      public function FriendsInfoLabelUpdater()
      {
         super();
      }
      
      public function get visibleLabelsCounter() : int
      {
         return this.§5214234396234409123423632234§;
      }
      
      public function decrementVisibleLabelsCounter() : void
      {
         --this.§5214234396234409123423632234§;
      }
      
      public function get state() : FriendState
      {
         return this.§else switch do§;
      }
      
      public function setFriendState(param1:FriendState) : void
      {
         this.§else switch do§ = param1;
         dispatchEvent(new FriendInfoLabelUpdaterEvent("FriendInfoLabelUpdaterEvent.CHANGE_STATE"));
      }
      
      public function incrementVisibleLabelsCounter() : void
      {
         ++this.§5214234396234409123423632234§;
      }
      
      public function get lastAccessTime() : Number
      {
         return this.§52142345723470123423632234§;
      }
      
      public function updateLastAccessTime() : void
      {
         this.§52142345723470123423632234§ = new Date().time;
      }
   }
}

