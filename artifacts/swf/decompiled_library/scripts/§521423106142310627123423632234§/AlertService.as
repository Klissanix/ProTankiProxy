package §521423106142310627123423632234§
{
   import §521423128372312850123423632234§.§continue§;
   import §5214234825234838123423632234§.ConnectionCloseStatus;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.utils.removeDisplayObject;
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import §include else§.§each set with§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.AlertServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.IBlurService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.DialogWindowsDispatcherServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   
   public class AlertService extends EventDispatcher implements IAlertService, §continue§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var display:IDisplay;
      
      public static var §with catch override§:IBlurService;
      
      public static var §5214238240238253123423632234§:IDialogWindowsDispatcherService;
      
      private var §5214231165231178123423632234§:Alert;
      
      private var §use const implements§:Vector.<Alert>;
      
      public function AlertService()
      {
         super();
         this.init();
      }
      
      public function showAlertWithCustomButtons(param1:String, param2:Vector.<String>, param3:Vector.<Sprite>) : void
      {
         var _loc4_:Alert = null;
         if(this.b549d1ae())
         {
            this.§5214231165231178123423632234§ = new Alert();
            this.§5214231165231178123423632234§.showAlertWithCustomButtons(param1,param2,param3);
            this.eea0331();
         }
         else
         {
            _loc4_ = new Alert();
            _loc4_.showAlertWithCustomButtons(param1,param2,param3);
            this.§use const implements§[§use const implements§.length] = _loc4_;
         }
      }
      
      public function showOkAlert(param1:String) : void
      {
         this.showAlert(param1,Vector.<String>([§5214236363236376123423632234§.getText(AlertAnswer.OK)]));
      }
      
      private function e145b0db() : void
      {
         §5214238240238253123423632234§.removeEventListener("DialogWindowsDispatcherServiceEvent.FORCIBLY_CLOSE",this.b66fa208);
         this.§5214231165231178123423632234§.removeEventListener("CloseAlert",this.b7749caf);
         this.§5214231165231178123423632234§ = null;
         if(this.§use const implements§.length > 0)
         {
            this.§5214231165231178123423632234§ = this.§use const implements§.shift();
            this.eea0331();
         }
         else
         {
            §5214238240238253123423632234§.close();
            §with catch override§.unblurDialogContent();
         }
      }
      
      private function b66fa208(param1:DialogWindowsDispatcherServiceEvent) : void
      {
         this.§5214231165231178123423632234§.simulatePressedCancel();
      }
      
      private function eea0331() : void
      {
         §5214238240238253123423632234§.open();
         §with catch override§.blurDialogContent();
         display.noticesLayer.addChild(this.§5214231165231178123423632234§);
         this.§5214231165231178123423632234§.addEventListener("CloseAlert",this.b7749caf);
         §5214238240238253123423632234§.addEventListener("DialogWindowsDispatcherServiceEvent.FORCIBLY_CLOSE",this.b66fa208);
      }
      
      public function onConnectionClosed(param1:ConnectionCloseStatus) : void
      {
         this.§use const implements§.length = 0;
         if(this.§5214231165231178123423632234§)
         {
            removeDisplayObject(this.§5214231165231178123423632234§);
            this.e145b0db();
         }
      }
      
      public function showAlert(param1:String, param2:Vector.<String>) : void
      {
         var _loc3_:Alert = null;
         if(this.b549d1ae())
         {
            this.§5214231165231178123423632234§ = new Alert();
            this.§5214231165231178123423632234§.showAlert(param1,param2);
            this.eea0331();
         }
         else
         {
            _loc3_ = new Alert();
            _loc3_.showAlert(param1,param2);
            this.§use const implements§[§use const implements§.length] = _loc3_;
         }
      }
      
      private function init() : void
      {
         this.§5214231165231178123423632234§ = new Alert();
         this.§5214231165231178123423632234§ = null;
         this.§use const implements§ = new Vector.<Alert>();
      }
      
      private function b549d1ae() : Boolean
      {
         return this.§5214231165231178123423632234§ == null;
      }
      
      private function b7749caf(param1:§each set with§) : void
      {
         this.e145b0db();
         dispatchEvent(new AlertServiceEvent("AlertServiceEvent.ALERT_BUTTON_PRESSED",param1.§5214236155236168123423632234§));
      }
      
      public function showAlertById(param1:int) : void
      {
         if(this.b549d1ae())
         {
            this.§5214231165231178123423632234§ = new Alert(param1);
            this.eea0331();
         }
         else
         {
            this.§use const implements§[§use const implements§.length] = new Alert(param1);
         }
      }
   }
}

