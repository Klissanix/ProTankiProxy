package projects.tanks.clients.flash.commons.services.battlelinkactivator
{
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.events.EventDispatcher;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.AlertServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.IBlurService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   
   public class BattleLinkActivatorService extends EventDispatcher implements IBattleLinkActivatorService
   {
      
      public static var §continue for final§:ILobbyLayoutService;
      
      public static var §with catch override§:IBlurService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §5214238240238253123423632234§:IDialogWindowsDispatcherService;
      
      public static var §break use do§:IAlertService;
      
      public static var §if catch include§:IStorageService;
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §true switch package§:IUserPropertiesService;
      
      private var §finally catch dynamic§:String;
      
      private var §override catch null§:Boolean;
      
      public function BattleLinkActivatorService()
      {
         super();
      }
      
      private function d188270(param1:Boolean) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            _loc2_ = §5214236363236376123423632234§.getText("STRING_ALERT_GOT_TO_BATTLE_IS_UNAVAILABLE_RANK");
            §break use do§.showAlert(_loc2_,Vector.<String>([§5214236363236376123423632234§.getText("STRING_GO_TO_BATTLE_LABEL"),§5214236363236376123423632234§.getText("STRING_DECLINE_LABEL")]));
            §break use do§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.d70c5b13);
         }
         else
         {
            this.fcbd6ef(this.§finally catch dynamic§,this.§override catch null§);
         }
      }
      
      public function isAlive(param1:String) : void
      {
         dispatchEvent(new BattleLinkAliveEvent("BattleLinkAliveEvent.IS_ALIVE",param1));
      }
      
      public function dead(param1:String) : void
      {
         dispatchEvent(new BattleLinkAliveEvent("BattleLinkAliveEvent.DEAD",param1));
      }
      
      private function d70c5b13(param1:AlertServiceEvent) : void
      {
         §break use do§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.d70c5b13);
         this.e49b596b(param1,§5214236363236376123423632234§.getText("STRING_GO_TO_BATTLE_LABEL"),§5214236363236376123423632234§.getText("STRING_DECLINE_LABEL"));
      }
      
      private function b2bd83a9() : void
      {
         var _loc1_:String = §true switch package§.userName;
         §if catch include§.getStorage().data.showAlertDeadBattle = _loc1_ + "_true";
      }
      
      public function activateLink(param1:String) : void
      {
         this.b2bd83a9();
         dispatchEvent(new BattleLinkActivatorServiceEvent("BattleLinkActivatorServiceEvent.ACTIVATE_LINK",param1));
      }
      
      public function navigateToBattleUrl(param1:String, param2:Boolean, param3:Boolean) : void
      {
         this.§finally catch dynamic§ = param1;
         this.§override catch null§ = param2;
         if(§return set get§.spectator)
         {
            this.fcbd6ef(this.§finally catch dynamic§,this.§override catch null§);
            return;
         }
         if(§continue for final§.getCurrentState() == LayoutState.BATTLE)
         {
            this.d1db167c(param3);
         }
         else
         {
            this.d188270(param3);
         }
      }
      
      public function navigateToBattleUrlWithoutAvailableBattle(param1:String, param2:Boolean) : void
      {
         this.navigateToBattleUrl(param1,param2,true);
      }
      
      private function fcbd6ef(param1:String, param2:Boolean) : void
      {
         if(param2)
         {
            this.b2bd83a9();
            navigateToURL(new URLRequest(param1),"_self");
         }
         else
         {
            this.activateLink(param1);
         }
      }
      
      private function e49b596b(param1:AlertServiceEvent, param2:String, param3:String) : void
      {
         if(param1.typeButton == param2)
         {
            dispatchEvent(new BattleLinkActivatorServiceEvent("BattleLinkActivatorServiceEvent.CONFIRMED_NAVIGATE",this.§finally catch dynamic§));
            this.fcbd6ef(this.§finally catch dynamic§,this.§override catch null§);
         }
         else if(param1.typeButton == param3)
         {
            dispatchEvent(new BattleLinkActivatorServiceEvent("BattleLinkActivatorServiceEvent.NOT_CONFIRMED_NAVIGATE",this.§finally catch dynamic§));
            if(§5214238240238253123423632234§.isOpen())
            {
               §with catch override§.blurGameContent();
            }
         }
      }
      
      private function d1db167c(param1:Boolean) : String
      {
         var _loc2_:String = null;
         if(param1)
         {
            _loc2_ = §5214236363236376123423632234§.getText("FRIENDS_EXIT_FROM_BATTLE_ALERT");
         }
         else
         {
            _loc2_ = §5214236363236376123423632234§.getText("STRING_ALERT_GO_TO_BATTLE_IS_UNAVAILABLE_RANK_FUND");
         }
         §break use do§.showAlert(_loc2_,Vector.<String>([§5214236363236376123423632234§.getText("ALERT_ANSWER_YES"),§5214236363236376123423632234§.getText("ALERT_ANSWER_NO")]));
         §break use do§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.b6a21eba);
         return _loc2_;
      }
      
      private function b6a21eba(param1:AlertServiceEvent) : void
      {
         §break use do§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.b6a21eba);
         this.e49b596b(param1,§5214236363236376123423632234§.getText("ALERT_ANSWER_YES"),§5214236363236376123423632234§.getText("ALERT_ANSWER_NO"));
      }
      
      public function alive(param1:String) : void
      {
         dispatchEvent(new BattleLinkAliveEvent("BattleLinkAliveEvent.ALIVE",param1));
      }
   }
}

