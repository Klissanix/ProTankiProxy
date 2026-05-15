package §with switch break§
{
   import §521423106142310627123423632234§.Alert;
   import §521423106142310627123423632234§.AlertAnswer;
   import §521423140682314081123423632234§.§5214238338238351123423632234§;
   import §5214232607232620123423632234§.§function set else§;
   import §5214233785233798123423632234§.§in class§;
   import §52142364023653123423632234§.§521423114702311483123423632234§;
   import §52142364023653123423632234§.§5214235432235445123423632234§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.startup.StartupSettings;
   import alternativa.tanks.service.achievement.IAchievementService;
   import alternativa.tanks.service.fps.FPSService;
   import alternativa.tanks.service.fps.FPSServiceImpl;
   import alternativa.tanks.service.money.IMoneyService;
   import alternativa.tanks.service.panel.IPanelView;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.SharedObject;
   import §for switch catch§.ButtonBarHelper;
   import §for switch catch§.FriendsHelper;
   import §for switch catch§.MainMenuHelper;
   import §for switch catch§.MoneyHelper;
   import §for switch catch§.RankBarHelper;
   import §for switch catch§.RankHelper;
   import §for switch catch§.RatingIndicatorHelper;
   import §for switch catch§.ScoreHelper;
   import §include else§.§each set with§;
   import §include else§.§package switch set§;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.AlertServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.BattleInfoServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.helper.IHelpService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.AlertUtils;
   import §set package in§.ClientObject;
   import §super var do§.LobbyLayoutServiceEvent;
   import §true switch true§.§5214237085237098123423632234§;
   
   public class PanelModel extends §521423114702311483123423632234§ implements §5214235432235445123423632234§
   {
      
      private static const §521423125292312542123423632234§:String = "PanelModel";
      
      public static var §import use with§:IPanelView;
      
      public static var display:IDisplay;
      
      public static var §else var include§:IHelpService;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      public static var §521423124592312472123423632234§:IAchievementService;
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §break use do§:IAlertService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var panel:§function set else§;
      
      private var §5214236241236254123423632234§:String;
      
      private const §false package override§:int = 1;
      
      private const §in for false§:int = 2;
      
      private const §native package import§:int = 3;
      
      private const §extends switch try§:int = 5;
      
      private const §for use class§:int = 6;
      
      private const §for for static§:int = 7;
      
      private const §extends switch continue§:int = 10;
      
      private const §default use each§:int = 11;
      
      public function PanelModel()
      {
         super();
      }
      
      private static function b33b5c67() : void
      {
         var _loc1_:LayoutState = null;
         if(§continue for final§.inBattle())
         {
            _loc1_ = §continue for final§.getCurrentState();
            if(_loc1_ == LayoutState.BATTLE_SELECT)
            {
               §continue for final§.showBattleSelect();
            }
            else if(_loc1_ == LayoutState.GARAGE)
            {
               §continue for final§.showGarage();
            }
            else if(_loc1_ != LayoutState.PAYMENT)
            {
               §continue for final§.exitFromBattle();
            }
         }
         else
         {
            §continue for final§.exitFromGame();
         }
      }
      
      public static function switchPayment() : void
      {
         var _loc1_:Boolean = §continue for final§.getCurrentState() == LayoutState.PAYMENT;
         if(_loc1_)
         {
            §continue for final§.showPayment();
         }
         else
         {
            §continue for final§.method_1592();
         }
      }
      
      private static function onKeyUp(param1:KeyboardEvent) : void
      {
         if(AlertUtils.isCancelKey(param1.keyCode) && !§continue for final§.isSwitchInProgress())
         {
            param1.stopImmediatePropagation();
            b33b5c67();
         }
      }
      
      private function a3550f23(param1:BattleInfoServiceEvent) : void
      {
         §continue for final§.removeEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",this.b9fc149);
         this.panel.§521423117142311727123423632234§.closeButton.§if for each§();
      }
      
      private function e1690770(param1:AlertServiceEvent) : void
      {
         §break use do§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.e1690770);
         switch(param1.typeButton)
         {
            case AlertAnswer.§final set get§:
               this.e4cdcf6e(LayoutState.BATTLE);
               break;
            case AlertAnswer.§521423128132312826123423632234§:
               §continue for final§.exitFromBattleToState(this.e11cab5f());
               break;
            case AlertAnswer.§521423109842310997123423632234§:
               this.changeState();
         }
      }
      
      public function _showMessage(param1:String) : void
      {
         var _loc2_:Alert = new Alert();
         _loc2_.showAlert(param1,Vector.<String>([AlertAnswer.OK]));
      }
      
      private function addListeners() : void
      {
         this.panel.§521423117142311727123423632234§.addEventListener("Close",this.d17c908c);
         §return set get§.addEventListener("BattleInfoServiceEvent.BATTLE_UNLOAD",this.a3550f23);
         §return set get§.addEventListener("BattleInfoServiceEvent.BATTLE_LOAD",this.d5b0fead);
         display.stage.addEventListener("keyUp",onKeyUp,false,-6);
      }
      
      private function b532755d() : void
      {
         var _loc1_:Alert = new Alert(0);
         display.dialogsLayer.addChild(_loc1_);
         _loc1_.addEventListener("CloseAlert",this.b7749caf);
      }
      
      public function showMessage(param1:ClientObject, param2:String) : void
      {
         this._showMessage(param2);
      }
      
      private function e33e204c() : void
      {
         §else var include§.showHelp();
         §import use with§.unlock();
      }
      
      private function a48ef3d9(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 122)
         {
            if(display.stage.displayState == "normal")
            {
               display.stage.displayState = "fullScreenInteractive";
            }
            else
            {
               display.stage.displayState = "normal";
            }
         }
      }
      
      private function c4f4d4d0() : void
      {
         var _loc2_:Boolean = false;
         var _loc1_:Boolean = this.panel.§521423117142311727123423632234§.§return for null§();
         var _loc3_:int = 661;
         var _loc11_:RankBarHelper = new RankBarHelper(0.5,_loc3_,60);
         var _loc12_:RatingIndicatorHelper = new RatingIndicatorHelper(1,_loc3_,75 - (_loc1_ ? 180 : 90));
         var _loc9_:MainMenuHelper = new MainMenuHelper(1,_loc3_,342);
         var _loc10_:MoneyHelper = new MoneyHelper(1,_loc3_,_loc1_ ? 100 : 165);
         var _loc7_:ScoreHelper = new ScoreHelper();
         var _loc8_:RankHelper = new RankHelper();
         var _loc6_:FriendsHelper = new FriendsHelper(1,_loc3_,246);
         var _loc5_:Boolean = _loc2_ = true;
         var _loc4_:ButtonBarHelper = new ButtonBarHelper(1,45,-4,_loc5_);
         §else var include§.registerHelper("PanelModel",1,_loc8_,true);
         §else var include§.registerHelper("PanelModel",2,_loc11_,true);
         §else var include§.registerHelper("PanelModel",10,_loc7_,true);
         §else var include§.registerHelper("PanelModel",3,_loc12_,true);
         §else var include§.registerHelper("PanelModel",5,_loc9_,true);
         §else var include§.registerHelper("PanelModel",6,_loc4_,true);
         §else var include§.registerHelper("PanelModel",7,_loc10_,true);
         §else var include§.registerHelper("PanelModel",11,_loc6_,true);
      }
      
      private function aff6ae8() : void
      {
         var _loc5_:* = undefined;
         var _loc3_:* = undefined;
         var _loc1_:String = §5214236363236376123423632234§.getText("ALERT_STAY_IN_BATTLE");
         var _loc2_:Vector.<Sprite> = new Vector.<Sprite>();
         var _loc4_:§5214238338238351123423632234§ = new §5214238338238351123423632234§();
         _loc4_.label = AlertAnswer.§521423109842310997123423632234§;
         _loc2_.push(_loc4_);
         _loc5_ = new §in class§();
         _loc5_.label = AlertAnswer.§521423128132312826123423632234§;
         _loc2_.push(_loc5_);
         _loc3_ = new §5214237085237098123423632234§();
         _loc3_.label = AlertAnswer.§final set get§;
         _loc2_.push(_loc3_);
         §break use do§.showAlertWithCustomButtons(_loc1_,Vector.<String>([AlertAnswer.§521423109842310997123423632234§,AlertAnswer.§521423128132312826123423632234§,AlertAnswer.§final set get§]),_loc2_);
         §break use do§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.e1690770);
      }
      
      private function d17c908c(param1:§package switch set§) : void
      {
         §521423124592312472123423632234§.hideAllBubbles(false);
         this.§5214236241236254123423632234§ = param1.§5214236155236168123423632234§;
         if(§continue for final§.inBattle() && this.a2667fa6(param1.§5214236155236168123423632234§) && !§continue for final§.isWindowOpenOverBattle())
         {
            this.aff6ae8();
         }
         else
         {
            this.changeState();
         }
      }
      
      public function objectLoaded() : void
      {
         §import use with§.setPanel(false,false,false,true);
         this.panel = §import use with§.getPanel();
         this.c18e04f9();
         this.addListeners();
         this.a2093a92(null);
         §continue for final§.addEventListener("LobbyLayoutServiceEvent.BEGIN_LAYOUT_SWITCH",this.a2093a92);
         §continue for final§.addEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",this.a2093a92);
         FPSServiceImpl(OSGi.getInstance().getService(FPSService)).start();
      }
      
      public function objectLoadedPost() : void
      {
         §521423124592312472123423632234§.setGarageBuyButtonTargetPoint(new Point(0,0));
         this.c4f4d4d0();
         display.stage.addEventListener("keyDown",this.a48ef3d9);
      }
      
      private function a2667fa6(param1:String) : Boolean
      {
         return ["Batle","Garage"].indexOf(param1) >= 0;
      }
      
      public function objectUnloaded() : void
      {
         §continue for final§.removeEventListener("LobbyLayoutServiceEvent.BEGIN_LAYOUT_SWITCH",this.a2093a92);
         §continue for final§.removeEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",this.a2093a92);
         §521423124592312472123423632234§.hideAllBubbles(false);
         this.d16ea0c8();
         display.stage.removeEventListener("keyDown",this.a48ef3d9);
         display.stage.removeEventListener("keyUp",onKeyUp);
         §else var include§.hideHelp();
         §else var include§.unregisterHelper("PanelModel",1);
         §else var include§.unregisterHelper("PanelModel",2);
         §else var include§.unregisterHelper("PanelModel",3);
         §else var include§.unregisterHelper("PanelModel",5);
         §else var include§.unregisterHelper("PanelModel",6);
         §else var include§.unregisterHelper("PanelModel",7);
         §else var include§.unregisterHelper("PanelModel",10);
         OSGi.getInstance().unregisterService(IMoneyService);
      }
      
      private function b9fc149(param1:LobbyLayoutServiceEvent) : void
      {
         if(param1.state == LayoutState.BATTLE)
         {
            this.panel.§521423117142311727123423632234§.closeButton.§if for each§();
         }
         else
         {
            this.panel.§521423117142311727123423632234§.closeButton.§5214237241237254123423632234§();
         }
      }
      
      private function e11cab5f() : LayoutState
      {
         var _loc1_:String = this.§5214236241236254123423632234§;
         if("Garage" !== _loc1_)
         {
            return LayoutState.BATTLE_SELECT;
         }
         return LayoutState.GARAGE;
      }
      
      private function changeState() : void
      {
         switch(this.§5214236241236254123423632234§)
         {
            case "Batle":
               §continue for final§.showBattleSelect();
               break;
            case "Close":
               b33b5c67();
               break;
            case "Garage":
               §continue for final§.showGarage();
               break;
            case "Help":
               this.e33e204c();
               break;
            case "AddMoney":
               switchPayment();
               break;
            case "Clan":
               §continue for final§.showClan();
         }
      }
      
      private function e4cdcf6e(param1:LayoutState, param2:Boolean = true) : void
      {
         switch(param1)
         {
            case LayoutState.BATTLE:
               this.panel.§521423117142311727123423632234§.§in switch if§(true);
               this.panel.§521423117142311727123423632234§.§521423101192310132123423632234§.enable = true;
               this.panel.§521423117142311727123423632234§.§var catch get§.enable = true;
               break;
            case LayoutState.BATTLE_SELECT:
               this.panel.§521423117142311727123423632234§.§in switch if§(true);
               this.panel.§521423117142311727123423632234§.§521423101192310132123423632234§.enable = false;
               this.panel.§521423117142311727123423632234§.§var catch get§.enable = true;
               break;
            case LayoutState.GARAGE:
               this.panel.§521423117142311727123423632234§.§in switch if§(true);
               this.panel.§521423117142311727123423632234§.§var catch get§.enable = false;
               this.panel.§521423117142311727123423632234§.§521423101192310132123423632234§.enable = true;
         }
      }
      
      private function d58ef2f5() : void
      {
         this.panel.mouseEnabled = false;
         this.panel.mouseChildren = false;
      }
      
      private function d5b0fead(param1:BattleInfoServiceEvent) : void
      {
         §continue for final§.addEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",this.b9fc149);
         this.panel.§521423117142311727123423632234§.closeButton.show();
      }
      
      private function d16ea0c8() : void
      {
         this.panel.§true package final§();
         if(display.systemUILayer.contains(this.panel))
         {
            display.systemUILayer.removeChild(this.panel);
         }
         this.panel.§521423117142311727123423632234§.removeEventListener("Close",this.d17c908c);
      }
      
      private function hideHelp(param1:MouseEvent) : void
      {
         display.stage.removeEventListener("mouseDown",this.hideHelp);
      }
      
      private function c12665da() : void
      {
         this.panel.mouseEnabled = true;
         this.panel.mouseChildren = true;
      }
      
      private function b7749caf(param1:§each set with§) : void
      {
         var _loc2_:SharedObject = null;
         if(param1.§5214236155236168123423632234§ == AlertAnswer.§521423109842310997123423632234§)
         {
            StartupSettings.closeApplication();
            _loc2_ = IStorageService(OSGi.getInstance().getService(IStorageService)).getStorage();
            _loc2_.data.userHash = null;
            _loc2_.flush();
         }
      }
      
      private function c18e04f9() : void
      {
         display.systemUILayer.addChild(this.panel);
      }
      
      private function a2093a92(param1:LobbyLayoutServiceEvent) : void
      {
         if(§continue for final§.isSwitchInProgress())
         {
            this.d58ef2f5();
         }
         else
         {
            this.c12665da();
         }
         var _loc2_:LayoutState = §continue for final§.getCurrentState();
         this.e4cdcf6e(_loc2_);
      }
   }
}

