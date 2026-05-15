package §521423138092313822123423632234§
{
   import §5214231074231087123423632234§.CaptchaLocation;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214233176233189123423632234§.NavigationExternalEvent;
   import §5214237330237343123423632234§.§continue switch static§;
   import alternativa.tanks.controller.events.AuthorizationFailedEvent;
   import alternativa.tanks.controller.events.CallsignCheckResultEvent;
   import alternativa.tanks.controller.events.CaptchaAnswerIsIncorrectEvent;
   import alternativa.tanks.controller.events.EmailCheckResultEvent;
   import alternativa.tanks.controller.events.EntranceErrorEvent;
   import alternativa.tanks.controller.events.InviteCheckResultEvent;
   import alternativa.tanks.controller.events.NavigationEvent;
   import alternativa.tanks.controller.events.PasswordRestoreResultEvent;
   import alternativa.tanks.controller.events.RegistrationFailedEvent;
   import alternativa.tanks.controller.events.SetPasswordChangeResultEvent;
   import alternativa.tanks.model.EntranceServerParamsModel;
   import alternativa.tanks.model.RegistrationBackgroundModel;
   import alternativa.tanks.service.§521423105832310596123423632234§;
   import alternativa.tanks.service.IEntranceClientFacade;
   import §default use final§.§5214231093231106123423632234§;
   import §import set with§.ShowBlockValidationAlertEvent;
   import §import set with§.ShowChangeEmailAndPasswordFormEvent;
   import §import set with§.ShowConfirmEmailAlertEvent;
   import §import set with§.ShowLoginFormEvent;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import §while use for§.ConfirmEmailStatus;
   
   public class EntranceClientFacade extends §5214231093231106123423632234§ implements IEntranceClientFacade
   {
      
      [Inject]
      public var §52142384823861123423632234§:RegistrationBackgroundModel;
      
      [Inject]
      public var §in const implements§:EntranceServerParamsModel;
      
      [Inject]
      public var §521423140032314016123423632234§:§521423105832310596123423632234§;
      
      public function EntranceClientFacade()
      {
         super();
      }
      
      public function inviteIsFree() : void
      {
         §do for get§(new ShowLoginFormEvent("",true,false));
      }
      
      public function callsignIsFree() : void
      {
         §do for get§(new CallsignCheckResultEvent("CallsignCheckResultEvent.CALLSIGN_IS_FREE"));
      }
      
      public function partnerWrongPassword() : void
      {
         §do for get§(new AuthorizationFailedEvent("AuthorizationFailedEvent.PARTNER_PASSWORD_AUTHORIZATION_FAILED"));
      }
      
      public function setPasswordChangeResult(param1:Boolean, param2:String) : void
      {
         §do for get§(new SetPasswordChangeResultEvent(param1,param2));
      }
      
      public function kickValidationAlert(param1:String, param2:int, param3:int, param4:int) : void
      {
         §do for get§(new ShowBlockValidationAlertEvent("ShowBlockValidationAlertEvent.YOU_WERE_KICKED",param1,param2,param3,param4));
      }
      
      public function wrongPasswordExternalEntrance() : void
      {
         §do for get§(new AuthorizationFailedEvent("AuthorizationFailedEvent.PASSWORD_EXTERNAL_AUTHORIZATION_FAILED"));
      }
      
      public function goToLoginForm() : void
      {
         §do for get§(new NavigationEvent("NavigationEvent.GO_TO_LOGIN_FORM"));
      }
      
      public function set entranceObject(param1:§521423120252312038123423632234§) : void
      {
         §do for get§(new NavigationEvent("NavigationEvent.GO_TO_STAND_ALONE_CAPTCHA"));
      }
      
      public function externalLinkAlreadyExists() : void
      {
         §do for get§(new AuthorizationFailedEvent("AuthorizationFailedEvent.EXTERNAL_LINK_ALREADY_EXISTS"));
      }
      
      public function callsignIsIncorrect() : void
      {
         §do for get§(new CallsignCheckResultEvent("CallsignCheckResultEvent.CALLSIGN_IS_INCORRECT"));
      }
      
      public function registrationPasswordIsIncorrect() : void
      {
         §do for get§(new RegistrationFailedEvent("RegistrationFailedEvent.PASSWORD_IS_INCORRECT"));
      }
      
      public function callsignIsBusy(param1:Vector.<String>) : void
      {
         var _loc2_:CallsignCheckResultEvent = new CallsignCheckResultEvent("CallsignCheckResultEvent.CALLSIGN_IS_BUSY");
         _loc2_.freeUids = param1;
         §do for get§(_loc2_);
      }
      
      public function hideView() : void
      {
         §do for get§(new §continue switch static§("shutdown"));
      }
      
      public function serverHalt() : void
      {
         if(!this.§in const implements§.serverHalt)
         {
            this.§in const implements§.serverHalt = true;
            §do for get§(new EntranceErrorEvent("EntranceErrorEvent.SERVER_HALT"));
         }
      }
      
      public function confirmEmailStatus(param1:ConfirmEmailStatus) : void
      {
         §do for get§(new ShowConfirmEmailAlertEvent(param1));
      }
      
      public function emailNotFound() : void
      {
         §do for get§(new PasswordRestoreResultEvent("EMAIL_DOES_NOT_EXISTS"));
      }
      
      public function emailWithPasswordSuccessfullySent(param1:String) : void
      {
         this.goToLoginForm();
      }
      
      public function captchaUpdated(param1:CaptchaLocation, param2:Vector.<int>) : void
      {
         this.§521423140032314016123423632234§.setNewCaptchaBytes(param2,param1);
      }
      
      public function captchaAnswerCorrect(param1:CaptchaLocation) : void
      {
         this.§521423140032314016123423632234§.answerCorrect(param1);
      }
      
      public function captchaAnswerIncorrect(param1:CaptchaLocation, param2:Vector.<int>) : void
      {
         §do for get§(new CaptchaAnswerIsIncorrectEvent());
         this.§521423140032314016123423632234§.setNewCaptchaBytes(param2,param1);
      }
      
      public function emailIsBusy() : void
      {
         §do for get§(new EmailCheckResultEvent("EmailCheckResultEvent.EMAIL_IS_BUSY"));
      }
      
      public function goToExternalLoginForm(param1:String) : void
      {
         §do for get§(new NavigationExternalEvent("NavigationExternalEvent.GO_TO_EXTERNAL_LOGIN_FORM",param1));
      }
      
      public function emailDomainIsForbidden() : void
      {
         §do for get§(new EmailCheckResultEvent("EmailCheckResultEvent.EMAIL_DOMAIN_IS_FORBIDDEN"));
      }
      
      public function emailWithRestoreLinkSuccessfullySent() : void
      {
         §do for get§(new PasswordRestoreResultEvent("RESTORE_MESSAGE_HAVE_BEEN_SENT"));
      }
      
      public function setCaptchaLocations(param1:Vector.<CaptchaLocation>) : void
      {
         this.§in const implements§.standAloneCaptchaEnabled = param1.indexOf(CaptchaLocation.CLIENT_STARTUP) != -1;
         this.§in const implements§.registrationCaptchaEnabled = param1.indexOf(CaptchaLocation.REGISTER_FORM) != -1;
         this.§in const implements§.loginCaptchaEnabled = param1.indexOf(CaptchaLocation.LOGIN_FORM) != -1;
      }
      
      public function set inviteEnabled(param1:Boolean) : void
      {
         this.§in const implements§.inviteEnabled = param1;
      }
      
      public function externalValidationFailed() : void
      {
         §do for get§(new AuthorizationFailedEvent("AuthorizationFailedEvent.EXTERNAL_VALIDATION_FAILED"));
      }
      
      public function set registrationFormBackgroundResource(param1:§include catch with§) : void
      {
         this.§52142384823861123423632234§.rgbResource = param1;
      }
      
      public function goToExternalRegistrationForm(param1:String) : void
      {
         §do for get§(new NavigationExternalEvent("NavigationExternalEvent.GO_TO_EXTERNAL_REGISTRATION_FORM",param1));
      }
      
      public function goToChangePasswordAndEmailForm(param1:String) : void
      {
         §do for get§(new ShowChangeEmailAndPasswordFormEvent(param1));
      }
      
      public function blockValidationAlert(param1:String) : void
      {
         §do for get§(new ShowBlockValidationAlertEvent("ShowBlockValidationAlertEvent.YOU_WERE_BLOCKED",param1));
      }
      
      public function emailIsInvalid() : void
      {
         §do for get§(new EmailCheckResultEvent("EmailCheckResultEvent.EMAIL_IS_INVALID"));
      }
      
      public function inviteNotFound() : void
      {
         §do for get§(new InviteCheckResultEvent("INVITE_CODE_DOES_NOT_EXIST"));
      }
      
      public function inviteAlreadyActivated(param1:String) : void
      {
         §do for get§(new ShowLoginFormEvent(param1,false,false));
      }
      
      public function partnerLinkAlreadyExists() : void
      {
         §do for get§(new AuthorizationFailedEvent("AuthorizationFailedEvent.PARTNER_LINK_ALREADY_EXISTS"));
      }
      
      public function wrongPassword() : void
      {
         §do for get§(new AuthorizationFailedEvent("AuthorizationFailedEvent.PASSWORD_AUTHORIZATION_FAILED"));
      }
      
      public function set registrationThroughEmail(param1:Boolean) : void
      {
         this.§in const implements§.registrationThroughEmail = param1;
      }
   }
}

