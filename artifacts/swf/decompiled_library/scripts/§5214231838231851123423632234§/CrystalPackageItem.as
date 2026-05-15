package §5214231838231851123423632234§
{
   import §5214232543232556123423632234§.FormatUtils;
   import §5214233191233204123423632234§.§default true§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.model.shop.ShopWindow;
   import §extends set static§.ShopItemBase;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import projects.tanks.clients.flash.commons.services.timeunit.ITimeUnitService;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class CrystalPackageItem extends ShopItemBase
   {
      
      public static var §final switch else§:ITimeUnitService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private static const §use switch true§:int = 18;
      
      private static const §521423115272311540123423632234§:int = 18;
      
      private static const §5214232444232457123423632234§:int = 17;
      
      private static const §52142393723950123423632234§:int = 17;
      
      private static const §5214232022232035123423632234§:int = 153;
      
      private static const §521423129062312919123423632234§:int = -2;
      
      private static const §with var finally§:uint = 23704;
      
      private static const §in for extends§:uint = 4144959;
      
      private var §import finally§:Bitmap;
      
      private var §get package break§:§5214231141231154123423632234§;
      
      private var §catch const continue§:Bitmap;
      
      private var §521423126462312659123423632234§:§5214231141231154123423632234§;
      
      private var §get include§:§5214231141231154123423632234§;
      
      private var §5214232300232313123423632234§:Bitmap;
      
      private var §5214236143236156123423632234§:§5214231141231154123423632234§;
      
      private var §each for while§:§5214231141231154123423632234§;
      
      private var §import catch final§:Bitmap;
      
      private var §implements switch class§:Object;
      
      public function CrystalPackageItem(param1:String, param2:Object)
      {
         this.§implements switch class§ = param2;
         super(param1,§default true§.§each for final§);
      }
      
      private function a388b6ae() : void
      {
         this.§get package break§ = new §5214231141231154123423632234§();
         this.§get package break§.text = FormatUtils.valueToString(this.§implements switch class§.crystalls_count,0,false);
         this.§get package break§.color = 23704;
         this.§get package break§.autoSize = "left";
         this.§get package break§.§521423102842310297123423632234§ = 30;
         this.§get package break§.bold = true;
         this.§get package break§.mouseEnabled = false;
         addChild(this.§get package break§);
         this.§catch const continue§ = new Bitmap(CrystalPackageItemIcons.§for use in§);
         addChild(this.§catch const continue§);
         this.§521423126462312659123423632234§ = new §5214231141231154123423632234§();
         fixChineseCurrencyLabelRendering(this.§521423126462312659123423632234§);
         this.§521423126462312659123423632234§.text = FormatUtils.valueToString(this.§implements switch class§.price,0,false) + " " + this.§implements switch class§.currency;
         this.§521423126462312659123423632234§.color = 4144959;
         this.§521423126462312659123423632234§.autoSize = "left";
         this.§521423126462312659123423632234§.§521423102842310297123423632234§ = 22;
         this.§521423126462312659123423632234§.bold = true;
         this.§521423126462312659123423632234§.mouseEnabled = false;
         addChild(this.§521423126462312659123423632234§);
      }
      
      private function e28798ef() : void
      {
         if(ShopWindow.§52142358723600123423632234§)
         {
            setSkin(§default true§.§521423107532310766123423632234§);
         }
         this.§5214236143236156123423632234§ = new §5214231141231154123423632234§();
         this.§5214236143236156123423632234§.text = "+" + FormatUtils.valueToString(this.§implements switch class§.bonus_crystalls,0,false);
         this.§5214236143236156123423632234§.color = 16777215;
         this.§5214236143236156123423632234§.autoSize = "left";
         this.§5214236143236156123423632234§.§521423102842310297123423632234§ = 22;
         this.§5214236143236156123423632234§.bold = true;
         this.§5214236143236156123423632234§.mouseEnabled = false;
         addChild(this.§5214236143236156123423632234§);
         this.§each for while§ = new §5214231141231154123423632234§();
         this.§each for while§.text = §5214236363236376123423632234§.getText("CRYSTALS_PACKAGE_AS_GIFT");
         this.§each for while§.color = 16777215;
         this.§each for while§.autoSize = "left";
         this.§each for while§.§521423102842310297123423632234§ = 18;
         this.§each for while§.mouseEnabled = false;
         addChild(this.§each for while§);
         this.§import catch final§ = new Bitmap(CrystalPackageItemIcons.§521423104712310484123423632234§);
         addChild(this.§import catch final§);
      }
      
      private function d2a75a60() : void
      {
         setSkin(§default true§.§521423118832311896123423632234§);
      }
      
      private function f5a8d550() : void
      {
         this.§get include§ = new §5214231141231154123423632234§();
         this.§get include§.text = "+" + this.§implements switch class§.premium_duration + " " + §final switch else§.method_1983(this.§implements switch class§.premium_duration).charAt(0);
         this.§get include§.color = 16777215;
         this.§get include§.autoSize = "left";
         this.§get include§.§521423102842310297123423632234§ = 20;
         this.§get include§.mouseEnabled = false;
         this.§get include§.bold = true;
         addChild(this.§get include§);
         this.§5214232300232313123423632234§ = new Bitmap(CrystalPackageItemIcons.premium);
         addChild(this.§5214232300232313123423632234§);
      }
      
      override public function set gridPosition(param1:int) : void
      {
         var _loc2_:BitmapData = CrystalPackageItemIcons.§5214233757233770123423632234§[param1];
         if(!_loc2_ && param1 != 0)
         {
            _loc2_ = CrystalPackageItemIcons.§5214233757233770123423632234§[CrystalPackageItemIcons.§5214233757233770123423632234§.length - 1];
         }
         if(_loc2_)
         {
            this.§import finally§ = new Bitmap(_loc2_);
            addChildAt(this.§import finally§,2);
         }
         this.render();
      }
      
      private function get hasPremium() : Boolean
      {
         return this.§implements switch class§.premium_duration > 0;
      }
      
      private function get hasPresent() : Boolean
      {
         return this.§implements switch class§.bonus_crystalls > 0;
      }
      
      override protected function init() : void
      {
         super.init();
         if(this.hasPresent)
         {
            this.e28798ef();
         }
         else
         {
            this.d2a75a60();
         }
         this.a388b6ae();
         if(this.hasPremium)
         {
            this.f5a8d550();
         }
         this.render();
      }
      
      private function render() : void
      {
         this.§get package break§.x = 18;
         this.§get package break§.y = 17;
         this.§catch const continue§.x = this.§get package break§.x + this.§get package break§.width + 3;
         this.§catch const continue§.y = 17 + 8;
         this.§521423126462312659123423632234§.x = 18;
         this.§521423126462312659123423632234§.y = this.§get package break§.y + this.§get package break§.height - 5;
         if(this.§import finally§)
         {
            this.§import finally§.x = 153;
            this.§import finally§.y = -2;
         }
         if(this.hasPremium)
         {
            this.§get include§.x = 18;
            this.§5214232300232313123423632234§.x = this.§get include§.x + this.§get include§.width + 5;
            this.§5214232300232313123423632234§.y = 143 - 17 - this.§5214232300232313123423632234§.height;
            this.§get include§.y = this.§5214232300232313123423632234§.y + 4;
         }
         if(this.hasPresent)
         {
            this.§import catch final§.x = 279 - 18 - this.§import catch final§.width;
            this.§5214236143236156123423632234§.x = this.§import catch final§.x - this.§5214236143236156123423632234§.width;
            this.§each for while§.x = this.§5214236143236156123423632234§.x - (§5214236363236376123423632234§.language == "ua" ? 8 : 0);
            this.§each for while§.y = 143 - 17 - this.§each for while§.height;
            this.§5214236143236156123423632234§.y = this.§each for while§.y - this.§each for while§.height + 4;
            this.§import catch final§.y = this.§5214236143236156123423632234§.y + 5;
         }
      }
   }
}

