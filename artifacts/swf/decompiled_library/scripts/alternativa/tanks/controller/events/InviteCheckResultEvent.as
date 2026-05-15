package alternativa.tanks.controller.events
{
   import flash.events.Event;
   
   public class InviteCheckResultEvent extends Event
   {
      
      public static const INVITE_CODE_IS_UNBOUND:String = "INVITE_CODE_IS_UNBOUND";
      
      public static const INVITE_CODE_DOES_NOT_EXIST:String = "INVITE_CODE_DOES_NOT_EXIST";
      
      private var §5214232654232667123423632234§:String;
      
      public function InviteCheckResultEvent(param1:String, param2:String = null)
      {
         this.§5214232654232667123423632234§ = param2;
         super(param1);
      }
      
      public function get uid() : String
      {
         return this.§5214232654232667123423632234§;
      }
   }
}

