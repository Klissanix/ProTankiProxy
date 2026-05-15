package §5214237228237241123423632234§
{
   import §5214231074231087123423632234§.CaptchaLocation;
   import alternativa.tanks.controller.events.CheckCaptchaAnswerEvent;
   import alternativa.tanks.controller.events.LoginEvent;
   import alternativa.tanks.service.§521423105832310596123423632234§;
   import §default use final§.Command;
   
   public class §break catch use§ extends Command
   {
      
      [Inject]
      public var §521423140032314016123423632234§:§521423105832310596123423632234§;
      
      [Inject]
      public var §in catch break§:LoginEvent;
      
      public function §break catch use§()
      {
         super();
      }
      
      override public function execute() : void
      {
         var _loc1_:LoginEvent = new LoginEvent("LoginEvent.LOGIN_AFTER_CAPTCHA_CHECKED",this.§in catch break§.callsign,this.§in catch break§.password,this.§in catch break§.rememberMe,this.§in catch break§.captchaAnswer);
         if(this.§521423140032314016123423632234§.loginCaptchaEnabled)
         {
            §do for get§(new CheckCaptchaAnswerEvent(this.§in catch break§.captchaAnswer,CaptchaLocation.LOGIN_FORM,_loc1_));
         }
         else
         {
            §do for get§(_loc1_);
         }
      }
   }
}

