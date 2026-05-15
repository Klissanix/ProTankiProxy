package §5214237228237241123423632234§
{
   import §5214231074231087123423632234§.CaptchaLocation;
   import alternativa.tanks.controller.events.CheckCaptchaAnswerEvent;
   import alternativa.tanks.controller.events.RegisterEvent;
   import alternativa.tanks.model.EntranceServerParamsModel;
   import §default use final§.Command;
   
   public class §521423135592313572123423632234§ extends Command
   {
      
      [Inject]
      public var §in catch break§:RegisterEvent;
      
      [Inject]
      public var §in const implements§:EntranceServerParamsModel;
      
      public function §521423135592313572123423632234§()
      {
         super();
      }
      
      override public function execute() : void
      {
         var _loc1_:RegisterEvent = new RegisterEvent("RegisterEvent.REGISTER_AFTER_CAPTCHA_CHECKED",this.§in catch break§.callsign,this.§in catch break§.email,this.§in catch break§.password,this.§in catch break§.rememberMe,this.§in catch break§.captchaAnswer);
         if(this.§in const implements§.registrationCaptchaEnabled)
         {
            §do for get§(new CheckCaptchaAnswerEvent(this.§in catch break§.captchaAnswer,CaptchaLocation.REGISTER_FORM,_loc1_));
         }
         else
         {
            §do for get§(_loc1_);
         }
      }
   }
}

