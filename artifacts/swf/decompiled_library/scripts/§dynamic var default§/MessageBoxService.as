package §dynamic var default§
{
   import §521423129502312963123423632234§.§function catch with§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import platform.client.fp10.core.service.errormessage.IErrorMessageService;
   import platform.client.fp10.core.service.errormessage.§static const extends§;
   
   public class MessageBoxService implements IErrorMessageService
   {
      
      private var osgi:OSGi;
      
      private var window:§static const extends§;
      
      public function MessageBoxService(param1:OSGi)
      {
         super();
         this.osgi = param1;
      }
      
      public function showMessage(param1:§function catch with§) : void
      {
         if(this.window == null)
         {
            this.window = new DefaultMessageWindow();
         }
         var _loc2_:IDisplay = IDisplay(this.osgi.getService(IDisplay));
         _loc2_.stage.addChild(this.window.getDisplayObject(param1));
      }
      
      public function hideMessage() : void
      {
         this.window.hide();
      }
      
      public function setMessageBox(param1:§static const extends§) : void
      {
         this.window = param1;
      }
   }
}

