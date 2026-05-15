package alternativa.tanks.model.shop
{
   import §521423113862311399123423632234§.§5214231607231620123423632234§;
   import §521423126642312677123423632234§.§521423112552311268123423632234§;
   import §5214231838231851123423632234§.CrystalPackageItem;
   import §5214233785233798123423632234§.§native for dynamic§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.events.Event;
   import §get use each§.PremiumPackageItem;
   import §static switch native§.§var do§;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   import §while catch false§.PaymentBugReportBlock;
   
   public class ShopWindow extends DialogWindow
   {
      
      public static const §extends use import§:int = 11;
      
      public static const §implements package extends§:int = 915;
      
      private static const §5214236925236938123423632234§:int = 691;
      
      private static const §521423128242312837123423632234§:int = 570;
      
      public static const §5214239300239313123423632234§:int = 7;
      
      public static var §52142358723600123423632234§:Boolean = false;
      
      public static var §5214236363236376123423632234§:ILocaleService = OSGi.getInstance().getService(ILocaleService) as ILocaleService;
      
      private var §var package false§:int;
      
      private var window:§native for dynamic§ = new §native for dynamic§();
      
      private var §5214237216237229123423632234§:PaymentBugReportBlock;
      
      public var header:ShopWindowHeader = new ShopWindowHeader();
      
      private var §521423106852310698123423632234§:§521423112552311268123423632234§;
      
      private var closeButton:§5214237085237098123423632234§;
      
      public function ShopWindow()
      {
         super();
         addChild(this.window);
         this.window.width = 915;
         this.window.height = 691;
         this.header.x = 11;
         this.header.y = 11;
         this.header.resize(915 - 11 * 2);
         this.closeButton = new §5214237085237098123423632234§();
         this.closeButton.tabEnabled = false;
         this.closeButton.label = §5214236363236376123423632234§.getText("FREE_BONUSES_WINDOW_BUTTON_CLOSE_TEXT");
         this.closeButton.x = this.window.width - this.closeButton.width - 2 * 11;
         this.closeButton.y = this.window.height - this.closeButton.height - 11;
         this.closeButton.addEventListener("click",this.b4a4df01);
         addChild(this.closeButton);
         this.§5214237216237229123423632234§ = new PaymentBugReportBlock();
         this.§5214237216237229123423632234§.x = 11;
         this.§5214237216237229123423632234§.y = this.closeButton.y - 11 - this.§5214237216237229123423632234§.height;
         this.§5214237216237229123423632234§.width = this.window.width - 11 - this.§5214237216237229123423632234§.x;
         addChild(this.§5214237216237229123423632234§);
         this.header.addEventListener("close",this.b4a4df01);
         addChild(this.header);
         this.§var package false§ = numChildren;
         display.stage.addEventListener("resize",this.render);
         this.render();
         §5214239382239395123423632234§.addDialog(this);
      }
      
      public function render(param1:Event = null) : void
      {
         this.window.height = Math.round(Math.max(570,Math.min(display.stage.stageHeight / Display.§521423132512313264123423632234§ - 60,691)));
         this.closeButton.y = this.window.height - this.closeButton.height - 11;
         this.§5214237216237229123423632234§.y = this.closeButton.y - this.§5214237216237229123423632234§.height - 3;
         this.§5214237216237229123423632234§.width = 915 - 11 - this.§5214237216237229123423632234§.x;
         if(this.§521423106852310698123423632234§)
         {
            this.§521423106852310698123423632234§.x = 11;
            this.§521423106852310698123423632234§.y = this.header.y + this.header.height;
            this.§521423106852310698123423632234§.render(915 - 11 * 2,this.§5214237216237229123423632234§.y - this.§521423106852310698123423632234§.y - 3);
         }
      }
      
      public function addItem(param1:String, param2:String, param3:Object, param4:§5214231607231620123423632234§) : void
      {
         if(param2.indexOf("crystal") >= 0)
         {
            param4.addItem(new CrystalPackageItem(param2,param3),param1);
         }
         else if(param2.indexOf("premium") >= 0)
         {
            param4.addItem(new PremiumPackageItem(param2,param3),param1);
         }
         else
         {
            param4.addItem(new §var do§(param2),param1);
         }
         param4.render(this.window.width - 11 * 2,this.§5214237216237229123423632234§.y - param4.y - 11);
      }
      
      public function method_2602(param1:§521423112552311268123423632234§) : void
      {
         if(Boolean(this.§521423106852310698123423632234§) && contains(this.§521423106852310698123423632234§))
         {
            removeChild(this.§521423106852310698123423632234§);
            this.§521423106852310698123423632234§.destroy();
         }
         this.§521423106852310698123423632234§ = param1;
         this.§521423106852310698123423632234§.§521423108472310860123423632234§ = this;
         addChildAt(this.§521423106852310698123423632234§,this.§var package false§ - 1);
         this.render();
         this.§521423106852310698123423632234§.§52142397823991123423632234§();
      }
      
      private function b4a4df01(param1:Event = null) : void
      {
         dispatchEvent(new Event("close"));
      }
   }
}

