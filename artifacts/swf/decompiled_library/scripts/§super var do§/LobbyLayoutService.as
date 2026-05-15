package §super var do§
{
   import §521423106142310627123423632234§.AlertAnswer;
   import §5214233396233409123423632234§.§521423132572313270123423632234§;
   import §5214233396233409123423632234§.§5214234133234146123423632234§;
   import §5214238968238981123423632234§.§implements for function§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.startup.StartupSettings;
   import flash.events.EventDispatcher;
   import flash.external.ExternalInterface;
   import flash.net.SharedObject;
   import §override catch default§.Long;
   import platform.client.fp10.core.registry.ModelRegistry;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import projects.tanks.clients.flash.commons.models.layout.§null for switch§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.AlertServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import §use catch super§.SwitchLayoutEvent;
   
   public class LobbyLayoutService extends EventDispatcher implements ILobbyLayoutService
   {
      
      public static var §break use do§:IAlertService;
      
      public static var §if catch include§:IStorageService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §5214238240238253123423632234§:IDialogWindowsDispatcherService;
      
      public static var modelRegistry:ModelRegistry;
      
      public static var §5214234066234079123423632234§:ClanUserInfoService;
      
      private var §catch use package§:Boolean;
      
      private var §5214236272236285123423632234§:Boolean;
      
      public function LobbyLayoutService()
      {
         super();
      }
      
      private static function c5d6fd6d(param1:AlertServiceEvent) : void
      {
         §break use do§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",c5d6fd6d);
         if(param1.typeButton == AlertAnswer.§521423109842310997123423632234§)
         {
            e34c1ad1();
            if(ExternalInterface.available)
            {
               ExternalInterface.call("goToMainPage");
            }
            StartupSettings.closeApplication();
         }
      }
      
      private static function c666d91c() : void
      {
         §break use do§.showAlertById(0);
         §break use do§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",c5d6fd6d);
      }
      
      private static function e34c1ad1() : void
      {
         var _loc1_:SharedObject = §if catch include§.getStorage();
         _loc1_.data.userHash = null;
         _loc1_.flush();
      }
      
      public function isBattleReady() : Boolean
      {
         return this.§5214236272236285123423632234§;
      }
      
      public function showBattleSelect() : void
      {
         this.layoutSwitchPredicted();
         §null for switch§(modelRegistry.getModel(Long.getLong(-96458616,-951071818))).switchBattleSelect();
      }
      
      public function exitFromBattleWithoutNotify() : void
      {
         §null for switch§(modelRegistry.getModel(Long.getLong(-96458616,-951071818))).exitFromBattle();
      }
      
      public function isSwitchInProgress() : Boolean
      {
         return §implements for function§(modelRegistry.getModel(Long.getLong(-2032277804,24791377))).isSwitchInProgress();
      }
      
      private function e1690770(param1:AlertServiceEvent) : void
      {
         §break use do§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.e1690770);
         if(param1.typeButton == §5214236363236376123423632234§.getText("ALERT_ANSWER_YES"))
         {
            this.exitFromBattleWithoutNotify();
         }
      }
      
      public function setBattleReady(param1:Boolean) : void
      {
         this.§5214236272236285123423632234§ = param1;
      }
      
      public function isWindowOpenOverBattle() : Boolean
      {
         return this.inBattle() && (this.getCurrentState() != LayoutState.BATTLE || §5214238240238253123423632234§.isOpen());
      }
      
      public function exitFromGame() : void
      {
         c666d91c();
      }
      
      public function closePopupOverBattle() : void
      {
         var _loc1_:LayoutState = null;
         if(!this.isSwitchInProgress() && this.e67ddc4e())
         {
            _loc1_ = this.getCurrentState();
            if(_loc1_ == LayoutState.BATTLE_SELECT)
            {
               this.showBattleSelect();
            }
            else if(_loc1_ == LayoutState.GARAGE)
            {
               this.showGarage();
            }
            else if(_loc1_ == LayoutState.PAYMENT)
            {
            }
         }
      }
      
      public function showPayment() : void
      {
         §null for switch§(modelRegistry.getModel(Long.getLong(-96458616,-951071818))).switchPayment();
      }
      
      private function b6abc0c9() : String
      {
         return §5214236363236376123423632234§.getText("FRIENDS_EXIT_FROM_BATTLE_ALERT");
      }
      
      private function e67ddc4e() : Boolean
      {
         return this.inBattle() && this.getCurrentState() != LayoutState.BATTLE;
      }
      
      public function layoutSwitchPredicted() : void
      {
         §implements for function§(modelRegistry.getModel(Long.getLong(-2032277804,24791377))).layoutSwitchPredicted();
      }
      
      public function getCurrentState() : LayoutState
      {
         return §implements for function§(modelRegistry.getModel(Long.getLong(-2032277804,24791377))).getCurrentState();
      }
      
      public function inBattle() : Boolean
      {
         return §implements for function§(modelRegistry.getModel(Long.getLong(-2032277804,24791377))).inBattle();
      }
      
      public function set disablePayment(param1:Boolean) : void
      {
         this.§catch use package§ = param1;
      }
      
      public function showClan() : void
      {
         var _loc2_:§521423132572313270123423632234§ = null;
         var _loc1_:§5214234133234146123423632234§ = null;
         if(§5214234066234079123423632234§.clanMember)
         {
            _loc2_ = §521423132572313270123423632234§(modelRegistry.getModel(Long.getLong(-1633576172,1403118766)));
            _loc2_.§5214235435235448123423632234§();
         }
         else
         {
            _loc1_ = §5214234133234146123423632234§(modelRegistry.getModel(Long.getLong(-1165516332,341712989)));
            _loc1_.§5214235312235325123423632234§();
         }
      }
      
      public function get paymentDisabled() : Boolean
      {
         return this.§catch use package§;
      }
      
      public function method_1058() : void
      {
         if(this.getCurrentState() == LayoutState.BATTLE_SELECT)
         {
            this.showBattleSelect();
         }
         else if(this.getCurrentState() == LayoutState.GARAGE)
         {
            this.showGarage();
         }
      }
      
      public function exitFromBattle() : void
      {
         if(§return set get§.isSpectatorMode())
         {
            this.exitFromBattleWithoutNotify();
         }
         else
         {
            this.d1ee1d98();
         }
      }
      
      private function d1ee1d98() : void
      {
         var _loc1_:String = this.b6abc0c9();
         §break use do§.showAlert(_loc1_,new <String>[§5214236363236376123423632234§.getText("ALERT_ANSWER_YES"),§5214236363236376123423632234§.getText("ALERT_ANSWER_NO")]);
         §break use do§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.e1690770);
      }
      
      public function exitFromBattleToState(param1:LayoutState) : void
      {
         this.layoutSwitchPredicted();
         §null for switch§(modelRegistry.getModel(Long.getLong(-96458616,-951071818))).exitFromBattleToState(param1);
      }
      
      public function showGarage() : void
      {
         this.layoutSwitchPredicted();
         §null for switch§(modelRegistry.getModel(Long.getLong(-96458616,-951071818))).switchGarage();
      }
      
      public function method_1592() : void
      {
         dispatchEvent(new SwitchLayoutEvent("SWITCH_STARTED"));
      }
   }
}

