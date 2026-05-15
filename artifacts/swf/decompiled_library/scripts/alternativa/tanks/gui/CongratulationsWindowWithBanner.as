package alternativa.tanks.gui
{
   import §521423107782310791123423632234§.GarageItemBackground;
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214233785233798123423632234§.§native set dynamic§;
   import §5214238696238709123423632234§.§5214231187231200123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Point;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   
   public class CongratulationsWindowWithBanner extends DialogWindow
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var window:§native for dynamic§;
      
      private var §return const set§:§include return§;
      
      public var closeButton:§5214237085237098123423632234§;
      
      private var §extends for package§:§5214231141231154123423632234§;
      
      private var §521423121722312185123423632234§:Point;
      
      private var windowWidth:int = 450;
      
      private const §52142343223445123423632234§:int = 12;
      
      private const §final var class§:int = 9;
      
      private const §5214237400237413123423632234§:Point = new Point(104,33);
      
      private const space:int = 8;
      
      private var §5214234689234702123423632234§:Bitmap;
      
      private var §default use switch§:Sprite;
      
      public function CongratulationsWindowWithBanner(param1:String, param2:Vector.<§5214231187231200123423632234§>)
      {
         var _loc8_:int = 0;
         var _loc9_:PreviewBonusItem = null;
         var _loc6_:§5214231141231154123423632234§ = null;
         super();
         var _loc7_:GarageItemBackground = new GarageItemBackground(11);
         var _loc4_:Boolean = (param2.length & 1) == 0;
         if(param2.length == 1)
         {
            _loc8_ = 1;
         }
         else if(param2.length < 5)
         {
            _loc8_ = 2;
         }
         else
         {
            _loc8_ = 3;
         }
         var _loc5_:Sprite = new Sprite();
         this.§default use switch§ = new Sprite();
         this.§5214234689234702123423632234§ = new Bitmap();
         _loc5_.addChild(this.§5214234689234702123423632234§);
         this.windowWidth = _loc7_.width + 12 * 2 + 9 * 2 + (_loc7_.width + 8) * (_loc8_ - 1);
         this.§extends for package§ = new §5214231141231154123423632234§();
         this.§extends for package§.wordWrap = true;
         this.§extends for package§.multiline = true;
         this.§extends for package§.text = param1;
         this.§extends for package§.§521423102842310297123423632234§ = 12;
         this.§extends for package§.color = 5898034;
         this.§extends for package§.x = 12 * 2;
         this.§extends for package§.y = 12 * 2;
         this.§extends for package§.width = this.windowWidth - 12 * 4;
         this.§521423121722312185123423632234§ = new Point(this.windowWidth,this.§extends for package§.height + this.§5214237400237413123423632234§.y + 12 * 3 + 9 * 3);
         this.window = new §native for dynamic§(this.§521423121722312185123423632234§.x,this.§521423121722312185123423632234§.y);
         addChild(this.window);
         this.window.§extends package var§ = §5214236363236376123423632234§.getText("GUI_LANG");
         this.window.§extends catch default§ = §native set dynamic§.§null catch super§;
         this.§return const set§ = new §include return§(0,0,4278985229);
         addChild(this.§return const set§);
         this.§return const set§.x = 12;
         this.§return const set§.y = 12;
         this.§return const set§.width = this.§521423121722312185123423632234§.x - 12 * 2;
         this.§return const set§.height = this.§521423121722312185123423632234§.y - 12 - 9 * 2 - this.§5214237400237413123423632234§.y + 2;
         addChild(this.§extends for package§);
         addChild(this.§default use switch§);
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            _loc7_ = new GarageItemBackground(11);
            this.§default use switch§.addChild(_loc7_);
            _loc9_ = new PreviewBonusItem(param2[_loc3_].§521423132052313218123423632234§,_loc7_.width,_loc7_.height);
            this.§default use switch§.addChild(_loc9_);
            _loc7_.x = (!_loc4_ && _loc3_ > param2.length - _loc8_ ? _loc7_.width + 8 >> 1 : 0) + int(_loc3_ % _loc8_) * (_loc7_.width + 8);
            _loc7_.y = (_loc7_.height + 8) * (int(_loc3_ / _loc8_));
            _loc9_.x = _loc7_.x;
            _loc9_.y = _loc7_.y;
            _loc6_ = new §5214231141231154123423632234§();
            this.§default use switch§.addChild(_loc6_);
            _loc6_.§521423102842310297123423632234§ = 16;
            _loc6_.color = 5898034;
            _loc6_.text = "×" + param2[_loc3_].§5214237362237375123423632234§.toString();
            _loc6_.x = _loc7_.x + _loc7_.width - _loc6_.width - 15;
            _loc6_.y = _loc7_.y + _loc7_.height - _loc6_.height - 10;
            _loc3_++;
         }
         this.§521423121722312185123423632234§.y += this.§default use switch§.height;
         this.closeButton = new §5214237085237098123423632234§();
         addChild(this.closeButton);
         this.closeButton.label = §5214236363236376123423632234§.getText("FREE_BONUSES_WINDOW_BUTTON_CLOSE_TEXT");
         this.closeButton.y = this.§521423121722312185123423632234§.y - 9 - this.§5214237400237413123423632234§.y - 2;
         this.b6fac716();
         addChild(_loc5_);
         this.window.height = this.§521423121722312185123423632234§.y;
         this.window.width = this.§521423121722312185123423632234§.x;
      }
      
      public function get banner() : Bitmap
      {
         return this.§5214234689234702123423632234§;
      }
      
      public function set bannerBd(param1:BitmapData) : void
      {
         this.§5214234689234702123423632234§.bitmapData = param1;
         this.§521423121722312185123423632234§.y = this.§521423121722312185123423632234§.y + this.§5214234689234702123423632234§.height + 9 - 1;
         this.windowWidth = this.§521423121722312185123423632234§.x = Math.max(this.§521423121722312185123423632234§.x,this.§5214234689234702123423632234§.width + 12 * 2 + 9 * 2);
         this.window.height = this.§521423121722312185123423632234§.y;
         this.window.width = this.§521423121722312185123423632234§.x;
         this.b6fac716();
         this.§5214234689234702123423632234§.x = this.windowWidth - this.§5214234689234702123423632234§.width >> 1;
         this.§5214234689234702123423632234§.y = this.§return const set§.y + this.§return const set§.height - 9 - this.§5214234689234702123423632234§.height - 1;
         this.closeButton.y = this.§521423121722312185123423632234§.y - 9 - this.§5214237400237413123423632234§.y - 2;
      }
      
      private function b6fac716() : void
      {
         this.§extends for package§.width = this.windowWidth - 12 * 4;
         this.§default use switch§.y = this.§extends for package§.y + this.§extends for package§.height + 12;
         this.§default use switch§.x = this.§521423121722312185123423632234§.x - this.§default use switch§.width >> 1;
         this.§return const set§.width = this.§521423121722312185123423632234§.x - 12 * 2;
         this.§return const set§.height = this.§521423121722312185123423632234§.y - 12 - 9 * 2 - this.§5214237400237413123423632234§.y + 2;
         this.closeButton.x = this.§521423121722312185123423632234§.x - this.§5214237400237413123423632234§.x >> 1;
      }
   }
}

