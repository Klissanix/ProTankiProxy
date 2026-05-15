package alternativa.tanks.controller.events
{
   import §5214231074231087123423632234§.CaptchaLocation;
   import flash.events.Event;
   
   public class GetNewCaptchaEvent extends Event
   {
      
      public static const GET_CAPTCHA:String = "GetNewCaptchaEvent.GET_CAPTCHA";
      
      private var §while true§:CaptchaLocation;
      
      public function GetNewCaptchaEvent(param1:CaptchaLocation)
      {
         super("GetNewCaptchaEvent.GET_CAPTCHA");
         this.§while true§ = param1;
      }
      
      public function get location() : CaptchaLocation
      {
         return this.§while true§;
      }
   }
}

