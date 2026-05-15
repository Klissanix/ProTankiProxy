package alternativa.tanks.service
{
   import §5214231074231087123423632234§.CaptchaLocation;
   
   public interface IEntranceServerFacade
   {
      
      function checkCaptcha(param1:String, param2:CaptchaLocation) : void;
      
      function sendEmailRestoreMessage(param1:String) : void;
      
      function startExternalLoginUser(param1:String, param2:Boolean, param3:String) : void;
      
      function checkCallsign(param1:String) : void;
      
      function login(param1:String, param2:String, param3:Boolean) : void;
      
      function checkInviteCode(param1:String) : void;
      
      function finishExternalRegisterUser(param1:String, param2:String) : void;
      
      function startExternalRegisterUser(param1:String, param2:Boolean, param3:String) : void;
      
      function changePasswordAndEmail(param1:String, param2:String) : void;
      
      function loginByHash(param1:String) : void;
      
      function registerUserThroughPassword(param1:String, param2:String, param3:String, param4:Boolean, param5:String, param6:String) : void;
      
      function getNewCaptcha(param1:CaptchaLocation) : void;
      
      function loginExternal(param1:String, param2:String) : void;
   }
}

