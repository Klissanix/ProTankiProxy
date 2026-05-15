package §5214235774235787123423632234§
{
   import alternativa.tanks.services.targeting.TargetingInputManager;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.DialogWindowsDispatcherServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   
   public class §5214233345233358123423632234§ implements §521423117662311779123423632234§
   {
      
      public static var §5214238240238253123423632234§:IDialogWindowsDispatcherService;
      
      public static var §5214234884234897123423632234§:TargetingInputManager;
      
      public function §5214233345233358123423632234§()
      {
         super();
         this.init();
      }
      
      public function init() : void
      {
         §5214238240238253123423632234§.addEventListener("DialogWindowsDispatcherServiceEvent.OPEN",this.§extends use each§);
         §5214238240238253123423632234§.addEventListener("DialogWindowsDispatcherServiceEvent.CLOSE",this.§5214236126236139123423632234§);
      }
      
      private function §extends use each§(param1:DialogWindowsDispatcherServiceEvent) : void
      {
         §5214234884234897123423632234§.startDialog();
      }
      
      private function §5214236126236139123423632234§(param1:DialogWindowsDispatcherServiceEvent) : void
      {
         §5214234884234897123423632234§.endDialog();
      }
      
      public function close() : void
      {
         §5214238240238253123423632234§.removeEventListener("DialogWindowsDispatcherServiceEvent.OPEN",this.§extends use each§);
         §5214238240238253123423632234§.removeEventListener("DialogWindowsDispatcherServiceEvent.CLOSE",this.§5214236126236139123423632234§);
      }
   }
}

