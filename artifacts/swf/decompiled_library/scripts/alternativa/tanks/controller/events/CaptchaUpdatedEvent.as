package alternativa.tanks.controller.events
{
   import flash.display.Bitmap;
   import flash.events.Event;
   
   public class CaptchaUpdatedEvent extends Event
   {
      
      public static const STAND_ALONE_CAPTCHA_UPDATED:String = "CaptchaUpdatedEvent.STAND_ALONE_CAPTCHA_UPDATED";
      
      public static const LOGIN_FORM_CAPTCHA_UPDATED:String = "CaptchaUpdatedEvent.LOGIN_FORM_CAPTCHA_UPDATED";
      
      public static const REGISTRATION_FORM_CAPTCHA_UPDATED:String = "CaptchaUpdatedEvent.REGISTRATION_FORM_CAPTCHA_UPDATED";
      
      public static const RESTORE_PASSWORD_FORM_CAPTCHA_UPDATED:String = "CaptchaUpdatedEvent.RESTORE_PASSWORD_FORM_CAPTCHA_UPDATED";
      
      private var §5214231891231904123423632234§:Bitmap;
      
      public function CaptchaUpdatedEvent(param1:String, param2:Bitmap)
      {
         super(param1);
         this.§5214231891231904123423632234§ = param2;
      }
      
      public function get image() : Bitmap
      {
         return this.§5214231891231904123423632234§;
      }
   }
}

