package alternativa.tanks.controller.events
{
   import flash.events.Event;
   
   public class InviteCodeEnteredEvent extends Event
   {
      
      public static const INVITE_ENTERED:String = "INVITE_ENTERED";
      
      private var §5214238496238509123423632234§:String;
      
      public function InviteCodeEnteredEvent(param1:String)
      {
         this.§5214238496238509123423632234§ = param1;
         super("INVITE_ENTERED");
      }
      
      public function get inviteCode() : String
      {
         return this.§5214238496238509123423632234§;
      }
   }
}

