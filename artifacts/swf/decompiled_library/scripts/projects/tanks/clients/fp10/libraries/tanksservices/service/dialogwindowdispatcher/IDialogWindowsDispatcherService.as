package projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher
{
   import flash.events.IEventDispatcher;
   
   public interface IDialogWindowsDispatcherService extends IEventDispatcher
   {
      
      function close() : void;
      
      function open() : void;
      
      function isOpen() : Boolean;
      
      function forciblyClose() : void;
   }
}

