package projects.tanks.clients.fp10.libraries.tanksservices.model.friends
{
   public class FriendState
   {
      
      public static const UNKNOWN:FriendState = new FriendState(0);
      
      public static const ACCEPTED:FriendState = new FriendState(1);
      
      public static const INCOMING:FriendState = new FriendState(2);
      
      public static const OUTGOING:FriendState = new FriendState(3);
      
      private var §else switch do§:int;
      
      public function FriendState(param1:int)
      {
         super();
         this.§else switch do§ = param1;
      }
      
      public function get state() : int
      {
         return this.§else switch do§;
      }
      
      public function toString() : String
      {
         return "";
      }
   }
}

