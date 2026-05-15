package §var var with§
{
   import §5214236944236957123423632234§.DiscreteSprite;
   import alternativa.osgi.service.display.IDisplay;
   import flash.events.KeyboardEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.AlertUtils;
   
   public class DialogWindow extends DiscreteSprite
   {
      
      public static var display:IDisplay;
      
      public static var §5214239382239395123423632234§:IDialogsService;
      
      public function DialogWindow()
      {
         super();
      }
      
      public function forciblyClose() : void
      {
         this.cancelKeyPressed();
      }
      
      public function removeEventListeners() : void
      {
         display.stage.removeEventListener("keyUp",this.onKeyUp);
      }
      
      public function setEventListeners() : void
      {
         display.stage.addEventListener("keyUp",this.onKeyUp,false,-4);
      }
      
      protected function onKeyUp(param1:KeyboardEvent) : void
      {
         if(AlertUtils.isCancelKey(param1.keyCode))
         {
            param1.stopImmediatePropagation();
            this.cancelKeyPressed();
         }
         if(AlertUtils.isConfirmationKey(param1.keyCode))
         {
            param1.stopImmediatePropagation();
            this.confirmationKeyPressed();
         }
      }
      
      protected function confirmationKeyPressed() : void
      {
      }
      
      protected function cancelKeyPressed() : void
      {
      }
   }
}

