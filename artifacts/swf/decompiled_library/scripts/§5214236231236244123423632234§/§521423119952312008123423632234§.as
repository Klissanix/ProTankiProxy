package §5214236231236244123423632234§
{
   import §5214231074231087123423632234§.CaptchaLocation;
   import alternativa.tanks.controller.events.CaptchaAnswerIsIncorrectEvent;
   import alternativa.tanks.controller.events.CaptchaUpdatedEvent;
   import alternativa.tanks.controller.events.CheckCaptchaAnswerEvent;
   import alternativa.tanks.controller.events.GetNewCaptchaEvent;
   import alternativa.tanks.controller.events.NavigationEvent;
   import alternativa.tanks.controller.events.PasswordRestoreCaptchaEvent;
   import alternativa.tanks.controller.events.PasswordRestoreResultEvent;
   import §default use final§.§5214232760232773123423632234§;
   import §extends package get§.§5214231794231807123423632234§;
   import §extends package get§.§52142353223545123423632234§;
   import §static switch in§.§521423113772311390123423632234§;
   
   public class §521423119952312008123423632234§ extends §5214232760232773123423632234§
   {
      
      [Inject]
      public var §extends var override§:§521423113772311390123423632234§;
      
      public function §521423119952312008123423632234§()
      {
         super();
      }
      
      private function §521423115022311515123423632234§(param1:PasswordRestoreResultEvent) : void
      {
         this.§extends var override§.§5214235438235451123423632234§();
      }
      
      private function §get use else§(param1:CaptchaAnswerIsIncorrectEvent) : void
      {
         this.§extends var override§.§5214234175234188123423632234§();
      }
      
      private function §521423126932312706123423632234§(param1:§5214231794231807123423632234§) : void
      {
         §do for get§(new GetNewCaptchaEvent(CaptchaLocation.RESTORE_PASSWORD_FORM));
      }
      
      override public function onRegister() : void
      {
         §5214234594234607123423632234§("PasswordRestoreCaptchaEvent.CAPTCHA",this.§5214233447233460123423632234§,PasswordRestoreCaptchaEvent);
         §5214234594234607123423632234§("NavigationEvent.GO_TO_LOGIN_FORM",§do for get§,NavigationEvent);
         §5214234594234607123423632234§("RefreshCaptchaClickedEvent.CLICKED",this.§521423126932312706123423632234§,§5214231794231807123423632234§);
         §521423128342312847123423632234§("EMAIL_DOES_NOT_EXISTS",this.§catch package if§,PasswordRestoreResultEvent);
         §521423128342312847123423632234§("RESTORE_MESSAGE_HAVE_BEEN_SENT",this.§521423115022311515123423632234§,PasswordRestoreResultEvent);
         §521423128342312847123423632234§("CaptchaUpdatedEvent.RESTORE_PASSWORD_FORM_CAPTCHA_UPDATED",this.§static set null§,CaptchaUpdatedEvent);
         §521423128342312847123423632234§("CaptchaAnswerIsIncorrectEvent",this.§get use else§);
      }
      
      private function §static set null§(param1:CaptchaUpdatedEvent) : void
      {
         this.§extends var override§.§521423125782312591123423632234§ = param1.image;
      }
      
      private function §5214233447233460123423632234§(param1:PasswordRestoreCaptchaEvent) : void
      {
         var _loc2_:§52142353223545123423632234§ = new §52142353223545123423632234§(param1.getEmail());
         §do for get§(new CheckCaptchaAnswerEvent(param1.getCaptchaAnswer(),CaptchaLocation.RESTORE_PASSWORD_FORM,_loc2_));
      }
      
      private function §catch package if§(param1:PasswordRestoreResultEvent) : void
      {
         this.§extends var override§.§5214237238237251123423632234§();
      }
   }
}

