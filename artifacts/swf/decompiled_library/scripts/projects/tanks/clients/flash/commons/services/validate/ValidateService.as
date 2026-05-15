package projects.tanks.clients.flash.commons.services.validate
{
   public class ValidateService implements IValidateService
   {
      
      public static const §521423117192311732123423632234§:String = "[a-z0-9A-Z]";
      
      public static const §do var implements§:RegExp = /^[a-zA-Z0-9]([\-\_\.]?[a-zA-Z0-9\*]+)*@[a-zA-Z0-9]([\-\_\.]?[a-zA-Z0-9*]+)*\.[a-zA-Z]{2,}$/i;
      
      public static const §final set in§:RegExp = /^[a-z0-9](([\.\-\w](?!(-|_|\.){2,}))*[a-z0-9])?$/i;
      
      public static const §5214235670235683123423632234§:RegExp = /[^0-9a-zA-Z\.\-\_]/gi;
      
      public static const §5214233091233104123423632234§:RegExp = /[^0-9a-zA-Z@\.\-\_]/gi;
      
      public function ValidateService()
      {
         super();
      }
      
      public function isValidIdentificationStringForRegistration(param1:String) : Boolean
      {
         return param1.match(§5214235670235683123423632234§).length == 0;
      }
      
      public function isValidPromoCode(param1:String) : Boolean
      {
         return param1.search("[a-z0-9A-Z]") == 0;
      }
      
      public function isValidIdentificationStringForLogin(param1:String) : Boolean
      {
         return param1.match(§5214233091233104123423632234§).length == 0;
      }
      
      public function isUidValid(param1:String) : Boolean
      {
         return param1.match(§final set in§) != null && param1.length >= 2;
      }
      
      public function isEmailValid(param1:String) : Boolean
      {
         return param1.match(§do var implements§) != null;
      }
   }
}

