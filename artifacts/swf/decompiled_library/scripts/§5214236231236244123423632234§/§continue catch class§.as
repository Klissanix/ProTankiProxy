package §5214236231236244123423632234§
{
   import §5214231074231087123423632234§.CaptchaLocation;
   import §5214233176233189123423632234§.StartExternalEntranceEvent;
   import alternativa.tanks.controller.events.AuthorizationFailedEvent;
   import alternativa.tanks.controller.events.CaptchaAnswerIsIncorrectEvent;
   import alternativa.tanks.controller.events.CaptchaUpdatedEvent;
   import alternativa.tanks.controller.events.GetNewCaptchaEvent;
   import alternativa.tanks.controller.events.LoginButtonPressed;
   import alternativa.tanks.controller.events.LoginEvent;
   import alternativa.tanks.controller.events.NavigationEvent;
   import §default use final§.§5214232760232773123423632234§;
   import §extends package get§.§5214231794231807123423632234§;
   import §static switch in§.§class const import§;
   
   public class §continue catch class§ extends §5214232760232773123423632234§
   {
      
      [Inject]
      public var §extends var override§:§class const import§;
      
      public function §continue catch class§()
      {
         super();
      }
      
      override public function onRegister() : void
      {
         §5214234594234607123423632234§("RefreshCaptchaClickedEvent.CLICKED",this.§521423126932312706123423632234§,§5214231794231807123423632234§);
         §5214234594234607123423632234§("LoginButtonPressed.EVENT_TYPE",this.§for var catch§,LoginButtonPressed);
         §5214234594234607123423632234§("NavigationEvent.GO_TO_REGISTRATION",§do for get§,NavigationEvent);
         §5214234594234607123423632234§("NavigationEvent.GO_TO_RESTORE_PASSWORD_FORM",§do for get§,NavigationEvent);
         §5214234594234607123423632234§("StartExternalEntranceEvent.START_LOGIN",this.§521423106402310653123423632234§,StartExternalEntranceEvent);
         §521423128342312847123423632234§("AuthorizationFailedEvent.PASSWORD_AUTHORIZATION_FAILED",this.§5214231970231983123423632234§,AuthorizationFailedEvent);
         §521423128342312847123423632234§("CaptchaUpdatedEvent.LOGIN_FORM_CAPTCHA_UPDATED",this.§static set null§,CaptchaUpdatedEvent);
         §521423128342312847123423632234§("CaptchaAnswerIsIncorrectEvent",this.§get use else§);
      }
      
      private function §5214231970231983123423632234§(param1:AuthorizationFailedEvent) : void
      {
         this.§extends var override§.§var switch native§();
      }
      
      private function §static set null§(param1:CaptchaUpdatedEvent) : void
      {
         this.§extends var override§.§52142367023683123423632234§();
         this.§extends var override§.§521423125782312591123423632234§ = param1.image;
      }
      
      private function §521423106402310653123423632234§(param1:StartExternalEntranceEvent) : void
      {
         §do for get§(param1);
      }
      
      private function §521423126932312706123423632234§(param1:§5214231794231807123423632234§) : void
      {
         §do for get§(new GetNewCaptchaEvent(CaptchaLocation.LOGIN_FORM));
      }
      
      private function §for var catch§(param1:LoginButtonPressed) : void
      {
         §do for get§(new LoginEvent("LoginEvent.CHECK_CAPTCHA_AND_LOGIN",this.§extends var override§.§5214238974238987123423632234§,this.§extends var override§.§521423104532310466123423632234§,this.§extends var override§.§5214232482232495123423632234§,this.§extends var override§.§52142310723120123423632234§));
      }
      
      private function §get use else§(param1:CaptchaAnswerIsIncorrectEvent) : void
      {
         this.§extends var override§.§5214234175234188123423632234§();
      }
   }
}

