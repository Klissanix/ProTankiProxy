package projects.tanks.clients.flash.commons.services.validate
{
   public interface IValidateService
   {
      
      function isValidIdentificationStringForLogin(param1:String) : Boolean;
      
      function isValidIdentificationStringForRegistration(param1:String) : Boolean;
      
      function isEmailValid(param1:String) : Boolean;
      
      function isUidValid(param1:String) : Boolean;
      
      function isValidPromoCode(param1:String) : Boolean;
   }
}

