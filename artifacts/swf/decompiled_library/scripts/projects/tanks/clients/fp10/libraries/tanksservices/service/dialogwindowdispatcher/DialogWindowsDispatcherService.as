package projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher
{
   import flash.events.EventDispatcher;
   
   public class DialogWindowsDispatcherService extends EventDispatcher implements IDialogWindowsDispatcherService
   {
      
      private var §switch switch use§:Boolean;
      
      public function DialogWindowsDispatcherService()
      {
         super();
      }
      
      public function forciblyClose() : void
      {
         this.§switch switch use§ = false;
         dispatchEvent(new DialogWindowsDispatcherServiceEvent("DialogWindowsDispatcherServiceEvent.FORCIBLY_CLOSE"));
      }
      
      public function close() : void
      {
         this.§switch switch use§ = false;
         dispatchEvent(new DialogWindowsDispatcherServiceEvent("DialogWindowsDispatcherServiceEvent.CLOSE"));
      }
      
      public function isOpen() : Boolean
      {
         return this.§switch switch use§;
      }
      
      public function open() : void
      {
         this.§switch switch use§ = true;
         dispatchEvent(new DialogWindowsDispatcherServiceEvent("DialogWindowsDispatcherServiceEvent.OPEN"));
      }
   }
}

