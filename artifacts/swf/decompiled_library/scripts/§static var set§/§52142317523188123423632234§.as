package §static var set§
{
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.services.battleinput.BattleInputLockType;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.BlurServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.IBlurService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.DialogWindowsDispatcherServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import §super var do§.LobbyLayoutServiceEvent;
   
   public class §52142317523188123423632234§ implements §521423117662311779123423632234§
   {
      
      public static var §5214238240238253123423632234§:IDialogWindowsDispatcherService;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      public static var §with catch override§:IBlurService;
      
      public static var §521423131302313143123423632234§:BattleInputService;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public function §52142317523188123423632234§()
      {
         super();
         init();
      }
      
      private static function §521423137052313718123423632234§(param1:DialogWindowsDispatcherServiceEvent = null) : void
      {
         if(!§continue for final§.isWindowOpenOverBattle())
         {
            §521423131302313143123423632234§.unlock(BattleInputLockType.§final package false§);
            §52142380523818123423632234§.getBattleView().setFocus();
         }
      }
      
      private static function §521423115882311601123423632234§(param1:BlurServiceEvent) : void
      {
         §continue for final§.closePopupOverBattle();
      }
      
      private static function init() : void
      {
         §5214238240238253123423632234§.addEventListener("DialogWindowsDispatcherServiceEvent.OPEN",§5214238780238793123423632234§);
         §5214238240238253123423632234§.addEventListener("DialogWindowsDispatcherServiceEvent.CLOSE",§521423137052313718123423632234§);
         §continue for final§.addEventListener("LobbyLayoutServiceEvent.BEGIN_LAYOUT_SWITCH",§521423103472310360123423632234§);
         §continue for final§.addEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",§class switch default§);
         §with catch override§.addEventListener("BlurServiceEvent.CLICK_OVERLAY_BATTLE_CONTENT",§521423115882311601123423632234§);
         if(!§continue for final§.isSwitchInProgress())
         {
            §521423137052313718123423632234§();
         }
      }
      
      private static function §5214238780238793123423632234§(param1:DialogWindowsDispatcherServiceEvent = null) : void
      {
         §521423131302313143123423632234§.lock(BattleInputLockType.§final package false§);
      }
      
      private static function §class switch default§(param1:LobbyLayoutServiceEvent) : void
      {
         if(!§continue for final§.isWindowOpenOverBattle())
         {
            §with catch override§.unblurBattleContent();
            §521423137052313718123423632234§();
         }
      }
      
      private static function §521423103472310360123423632234§(param1:LobbyLayoutServiceEvent) : void
      {
         §with catch override§.blurBattleContent();
         §5214238780238793123423632234§();
      }
      
      public function close() : void
      {
         §5214238240238253123423632234§.removeEventListener("DialogWindowsDispatcherServiceEvent.OPEN",§5214238780238793123423632234§);
         §5214238240238253123423632234§.removeEventListener("DialogWindowsDispatcherServiceEvent.CLOSE",§521423137052313718123423632234§);
         §continue for final§.removeEventListener("LobbyLayoutServiceEvent.BEGIN_LAYOUT_SWITCH",§521423103472310360123423632234§);
         §continue for final§.removeEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",§class switch default§);
         §with catch override§.removeEventListener("BlurServiceEvent.CLICK_OVERLAY_BATTLE_CONTENT",§521423115882311601123423632234§);
         §with catch override§.unblurBattleContent();
      }
   }
}

