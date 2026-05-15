package §5214238735238748123423632234§
{
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.startup.StartupSettings;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   
   public class ErrorForm extends DialogWindow
   {
      
      private static const §continue switch null§:Class = §D192525_png$e953a2957949add593f40e58e7c027fa-508775837§;
      
      private static const §5214236179236192123423632234§:BitmapData = new §continue switch null§().bitmapData;
      
      private var §5214236363236376123423632234§:ILocaleService;
      
      private var §case while§:§5214237085237098123423632234§;
      
      private var §override native§:§5214231141231154123423632234§;
      
      private var window:§native for dynamic§;
      
      private var description:§5214231141231154123423632234§;
      
      private var §switch for finally§:§include return§;
      
      private var icon:Bitmap;
      
      private var §override catch case§:String;
      
      public function ErrorForm(param1:ILocaleService)
      {
         var _loc2_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         _loc2_ = NaN;
         super();
         this.§5214236363236376123423632234§ = param1;
         var _loc7_:Number = 300;
         var _loc8_:Number = 12;
         _loc5_ = 10;
         _loc2_ = -2;
         var _loc6_:Number = 47;
         _loc3_ = 33;
         _loc4_ = 100;
         this.icon = new Bitmap(§5214236179236192123423632234§);
         this.icon.x = 23;
         this.icon.y = 23;
         this.description = new §5214231141231154123423632234§();
         this.description.color = 5898035;
         this.description.multiline = true;
         this.description.autoSize = "left";
         this.description.x = this.icon.x + this.icon.width + _loc8_ - 4;
         this.description.y = _loc8_ + _loc8_ - 3;
         this.description.text = "Unknown";
         this.description.selectable = true;
         if(this.description.y + this.description.height > this.icon.y + this.icon.height)
         {
            _loc6_ += this.description.y + this.description.height - this.icon.y - this.icon.height;
         }
         this.window = new §native for dynamic§(_loc7_,_loc8_ + _loc6_ + _loc5_ + _loc3_ + _loc5_ + _loc2_ + _loc3_ + _loc8_);
         this.§switch for finally§ = new §include return§(_loc7_ - _loc8_ * 2,_loc6_,4278985229);
         this.§switch for finally§.x = _loc8_;
         this.§switch for finally§.y = _loc8_;
         addChild(this.window);
         this.window.addChild(this.§switch for finally§);
         this.window.addChild(this.icon);
         this.window.addChild(this.description);
         this.§case while§ = new §5214237085237098123423632234§();
         this.§case while§.label = param1.getText("REENTER_TO_GAME");
         this.§case while§.x = _loc8_ + 1;
         this.§case while§.y = _loc8_ + _loc6_ + _loc5_;
         this.§case while§.width += 48;
         this.§case while§.addEventListener("click",this.d2cd57c2);
         this.window.addChild(this.§case while§);
         this.§override native§ = new §5214231141231154123423632234§();
         this.§override native§.htmlText = "<a href=\'event:haveAcc\'><font color=\'#31FE01\'><u>" + param1.getText("CAUSES_AND_SOLUTIONS") + "</u></font></a>";
         this.§override native§.x = _loc7_ - _loc8_ - _loc4_ - 1;
         this.§override native§.y = _loc8_ + _loc6_ + _loc5_ + _loc3_ + _loc5_ + _loc2_;
         this.§override native§.addEventListener("link",this.b24df00f);
         this.window.addChild(this.§override native§);
         this.f556f4ca();
      }
      
      public function setSupportUrl(param1:String) : void
      {
         this.§override catch case§ = param1;
      }
      
      private function f556f4ca() : void
      {
         this.window.x = display.stage.width - this.window.width >> 1;
         this.window.y = display.stage.height - this.window.height >> 1;
      }
      
      public function setErrorText(param1:String) : void
      {
         this.description.text = param1;
         this.redraw();
      }
      
      private function b24df00f(param1:TextEvent) : void
      {
         navigateToURL(new URLRequest(this.§override catch case§),"_blank");
      }
      
      private function redraw() : void
      {
         this.§switch for finally§.width = 12 + this.icon.width + 8 + this.description.width + 20;
         this.§switch for finally§.height = Math.max(this.icon.height,this.description.height) + 20;
         this.window.width = this.§switch for finally§.width + 24;
         this.window.height = 12 + this.§switch for finally§.height + 12 + this.§case while§.height + 12 + this.§override native§.height + 14 - 10;
         if(this.description.height < this.icon.height)
         {
            this.description.y = this.icon.y + (this.icon.height - this.description.textHeight >> 1) - 3;
         }
         this.§case while§.x = this.window.width - this.§case while§.width >> 1;
         this.§case while§.y = this.§switch for finally§.y + this.§switch for finally§.height + 12 - 4;
         this.§override native§.x = this.window.width - this.§override native§.width >> 1;
         this.§override native§.y = this.§case while§.y + this.§case while§.height + 12 - 7;
         this.f556f4ca();
      }
      
      private function d2cd57c2(param1:MouseEvent = null) : void
      {
         StartupSettings.closeApplication();
      }
   }
}

