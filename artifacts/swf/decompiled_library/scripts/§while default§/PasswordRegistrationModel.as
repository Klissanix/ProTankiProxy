package §while default§
{
   import §521423106142310627123423632234§.AlertAnswer;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.IEntranceClientFacade;
   import alternativa.tanks.service.IPasswordParamsService;
   import platform.client.fp10.core.model.§do set function§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import §try for else§.RegistrationModelBase;
   import §try for else§.RegistrationModelCC;
   import §try for else§.§with null§;
   
   public class PasswordRegistrationModel extends RegistrationModelBase implements §with null§, §521423132342313247123423632234§, §do set function§
   {
      
      public static var §if for native§:IEntranceClientFacade;
      
      public static var §521423104232310436123423632234§:IPasswordParamsService;
      
      public static var §break use do§:IAlertService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public function PasswordRegistrationModel()
      {
         super();
      }
      
      public function enteredUidIsIncorrect() : void
      {
         §if for native§.callsignIsIncorrect();
      }
      
      public function enteredUidIsFree() : void
      {
         §if for native§.callsignIsFree();
      }
      
      public function register(param1:String, param2:String, param3:String, param4:Boolean, param5:String, param6:String) : void
      {
         server.register(param1,param2,param4);
      }
      
      public function enteredUidIsBusy(param1:Vector.<String>) : void
      {
         §if for native§.callsignIsBusy(param1);
      }
      
      public function registrationFailed() : void
      {
         §break use do§.showAlert("Registration failed. Try again.",Vector.<String>([§5214236363236376123423632234§.getText(AlertAnswer.OK)]));
      }
      
      public function passwordIsIncorrect() : void
      {
         §if for native§.registrationPasswordIsIncorrect();
      }
      
      public function objectLoaded() : void
      {
         var _loc1_:RegistrationModelCC = getInitParam();
         §521423104232310436123423632234§.minPasswordLength = _loc1_.minPasswordLength;
         §521423104232310436123423632234§.maxPasswordLength = _loc1_.maxPasswordLength;
         if(§if for native§ != null)
         {
            §if for native§.registrationFormBackgroundResource = _loc1_.§5214235085235098123423632234§;
         }
      }
      
      public function checkCallsign(param1:String) : void
      {
         server.checkUid(param1);
      }
      
      public function anchorRegistration() : void
      {
      }
   }
}

