package §while catch false§
{
   import §5214233785233798123423632234§.§include return§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   
   public class PaymentBugReportBlock extends Sprite
   {
      
      public static const §function continue§:int = 11;
      
      public static const §5214239300239313123423632234§:int = 7;
      
      public static var §5214236363236376123423632234§:ILocaleService = OSGi.getInstance().getService(ILocaleService) as ILocaleService;
      
      private static const §5214239036239049123423632234§:Class = §D192525_png$5b20ffe7662fb7efd44c96a3c57a1eaa-1084372194§;
      
      private static const §extends const try§:BitmapData = new §5214239036239049123423632234§().bitmapData;
      
      private var §get const while§:§include return§;
      
      public var §5214236312236325123423632234§:§5214237085237098123423632234§;
      
      private var §const do§:Bitmap;
      
      private var §5214235177235190123423632234§:§5214231141231154123423632234§;
      
      private var _height:Number;
      
      private var _width:Number;
      
      public function PaymentBugReportBlock()
      {
         super();
         this.§get const while§ = new §include return§(0,0,16744512);
         addChild(this.§get const while§);
         this.§const do§ = new Bitmap(§extends const try§);
         addChild(this.§const do§);
         this.§5214235177235190123423632234§ = new §5214231141231154123423632234§();
         addChild(this.§5214235177235190123423632234§);
         this.§5214235177235190123423632234§.multiline = true;
         this.§5214235177235190123423632234§.wordWrap = true;
         this.§5214235177235190123423632234§.text = §5214236363236376123423632234§.getText("PAYMENT_BUG_REPORT_INFO");
         this.§5214236312236325123423632234§ = new §5214237085237098123423632234§();
         this.§5214236312236325123423632234§.label = §5214236363236376123423632234§.getText("PAYMENT_BUTTON_SEND_BUG_REPORT_TEXT");
         this.§5214236312236325123423632234§.addEventListener("click",this.b6c95646);
         addChild(this.§5214236312236325123423632234§);
         this.§5214236312236325123423632234§.y = 7;
         this._height = 45;
         this.§get const while§.height = this._height;
         this.§const do§.x = 11;
         this.§const do§.y = int((this._height - this.§const do§.height) * 0.5);
         this.§5214235177235190123423632234§.x = this.§const do§.x + this.§const do§.width + 11;
      }
      
      override public function set width(param1:Number) : void
      {
         this._width = param1;
         this.§get const while§.width = this._width;
         this.§5214236312236325123423632234§.x = this._width - this.§5214236312236325123423632234§.width - 11;
         this.§5214235177235190123423632234§.width = this.§5214236312236325123423632234§.x - this.§5214235177235190123423632234§.x - 11;
         this.§5214235177235190123423632234§.y = int((this._height - this.§5214235177235190123423632234§.height) * 0.5);
      }
      
      private function b6c95646(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("https://t.me/kl_nazariy"),"_blank");
      }
      
      override public function get width() : Number
      {
         return this._width;
      }
      
      override public function get height() : Number
      {
         return this._height;
      }
      
      override public function set height(param1:Number) : void
      {
      }
   }
}

