package §try const native§
{
   import §521423106142310627123423632234§.AlertAnswer;
   import §5214237056237069123423632234§.SocialNetworkNameUtils;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.socialnetwork.ISocialNetworkPanelService;
   import alternativa.tanks.service.socialnetwork.SocialNetworkServiceEvent;
   import §class catch implements§.§521423114432311456123423632234§;
   import §class catch implements§.§return finally catch§;
   import §class catch implements§.§static switch switch§;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   
   public class SocialNetworkPanelModel extends §521423114432311456123423632234§ implements §static switch switch§, §do set function§, §throw catch var§
   {
      
      public static var §extends switch for§:ISocialNetworkPanelService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §break use do§:IAlertService;
      
      public function SocialNetworkPanelModel()
      {
         super();
      }
      
      public function unlinkSuccess(param1:String) : void
      {
         §extends switch for§.method_2360(param1);
         §break use do§.showAlert(§5214236363236376123423632234§.getText("ALERT_ACCOUNT_UNLINKED",SocialNetworkNameUtils.makeSocialNetworkNameFromId(param1)),Vector.<String>([§5214236363236376123423632234§.getText(AlertAnswer.OK)]));
      }
      
      public function objectUnloaded() : void
      {
         §extends switch for§.removeEventListener("SocialNetworkServiceEvent.CREATE_LINK",this.f47c74c8);
         §extends switch for§.removeEventListener("SocialNetworkServiceEvent.UNLINK",this.d2039083);
      }
      
      public function objectLoaded() : void
      {
         §extends switch for§.passwordCreated = §switch var switch§().§dynamic catch class§;
         §extends switch for§.vkLinkExists = this.a20f453b("vkontakte");
         §extends switch for§.facebookLinkExists = this.a20f453b("facebook");
         §extends switch for§.googleLinkExists = this.a20f453b("google");
         §extends switch for§.addEventListener("SocialNetworkServiceEvent.CREATE_LINK",this.f47c74c8);
         §extends switch for§.addEventListener("SocialNetworkServiceEvent.UNLINK",this.d2039083);
      }
      
      private function d2039083(param1:SocialNetworkServiceEvent) : void
      {
         if(§extends switch for§.passwordCreated)
         {
            §521423120492312062123423632234§.§5214236873236886123423632234§(param1.socialNetworkId);
         }
         else
         {
            §break use do§.showAlert(§5214236363236376123423632234§.getText("ALERT_ACCOUNT_CANT_BE_UNLINKED",SocialNetworkNameUtils.makeSocialNetworkNameFromId(param1.socialNetworkId)),Vector.<String>([§5214236363236376123423632234§.getText(AlertAnswer.OK)]));
         }
      }
      
      public function linkAlreadyExists(param1:String) : void
      {
         §break use do§.showAlert(§5214236363236376123423632234§.getText("ALERT_ACCOUNT_ALREADY_LINKED",SocialNetworkNameUtils.makeSocialNetworkNameFromId(param1)),Vector.<String>([§5214236363236376123423632234§.getText(AlertAnswer.OK)]));
      }
      
      private function f47c74c8(param1:SocialNetworkServiceEvent) : void
      {
         this.f96d84e(this.a3652667(param1.socialNetworkId));
      }
      
      private function f96d84e(param1:String) : void
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
      
      private function a20f453b(param1:String) : Boolean
      {
         var _loc2_:§return finally catch§ = null;
         for each(_loc2_ in §switch var switch§().§521423107962310809123423632234§)
         {
            if(_loc2_.§5214235996236009123423632234§ == param1)
            {
               return _loc2_.§5214235857235870123423632234§;
            }
         }
         return false;
      }
      
      public function linkCreated(param1:String) : void
      {
         §extends switch for§.method_1669(param1);
         §break use do§.showAlert(§5214236363236376123423632234§.getText("ALERT_ACCOUNT_SUCCESS_LINKED"),Vector.<String>([§5214236363236376123423632234§.getText(AlertAnswer.OK)]));
      }
      
      public function validationFailed() : void
      {
         §break use do§.showAlert(§5214236363236376123423632234§.getText("ALERT_ACCOUNT_LINKING_ERROR"),Vector.<String>([§5214236363236376123423632234§.getText(AlertAnswer.OK)]));
      }
      
      private function a3652667(param1:String) : String
      {
         var _loc2_:§return finally catch§ = null;
         for each(_loc2_ in §switch var switch§().§521423107962310809123423632234§)
         {
            if(_loc2_.§5214235996236009123423632234§ == param1)
            {
               return _loc2_.§5214234337234350123423632234§;
            }
         }
         return "";
      }
   }
}

