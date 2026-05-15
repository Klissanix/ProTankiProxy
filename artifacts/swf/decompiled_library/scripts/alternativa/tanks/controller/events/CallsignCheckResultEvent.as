package alternativa.tanks.controller.events
{
   import flash.events.Event;
   
   public class CallsignCheckResultEvent extends Event
   {
      
      public static const CALLSIGN_IS_BUSY:String = "CallsignCheckResultEvent.CALLSIGN_IS_BUSY";
      
      public static const CALLSIGN_IS_FREE:String = "CallsignCheckResultEvent.CALLSIGN_IS_FREE";
      
      public static const CALLSIGN_IS_INCORRECT:String = "CallsignCheckResultEvent.CALLSIGN_IS_INCORRECT";
      
      private var §521423122742312287123423632234§:Vector.<String>;
      
      public function CallsignCheckResultEvent(param1:String)
      {
         super(param1);
      }
      
      public function get freeUids() : Vector.<String>
      {
         return this.§521423122742312287123423632234§;
      }
      
      public function set freeUids(param1:Vector.<String>) : void
      {
         this.§521423122742312287123423632234§ = param1;
      }
   }
}

