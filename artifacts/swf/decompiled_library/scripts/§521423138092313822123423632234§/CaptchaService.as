package §521423138092313822123423632234§
{
   import §5214231074231087123423632234§.CaptchaLocation;
   import alternativa.tanks.controller.events.CaptchaUpdatedEvent;
   import alternativa.tanks.service.§521423105832310596123423632234§;
   import alternativa.tanks.service.IEntranceServerFacade;
   import §default use final§.§5214231093231106123423632234§;
   import flash.display.Bitmap;
   import flash.utils.Dictionary;
   import §get package override§.CaptchaParser;
   
   public class CaptchaService extends §5214231093231106123423632234§ implements §521423105832310596123423632234§
   {
      
      public static var §dynamic use case§:IEntranceServerFacade;
      
      private var §class use function§:Dictionary = new Dictionary();
      
      private var §do use with§:Dictionary = new Dictionary();
      
      public function CaptchaService()
      {
         super();
      }
      
      public function setNewCaptchaBytes(param1:Vector.<int>, param2:CaptchaLocation) : void
      {
         this.§do use with§[param2] = true;
         CaptchaParser.parse(param1,this.d48fdc9b,param2);
      }
      
      public function get loginCaptchaEnabled() : Boolean
      {
         return Boolean(this.§do use with§[CaptchaLocation.LOGIN_FORM]);
      }
      
      public function answerCorrect(param1:CaptchaLocation) : void
      {
         this.§class use function§[param1].apply();
      }
      
      public function checkAnswer(param1:CaptchaLocation, param2:String, param3:Function) : void
      {
         this.§class use function§[param1] = param3;
         §dynamic use case§.checkCaptcha(param2,param1);
      }
      
      private function d48fdc9b(param1:Bitmap, param2:CaptchaLocation) : void
      {
         switch(param2)
         {
            case CaptchaLocation.CLIENT_STARTUP:
               §do for get§(new CaptchaUpdatedEvent("CaptchaUpdatedEvent.STAND_ALONE_CAPTCHA_UPDATED",param1));
               break;
            case CaptchaLocation.LOGIN_FORM:
               §do for get§(new CaptchaUpdatedEvent("CaptchaUpdatedEvent.LOGIN_FORM_CAPTCHA_UPDATED",param1));
               break;
            case CaptchaLocation.REGISTER_FORM:
               §do for get§(new CaptchaUpdatedEvent("CaptchaUpdatedEvent.REGISTRATION_FORM_CAPTCHA_UPDATED",param1));
               break;
            case CaptchaLocation.RESTORE_PASSWORD_FORM:
               §do for get§(new CaptchaUpdatedEvent("CaptchaUpdatedEvent.RESTORE_PASSWORD_FORM_CAPTCHA_UPDATED",param1));
         }
      }
   }
}

