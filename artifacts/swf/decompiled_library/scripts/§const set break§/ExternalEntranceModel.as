package §const set break§
{
   import §521423106142310627123423632234§.AlertAnswer;
   import §5214237056237069123423632234§.SocialNetworkNameUtils;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.IEntranceClientFacade;
   import alternativa.tanks.service.IExternalEntranceService;
   import §do switch dynamic§.ExternalEntranceModelBase;
   import §do switch dynamic§.SocialNetworkEntranceParams;
   import §do switch dynamic§.§default catch import§;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import platform.client.fp10.core.model.§do set function§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   
   public class ExternalEntranceModel extends ExternalEntranceModelBase implements §default catch import§, §do set function§, §521423120242312037123423632234§
   {
      
      public static var §include package default§:IExternalEntranceService;
      
      public static var §5214239171239184123423632234§:IEntranceClientFacade;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §break use do§:IAlertService;
      
      private var §5214232050232063123423632234§:Boolean;
      
      private var §default use include§:Boolean;
      
      private var §dynamic set use§:String;
      
      public function ExternalEntranceModel()
      {
         super();
      }
      
      private static function f96d84e(param1:String) : void
      {
         if(ExternalInterface.available)
         {
            ExternalInterface.call("newPopup",param1);
         }
         else
         {
            navigateToURL(new URLRequest(param1));
         }
      }
      
      public function objectLoaded() : void
      {
         var _loc1_:SocialNetworkEntranceParams = null;
         for each(_loc1_ in getInitParam().§521423107962310809123423632234§)
         {
            §include package default§.setEnabled(_loc1_.§5214235996236009123423632234§,true);
         }
      }
      
      public function startExternalRegisterUser(param1:String, param2:Boolean, param3:String) : void
      {
         this.§5214232050232063123423632234§ = true;
         this.§default use include§ = false;
         this.d5ba5200(param1,param2,param3);
      }
      
      public function finishExternalRegisterUser(param1:String, param2:String) : void
      {
         server.registerNewUser(param1);
      }
      
      public function login(param1:String, param2:String) : void
      {
         server.createLinkForExistingUser(param1,param2);
      }
      
      public function startExternalLoginUser(param1:String, param2:Boolean, param3:String) : void
      {
         this.§default use include§ = true;
         this.§5214232050232063123423632234§ = false;
         this.d5ba5200(param1,param2,param3);
      }
      
      private function d5ba5200(param1:String, param2:Boolean, param3:String) : void
      {
         this.§dynamic set use§ = param1;
         server.setLoginData(param2);
         f96d84e(this.a3652667(param1));
      }
      
      public function wrongPassword() : void
      {
         §5214239171239184123423632234§.wrongPasswordExternalEntrance();
      }
      
      public function validationFailed() : void
      {
         §break use do§.showAlert(§5214236363236376123423632234§.getText("ALERT_ERROR_EXTERNAL_ENTER"),Vector.<String>([§5214236363236376123423632234§.getText(AlertAnswer.OK)]));
         §5214239171239184123423632234§.externalValidationFailed();
      }
      
      public function linkAlreadyExists() : void
      {
         §break use do§.showAlert(§5214236363236376123423632234§.getText("ALERT_GAME_ACCOUNT_ALREADY_LINKED",SocialNetworkNameUtils.makeSocialNetworkNameFromId(this.§dynamic set use§)),Vector.<String>([§5214236363236376123423632234§.getText(AlertAnswer.OK)]));
         §5214239171239184123423632234§.externalLinkAlreadyExists();
      }
      
      public function validationSuccess() : void
      {
         if(this.§5214232050232063123423632234§)
         {
            this.§5214232050232063123423632234§ = false;
            §5214239171239184123423632234§.goToExternalRegistrationForm(this.§dynamic set use§);
         }
         if(this.§default use include§)
         {
            this.§default use include§ = false;
            §5214239171239184123423632234§.goToExternalLoginForm(this.§dynamic set use§);
         }
      }
      
      private function a3652667(param1:String) : String
      {
         var _loc2_:SocialNetworkEntranceParams = null;
         for each(_loc2_ in getInitParam().§521423107962310809123423632234§)
         {
            if(_loc2_.§5214235996236009123423632234§ == param1)
            {
               return _loc2_.§5214234337234350123423632234§;
            }
         }
         return null;
      }
   }
}

