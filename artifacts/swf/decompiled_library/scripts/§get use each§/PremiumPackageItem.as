package §get use each§
{
   import §5214233191233204123423632234§.§default true§;
   import §extends set static§.ShopItemBase;
   import flash.display.Bitmap;
   import projects.tanks.clients.flash.commons.services.timeunit.ITimeUnitService;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class PremiumPackageItem extends ShopItemBase
   {
      
      public static var §final switch else§:ITimeUnitService;
      
      private static const §use switch true§:int = 18;
      
      private static const §in for extends§:uint = 4144959;
      
      private const §5214233955233968123423632234§:uint = 3432728;
      
      private var §get include§:§5214231141231154123423632234§;
      
      private var §521423126462312659123423632234§:§5214231141231154123423632234§;
      
      private var icon:Bitmap;
      
      private var §implements switch class§:Object;
      
      public function PremiumPackageItem(param1:String, param2:Object)
      {
         this.§implements switch class§ = param2;
         super(param1,§default true§.§521423118832311896123423632234§);
      }
      
      private function render() : void
      {
         this.icon.x = 18 - 5;
         this.§get include§.x = this.icon.x + this.icon.width - 7;
         this.§521423126462312659123423632234§.x = this.§get include§.x;
         this.icon.y = 143 - this.icon.height >> 1;
         this.§get include§.y = this.icon.y + 2;
         this.§521423126462312659123423632234§.y = this.icon.y + this.icon.height - this.§521423126462312659123423632234§.height;
      }
      
      private function c3f7fe17() : void
      {
         this.§get include§ = new §5214231141231154123423632234§();
         this.§get include§.text = "+" + §final switch else§.method_597(this.§implements switch class§.premium_duration);
         this.§get include§.color = 3432728;
         this.§get include§.autoSize = "left";
         this.§get include§.§521423102842310297123423632234§ = 30;
         this.§get include§.bold = true;
         this.§get include§.mouseEnabled = false;
         addChild(this.§get include§);
         this.§521423126462312659123423632234§ = new §5214231141231154123423632234§();
         fixChineseCurrencyLabelRendering(this.§521423126462312659123423632234§);
         this.§521423126462312659123423632234§.text = this.§implements switch class§.price + " " + this.§implements switch class§.currency;
         this.§521423126462312659123423632234§.color = 4144959;
         this.§521423126462312659123423632234§.autoSize = "left";
         this.§521423126462312659123423632234§.§521423102842310297123423632234§ = 22;
         this.§521423126462312659123423632234§.bold = true;
         this.§521423126462312659123423632234§.mouseEnabled = false;
         addChild(this.§521423126462312659123423632234§);
      }
      
      override protected function init() : void
      {
         super.init();
         this.c3f7fe17();
         this.a4231424();
         this.render();
      }
      
      private function a4231424() : void
      {
         this.icon = new Bitmap(PremiumPackageItemIcons.§5214232300232313123423632234§);
         addChild(this.icon);
      }
   }
}

