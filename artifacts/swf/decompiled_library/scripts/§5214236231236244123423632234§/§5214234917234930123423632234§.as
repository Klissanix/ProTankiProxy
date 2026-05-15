package §5214236231236244123423632234§
{
   import §5214231074231087123423632234§.CaptchaLocation;
   import §5214233176233189123423632234§.StartExternalEntranceEvent;
   import alternativa.tanks.controller.events.GetNewCaptchaEvent;
   import alternativa.tanks.controller.events.NavigationEvent;
   import alternativa.tanks.controller.events.RegisterEvent;
   import §default use final§.§5214232760232773123423632234§;
   import §extends package get§.§5214231794231807123423632234§;
   import §extends package get§.§try var do§;
   import §static switch in§.§with switch each§;
   
   public class §5214234917234930123423632234§ extends §5214232760232773123423632234§
   {
      
      [Inject]
      public var §extends var override§:§with switch each§;
      
      public function §5214234917234930123423632234§()
      {
         super();
      }
      
      private function §package var do§(param1:StartExternalEntranceEvent) : void
      {
         §do for get§(param1);
      }
      
      override public function onRegister() : void
      {
         §5214234594234607123423632234§("NavigationEvent.GO_TO_LOGIN_FORM",§do for get§,NavigationEvent);
         §5214234594234607123423632234§("StartExternalEntranceEvent.START_REGISTRATION",this.§package var do§,StartExternalEntranceEvent);
         §5214234594234607123423632234§("RefreshCaptchaClickedEvent.CLICKED",this.§521423126932312706123423632234§);
         §5214234594234607123423632234§("RegistrationFormEvent.CLICK_REGISTRATION_BUTTON",this.§5214232466232479123423632234§);
      }
      
      private function §521423126932312706123423632234§(param1:§5214231794231807123423632234§) : void
      {
         §do for get§(new GetNewCaptchaEvent(CaptchaLocation.REGISTER_FORM));
      }
      
      private function §5214232466232479123423632234§(param1:§try var do§) : void
      {
         §do for get§(new RegisterEvent("RegisterEvent.CHECK_CAPTCHA_AND_REGISTER",this.§extends var override§.§5214238974238987123423632234§,this.§extends var override§.§break final§,this.§extends var override§.§521423104532310466123423632234§,this.§extends var override§.§5214232482232495123423632234§,this.§extends var override§.§52142310723120123423632234§));
      }
   }
}

