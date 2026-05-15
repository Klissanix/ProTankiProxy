package alternativa.tanks.controller.events
{
   import §5214231074231087123423632234§.CaptchaLocation;
   import flash.events.Event;
   
   public class CheckCaptchaAnswerEvent extends Event
   {
      
      public static const EVENT_TYPE:String = "CheckCaptchaAnswerEvent.CHECK";
      
      private var §521423132962313309123423632234§:String;
      
      private var §while true§:CaptchaLocation;
      
      private var §5214238966238979123423632234§:Event;
      
      public function CheckCaptchaAnswerEvent(param1:String, param2:CaptchaLocation, param3:Event)
      {
         super("CheckCaptchaAnswerEvent.CHECK");
         this.§521423132962313309123423632234§ = param1;
         this.§while true§ = param2;
         this.§5214238966238979123423632234§ = param3;
      }
      
      public function get location() : CaptchaLocation
      {
         return this.§while true§;
      }
      
      public function get captchaAnswer() : String
      {
         return this.§521423132962313309123423632234§;
      }
      
      public function get onSuccessEvent() : Event
      {
         return this.§5214238966238979123423632234§;
      }
   }
}

