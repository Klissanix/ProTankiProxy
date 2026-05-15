package §521423102502310263123423632234§
{
   import §521423106142310627123423632234§.AlertAnswer;
   import §521423134102313423123423632234§.§const catch extends§;
   import §521423134102313423123423632234§.§extends for finally§;
   import §521423134102313423123423632234§.§package set if§;
   import §5214233087233100123423632234§.§5214237988238001123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import §break set extends§.§521423108702310883123423632234§;
   import §break set extends§.§in switch true§;
   import flash.utils.Dictionary;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.BattleLinkActivatorServiceEvent;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.BattleLinkAliveEvent;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.IBattleLinkActivatorService;
   import projects.tanks.clients.flash.commons.services.notification.INotificationService;
   import projects.tanks.clients.flash.commons.services.notification.sound.INotificationSoundService;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.AlertServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.IBlurService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.FriendStateChangeEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.BattleInviteServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.IBattleInviteService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.§5214231456231469123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   
   public class BattleInviteModel extends §const catch extends§ implements §extends for finally§, §do set function§, §throw catch var§
   {
      
      public static var §5214233439233452123423632234§:IBattleInviteService;
      
      public static var §521423111482311161123423632234§:INotificationService;
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §5214231686231699123423632234§:IBattleLinkActivatorService;
      
      public static var §break use do§:IAlertService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      public static var §while for package§:IUserInfoService;
      
      public static var §with catch override§:IBlurService;
      
      public static var §5214238240238253123423632234§:IDialogWindowsDispatcherService;
      
      public static var §use in§:IFriendInfoService;
      
      public static var §null class§:INotificationSoundService;
      
      private var §final switch class§:Dictionary;
      
      private var userId:String;
      
      private var battleId:String;
      
      private var §native const break§:String;
      
      private var §5214236370236383123423632234§:Boolean;
      
      private var §521423132682313281123423632234§:String;
      
      public function BattleInviteModel()
      {
         super();
      }
      
      private static function b446547c(param1:String) : String
      {
         return "<font color=\'#b1b1b1\'>" + param1 + "</font>";
      }
      
      private static function a44ca33a(param1:§package set if§) : String
      {
         var _loc2_:String = §5214236363236376123423632234§.getText("STRING_INVITES_YOU_TO_A_BATTLE_LABEL") + "\n";
         if(param1.§default const false§)
         {
            if(param1.§if for else§)
            {
               _loc2_ += "\n" + §5214236363236376123423632234§.getText("STRING_THERE_ARE_PLACES_AVAILABLE_LABEL");
            }
            else
            {
               _loc2_ += "\n" + b446547c(§5214236363236376123423632234§.getText("STRING_NO_PLACES_AVAILABLE_LABEL"));
            }
         }
         else
         {
            _loc2_ += "\n" + b446547c(§5214236363236376123423632234§.getText("STRING_BATTLE_IS_UNAVAILABLE_AT_YOUR_RANK_LABEL"));
         }
         return _loc2_;
      }
      
      private static function e244b320(param1:String) : void
      {
         §521423111482311161123423632234§.addNotification(new §521423108702310883123423632234§(param1,§5214236363236376123423632234§.getText("STRING_BATTLE_CANNOT_BE_FOUND_LABEL")));
      }
      
      private static function b4db4501(param1:§package set if§) : String
      {
         var _loc2_:String = param1.§5214235402235415123423632234§ + " " + §5214236363236376123423632234§.getText("STRING_SERVER_LABEL");
         if(§5214236363236376123423632234§.language == "en")
         {
            _loc2_ = §5214236363236376123423632234§.getText("STRING_SERVER_LABEL") + " " + param1.§5214235402235415123423632234§;
         }
         return param1.§return package for§ + " " + param1.§try catch else§.§extends set case§;
      }
      
      private static function f6497e25(param1:String) : void
      {
         var _loc2_:String = §5214236363236376123423632234§.getText("STRING_IS_CONSIDERING_YOUR_INVITE_LABEL");
         if(!§521423111482311161123423632234§.hasNotification(param1,_loc2_))
         {
            §521423111482311161123423632234§.addNotification(new §521423108702310883123423632234§(param1,_loc2_));
         }
      }
      
      private function b6daa3bb() : void
      {
         this.§final switch class§[this.§521423132682313281123423632234§] = true;
         §521423120492312062123423632234§.§5214231529231542123423632234§(this.§521423132682313281123423632234§,§return set get§.currentSelectionBattleId);
         this.§521423132682313281123423632234§ = null;
      }
      
      private function ce5f244() : void
      {
         §5214231686231699123423632234§.removeEventListener("BattleLinkActivatorServiceEvent.CONFIRMED_NAVIGATE",this.c1ba499a);
         §5214231686231699123423632234§.removeEventListener("BattleLinkActivatorServiceEvent.NOT_CONFIRMED_NAVIGATE",this.d791e5f);
      }
      
      public function rejectedPanelNotLoaded(param1:String) : void
      {
         this.removeInvite(param1);
         §521423111482311161123423632234§.addNotification(new §521423108702310883123423632234§(param1,§5214236363236376123423632234§.getText("STRING_YOUR_FRIEND_IS_ENTERING_THE_GAME_LABEL")));
      }
      
      public function rejectedBattleNotFound(param1:String) : void
      {
         this.removeInvite(param1);
         e244b320(param1);
      }
      
      private function removeInvite(param1:String) : void
      {
         delete this.§final switch class§[param1];
         §5214233439233452123423632234§.removeInvite(param1);
      }
      
      public function objectUnloaded() : void
      {
         §5214233439233452123423632234§.removeEventListener("BattleInviteServiceEvent.INVITE",this.b61963e);
         §5214233439233452123423632234§.removeEventListener("BattleInviteServiceEvent.ACCEPT",this.d67ea26c);
         §5214233439233452123423632234§.removeEventListener("BattleInviteServiceEvent.REJECT",this.c74b9c3a);
         §5214231686231699123423632234§.removeEventListener("BattleLinkAliveEvent.ALIVE",this.f4e7e8d4);
         §5214231686231699123423632234§.removeEventListener("BattleLinkAliveEvent.DEAD",this.b272c4f);
         §use in§.removeEventListener("FriendsStateChangeEvent.CHANGE",this.d4816c7);
      }
      
      private function c6b5131d(param1:AlertServiceEvent) : void
      {
         §break use do§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.c6b5131d);
         if(param1.typeButton == §5214236363236376123423632234§.getText(AlertAnswer.§521423109842310997123423632234§))
         {
            this.b6daa3bb();
         }
         else if(param1.typeButton == §5214236363236376123423632234§.getText(AlertAnswer.§521423128132312826123423632234§) && §5214238240238253123423632234§.isOpen())
         {
            §with catch override§.blurGameContent();
         }
      }
      
      public function rejected(param1:String) : void
      {
         this.removeInvite(param1);
         §521423111482311161123423632234§.addNotification(new §521423108702310883123423632234§(param1,§5214236363236376123423632234§.getText("STRING_REFUSED_TO_JOIN_THE_BATTLE_AT_YOUR_INVITATION_LABEL")));
      }
      
      private function f4e7e8d4(param1:BattleLinkAliveEvent) : void
      {
         if(this.battleId != param1.battleId)
         {
            return;
         }
         if(§continue for final§.getCurrentState() == LayoutState.BATTLE && !§return set get§.spectator)
         {
            §5214231686231699123423632234§.addEventListener("BattleLinkActivatorServiceEvent.CONFIRMED_NAVIGATE",this.c1ba499a);
            §5214231686231699123423632234§.addEventListener("BattleLinkActivatorServiceEvent.NOT_CONFIRMED_NAVIGATE",this.d791e5f);
         }
         else
         {
            §521423120492312062123423632234§.§5214236013236026123423632234§(this.userId);
         }
         §5214231686231699123423632234§.navigateToBattleUrlWithoutAvailableBattle(this.§native const break§,this.§5214236370236383123423632234§);
      }
      
      private function d791e5f(param1:BattleLinkActivatorServiceEvent) : void
      {
         this.ce5f244();
         §521423120492312062123423632234§.§set package break§(this.userId);
      }
      
      public function accepted(param1:String) : void
      {
         this.removeInvite(param1);
         §521423111482311161123423632234§.addNotification(new §521423108702310883123423632234§(param1,§5214236363236376123423632234§.getText("STRING_IS_JOINING_THE_BATTLE_AT_YOUR_INVITATION_LABEL")));
      }
      
      private function c74b9c3a(param1:BattleInviteServiceEvent) : void
      {
         §521423120492312062123423632234§.§set package break§(param1.userId);
      }
      
      public function rejectedUserOffline(param1:String) : void
      {
         this.removeInvite(param1);
         §521423111482311161123423632234§.addNotification(new §521423108702310883123423632234§(param1,§5214236363236376123423632234§.getText("STRING_YOUR_FRIEND_IS_OFFLINE_LABEL")));
      }
      
      private function b272c4f(param1:BattleLinkAliveEvent) : void
      {
         if(this.battleId != param1.battleId)
         {
            return;
         }
         §break use do§.showAlert(§5214236363236376123423632234§.getText("STRING_BATTLE_CANNOT_BE_FOUND_ALERT"),Vector.<String>([§5214236363236376123423632234§.getText(AlertAnswer.OK)]));
         §521423120492312062123423632234§.§set package break§(this.userId);
      }
      
      private function d67ea26c(param1:BattleInviteServiceEvent) : void
      {
         this.userId = param1.userId;
         this.battleId = param1.battleId;
         this.§native const break§ = param1.§native const break§;
         this.§5214236370236383123423632234§ = param1.§5214236370236383123423632234§;
         §5214231686231699123423632234§.isAlive(param1.battleId);
      }
      
      private function b61963e(param1:BattleInviteServiceEvent) : void
      {
         var _loc2_:§5214231456231469123423632234§ = null;
         this.§521423132682313281123423632234§ = param1.userId;
         if(this.§521423132682313281123423632234§ in this.§final switch class§)
         {
            f6497e25(this.§521423132682313281123423632234§);
         }
         else if(§return set get§.hasCurrentSelectionBattleId())
         {
            _loc2_ = §while for package§.getOrCreateUpdater(this.§521423132682313281123423632234§);
            if(§return set get§.availableRank(_loc2_.rank))
            {
               this.b6daa3bb();
            }
            else
            {
               §break use do§.showAlert(§5214236363236376123423632234§.getText("STRING_ALERT_INVITE_TO_BATTLE_IS_UNAVAILABLE_RANK"),Vector.<String>([§5214236363236376123423632234§.getText(AlertAnswer.§521423109842310997123423632234§),§5214236363236376123423632234§.getText(AlertAnswer.§521423128132312826123423632234§)]));
               §break use do§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.c6b5131d);
            }
         }
         else
         {
            e244b320(this.§521423132682313281123423632234§);
         }
      }
      
      public function rejectedUserAlreadyInBattle(param1:String) : void
      {
         this.removeInvite(param1);
         §521423111482311161123423632234§.addNotification(new §521423108702310883123423632234§(param1,§5214236363236376123423632234§.getText("STRING_YOUR_FRIEND_IS_ALREADY_IN_THIS_BATTLE_LABEL")));
      }
      
      public function notify(param1:String, param2:§package set if§) : void
      {
         var _loc3_:* = null;
         §521423111482311161123423632234§.addNotification(new §in switch true§(param1,a44ca33a(param2),param2.§521423122262312239123423632234§,param2.§521423122262312239123423632234§,param2.§var set include§,b4db4501(param2),param2.§continue switch try§));
      }
      
      public function objectLoaded() : void
      {
         this.§final switch class§ = new Dictionary();
         var _loc1_:§5214237988238001123423632234§ = §switch var switch§().§else use return§;
         if(_loc1_ != null && (_loc2_.§else for include§ & 1) != 0)
         {
            §null class§.notificationSound = §switch var switch§().§else use return§.§set const switch§;
         }
         §5214233439233452123423632234§.addEventListener("BattleInviteServiceEvent.INVITE",this.b61963e);
         §5214233439233452123423632234§.addEventListener("BattleInviteServiceEvent.ACCEPT",this.d67ea26c);
         §5214233439233452123423632234§.addEventListener("BattleInviteServiceEvent.REJECT",this.c74b9c3a);
         §5214231686231699123423632234§.addEventListener("BattleLinkAliveEvent.ALIVE",this.f4e7e8d4);
         §5214231686231699123423632234§.addEventListener("BattleLinkAliveEvent.DEAD",this.b272c4f);
         §use in§.addEventListener("FriendsStateChangeEvent.CHANGE",this.d4816c7);
      }
      
      private function d4816c7(param1:FriendStateChangeEvent) : void
      {
         var _loc2_:Boolean = param1.§521423132002313213123423632234§ == FriendState.ACCEPTED && param1.state != FriendState.ACCEPTED;
         if(_loc2_)
         {
            if(param1.userId in this.§final switch class§)
            {
               this.rejected(param1.userId);
            }
         }
      }
      
      public function rejectedInvitationToBattleDisabled(param1:String) : void
      {
         this.removeInvite(param1);
         §521423111482311161123423632234§.addNotification(new §521423108702310883123423632234§(param1,§5214236363236376123423632234§.getText("STRING_YOUR_FRIEND_DISABLED_INVITES_LABEL")));
      }
      
      private function c1ba499a(param1:BattleLinkActivatorServiceEvent) : void
      {
         this.ce5f244();
         §521423120492312062123423632234§.§5214236013236026123423632234§(this.userId);
      }
   }
}

