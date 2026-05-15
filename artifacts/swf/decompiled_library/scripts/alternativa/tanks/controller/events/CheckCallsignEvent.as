package alternativa.tanks.controller.events
{
   import flash.events.Event;
   
   public class CheckCallsignEvent extends Event
   {
      
      public static const CHECK_CALLSIGN:String = "CheckCallsignEvent.CHECK_CALLSIGN";
      
      private var §5214232654232667123423632234§:String;
      
      public function CheckCallsignEvent(param1:String)
      {
         super("CheckCallsignEvent.CHECK_CALLSIGN");
         this.§5214232654232667123423632234§ = param1;
      }
      
      public function get uid() : String
      {
         return this.§5214232654232667123423632234§;
      }
      
      override public function clone() : Event
      {
         return new CheckCallsignEvent(this.uid);
      }
   }
}

