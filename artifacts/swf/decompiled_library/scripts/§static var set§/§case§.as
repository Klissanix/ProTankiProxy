package §static var set§
{
   import §521423126292312642123423632234§.ReloadActivateEvent;
   import §521423126292312642123423632234§.ReloadDeactivateEvent;
   import §5214235774235787123423632234§.§5214236549236562123423632234§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.PauseActivationEvent;
   import alternativa.tanks.battle.events.PauseDeactivationEvent;
   import alternativa.tanks.battle.events.ShowPauseIndicatorEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.models.tank.pause.ITankPause;
   import alternativa.tanks.service.settings.keybinding.GameActionEnum;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import §class set get§.SuicideActivationEvent;
   import §class set get§.SuicideDeactivationEvent;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.DialogWindowsDispatcherServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenStateService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import §super var do§.LobbyLayoutServiceEvent;
   
   public class §case§ implements §521423117662311779123423632234§, §if use default§
   {
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §521423131302313143123423632234§:BattleInputService;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      public static var §5214238240238253123423632234§:IDialogWindowsDispatcherService;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §use package do§:BattleGUIService;
      
      public static var §521423422355123423632234§:FullscreenStateService;
      
      public static var §extends package override§:KeysBindingService;
      
      public static var §5214239034239047123423632234§:ITankPause;
      
      private var §5214235518235531123423632234§:§5214239411239424123423632234§;
      
      private var §for package§:§5214236549236562123423632234§;
      
      private var §521423125002312513123423632234§:Boolean;
      
      private var §5214234363234376123423632234§:Boolean;
      
      private var §case use implements§:Boolean;
      
      private var §super const throw§:Boolean;
      
      public function §case§(param1:§5214239411239424123423632234§, param2:§5214236549236562123423632234§, param3:Boolean)
      {
         super();
         this.§5214235518235531123423632234§ = param1;
         this.§for package§ = param2;
         this.§521423125002312513123423632234§ = param3;
         this.init();
      }
      
      private function §null const§(param1:Event) : void
      {
         this.§throw get§();
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         if(param1 is SuicideActivationEvent)
         {
            this.§5214234363234376123423632234§ = true;
         }
         else if(param1 is SuicideDeactivationEvent)
         {
            this.§5214234363234376123423632234§ = false;
         }
         else if(param1 is ReloadActivateEvent)
         {
            this.§case use implements§ = true;
            this.§5214232876232889123423632234§();
         }
         else if(param1 is ReloadDeactivateEvent)
         {
            this.§case use implements§ = false;
         }
      }
      
      private function §class switch default§(param1:LobbyLayoutServiceEvent) : void
      {
         if(!§continue for final§.isWindowOpenOverBattle())
         {
            this.§throw get§();
         }
      }
      
      public function close() : void
      {
         §5214235917235930123423632234§.stage.removeEventListener("keyDown",this.§null var class§);
         §5214235917235930123423632234§.stage.removeEventListener("activate",this.§null const§);
         §5214235917235930123423632234§.stage.removeEventListener("deactivate",this.§else set package§);
         §with set include§.removeBattleEventListener(SuicideActivationEvent,this);
         §with set include§.removeBattleEventListener(SuicideDeactivationEvent,this);
         §with set include§.removeBattleEventListener(ReloadActivateEvent,this);
         §with set include§.removeBattleEventListener(ReloadDeactivateEvent,this);
         §5214238240238253123423632234§.removeEventListener("DialogWindowsDispatcherServiceEvent.OPEN",this.§5214238780238793123423632234§);
         §5214238240238253123423632234§.removeEventListener("DialogWindowsDispatcherServiceEvent.CLOSE",this.§521423137052313718123423632234§);
         §continue for final§.removeEventListener("LobbyLayoutServiceEvent.BEGIN_LAYOUT_SWITCH",this.§521423103472310360123423632234§);
         §continue for final§.removeEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",this.§class switch default§);
         §use package do§.getViewportContainer().removeEventListener("click",this.§5214238035238048123423632234§);
         this.§5214235518235531123423632234§ = null;
      }
      
      private function §null var class§(param1:KeyboardEvent) : void
      {
         if(this.§521423125002312513123423632234§)
         {
            this.§var const import§(param1);
         }
         else
         {
            this.§continue const break§(param1);
         }
      }
      
      private function §throw get§() : void
      {
         if(!this.§521423125002312513123423632234§ || this.§super const throw§ || §continue for final§.isWindowOpenOverBattle())
         {
            return;
         }
         this.§521423125002312513123423632234§ = false;
         §52142380523818123423632234§.getBattleView().setFocus();
         §5214239034239047123423632234§.disablePause();
         §with set include§.dispatchEvent(new PauseDeactivationEvent());
      }
      
      private function init() : void
      {
         §5214235917235930123423632234§.stage.addEventListener("keyDown",this.§null var class§);
         §5214235917235930123423632234§.stage.addEventListener("activate",this.§null const§);
         §5214235917235930123423632234§.stage.addEventListener("deactivate",this.§else set package§);
         §with set include§.addBattleEventListener(SuicideActivationEvent,this);
         §with set include§.addBattleEventListener(SuicideDeactivationEvent,this);
         §with set include§.addBattleEventListener(ReloadActivateEvent,this);
         §with set include§.addBattleEventListener(ReloadDeactivateEvent,this);
         §continue for final§.addEventListener("LobbyLayoutServiceEvent.BEGIN_LAYOUT_SWITCH",this.§521423103472310360123423632234§);
         §continue for final§.addEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",this.§class switch default§);
         §5214238240238253123423632234§.addEventListener("DialogWindowsDispatcherServiceEvent.OPEN",this.§5214238780238793123423632234§);
         §5214238240238253123423632234§.addEventListener("DialogWindowsDispatcherServiceEvent.CLOSE",this.§521423137052313718123423632234§);
         §use package do§.getViewportContainer().addEventListener("click",this.§5214238035238048123423632234§);
      }
      
      private function §5214238035238048123423632234§(param1:MouseEvent) : void
      {
         if(this.§521423125002312513123423632234§ && this.§super const throw§)
         {
            this.§5214232876232889123423632234§();
         }
      }
      
      private function §continue const break§(param1:KeyboardEvent) : void
      {
         var _loc2_:GameActionEnum = null;
         if(!§521423131302313143123423632234§.isInputLocked() && !this.§5214234363234376123423632234§ && !this.§case use implements§)
         {
            _loc2_ = §extends package override§.getBindingAction(param1.keyCode,param1.ctrlKey);
            if(_loc2_ == GameActionEnum.BATTLE_PAUSE)
            {
               this.§super const throw§ = true;
               this.§true const set§();
            }
         }
      }
      
      private function §else set package§(param1:Event) : void
      {
         if(!§521423422355123423632234§.isFullscreen())
         {
            this.§true const set§();
         }
      }
      
      private function §var const import§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode != 18 && !param1.altKey && !§521423131302313143123423632234§.isInputLocked())
         {
            this.§5214232876232889123423632234§();
         }
      }
      
      private function §true const set§(param1:Boolean = true) : void
      {
         if(this.§521423125002312513123423632234§)
         {
            return;
         }
         this.§521423125002312513123423632234§ = true;
         §5214239034239047123423632234§.enablePause();
         §with set include§.dispatchEvent(new PauseActivationEvent(this.§for package§.§function native§()));
         if(param1)
         {
            §with set include§.dispatchEvent(new ShowPauseIndicatorEvent(this.§for package§.§function native§()));
         }
      }
      
      private function §5214232876232889123423632234§() : void
      {
         this.§super const throw§ = false;
         this.§throw get§();
      }
      
      private function §521423137052313718123423632234§(param1:DialogWindowsDispatcherServiceEvent) : void
      {
         this.§throw get§();
      }
      
      private function §5214238780238793123423632234§(param1:DialogWindowsDispatcherServiceEvent) : void
      {
         this.§true const set§(false);
      }
      
      private function §521423103472310360123423632234§(param1:LobbyLayoutServiceEvent) : void
      {
         this.§true const set§(false);
      }
   }
}

