package alternativa.tanks.controller.events
{
   import flash.events.Event;
   
   public class SetPasswordChangeResultEvent extends Event
   {
      
      public static const SET:String = "SetPasswordChangeResultEvent.SET";
      
      public var error:String;
      
      public var §521423130832313096123423632234§:Boolean;
      
      public function SetPasswordChangeResultEvent(param1:Boolean, param2:String)
      {
         this.§521423130832313096123423632234§ = param1;
         this.error = param2;
         super("SetPasswordChangeResultEvent.SET");
      }
   }
}

