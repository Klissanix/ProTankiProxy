package §521423136932313706123423632234§
{
   import §521423133902313403123423632234§.§5214235988236001123423632234§;
   import §521423133902313403123423632234§.ImageResourceLoadingWrapper;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214235609235622123423632234§.§5214236076236089123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import §true switch true§.§5214237085237098123423632234§;
   
   public class NewPresentsAlert extends §5214236076236089123423632234§ implements §5214235988236001123423632234§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §52142379923812123423632234§:§5214237085237098123423632234§;
      
      public function NewPresentsAlert(param1:§include catch with§)
      {
         super(§5214236363236376123423632234§.getImage("IMAGE_HEADER_NEW_PRESENTS_ALERT"),§5214236363236376123423632234§.getText("FREE_BONUSES_WINDOW_BUTTON_CLOSE_TEXT"));
         var _loc2_:§include catch with§ = param1;
         if((_loc2_.§else for include§ & 1) != 0)
         {
            this.e48322b7(param1.data);
         }
         else
         {
            var _loc3_:§include catch with§ = param1;
            if(_loc3_.§5214239618239631123423632234§.§521423137152313728123423632234§)
            {
               param1.§5214234169234182123423632234§(new ImageResourceLoadingWrapper(this));
            }
         }
      }
      
      private function accept(param1:MouseEvent) : void
      {
         dispatchEvent(new NewPresentsAlertEvent("NewPresentsAlertEvent.Accept"));
         this.a35b4e12();
      }
      
      private function cancel(param1:MouseEvent) : void
      {
         dispatchEvent(new NewPresentsAlertEvent("NewPresentsAlertEvent.Cancel"));
         this.a35b4e12();
      }
      
      private function e48322b7(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1);
         §var var use§(400,240);
         §5214236204236217123423632234§.addChild(_loc2_);
         _loc2_.x = (§5214236204236217123423632234§.width - _loc2_.width) / 2;
         _loc2_.y = (§5214236204236217123423632234§.height - _loc2_.height) / 2;
         this.§52142379923812123423632234§ = new §5214237085237098123423632234§();
         this.§52142379923812123423632234§.label = §5214236363236376123423632234§.getText("TEXT_NEW_PRESENTS_ALERT_ACCEPT_BUTTON");
         var _loc3_:int = Math.max(this.§52142379923812123423632234§.width,§include var true§.width);
         this.§52142379923812123423632234§.x = (§use var try§.width - _loc3_) / 2;
         this.§52142379923812123423632234§.width = _loc3_;
         §include var true§.x = §use var try§.width - _loc3_;
         §include var true§.width = _loc3_;
         §use var try§.addChild(this.§52142379923812123423632234§);
         §include var true§.addEventListener("click",this.cancel);
         this.§52142379923812123423632234§.addEventListener("click",this.accept);
         §5214239382239395123423632234§.enqueueDialog(this);
      }
      
      public function setPreviewResource(param1:§include catch with§) : void
      {
         this.e48322b7(param1.data);
      }
      
      private function a35b4e12() : void
      {
         §include var true§.removeEventListener("click",this.cancel);
         this.§52142379923812123423632234§.removeEventListener("click",this.accept);
         destroy();
      }
   }
}

