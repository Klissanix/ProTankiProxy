package §5214237056237069123423632234§
{
   import alternativa.osgi.service.locale.ILocaleService;
   
   public class SocialNetworkNameUtils
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public function SocialNetworkNameUtils()
      {
         super();
      }
      
      public static function makeSocialNetworkNameFromId(param1:String) : String
      {
         switch(param1)
         {
            case "vkontakte":
               return §5214236363236376123423632234§.getText("STRING_VKONTAKTE_NAME");
            case "facebook":
               return §5214236363236376123423632234§.getText("STRING_FACEBOOK_NAME");
            default:
               return param1.substr(0,1).toUpperCase() + param1.substr(1);
         }
      }
   }
}

