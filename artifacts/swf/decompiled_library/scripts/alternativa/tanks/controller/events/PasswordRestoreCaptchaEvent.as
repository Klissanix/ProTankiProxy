package alternativa.tanks.controller.events
{
   import flash.events.Event;
   
   public class PasswordRestoreCaptchaEvent extends Event
   {
      
      public static const CAPTCHA:String = "PasswordRestoreCaptchaEvent.CAPTCHA";
      
      private var captchaAnswer:String;
      
      private var email:String;
      
      public function PasswordRestoreCaptchaEvent(param1:String, param2:String)
      {
         super("PasswordRestoreCaptchaEvent.CAPTCHA");
         this.captchaAnswer = param1;
         this.email = param2;
      }
      
      public function getEmail() : String
      {
         return this.email;
      }
      
      public function getCaptchaAnswer() : String
      {
         return this.captchaAnswer;
      }
   }
}

