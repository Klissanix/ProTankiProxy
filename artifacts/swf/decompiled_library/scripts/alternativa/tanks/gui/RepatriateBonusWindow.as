package alternativa.tanks.gui
{
   import §521423107782310791123423632234§.GarageItemBackground;
   import §5214233785233798123423632234§.§include return§;
   import §5214238696238709123423632234§.§5214231187231200123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import §continue switch package§.§for var extends§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Point;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   
   public class RepatriateBonusWindow extends DialogWindow
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var window:§for var extends§;
      
      private var §return const set§:§include return§;
      
      public var closeButton:§5214237085237098123423632234§;
      
      private var §extends for package§:§5214231141231154123423632234§;
      
      private var §521423121722312185123423632234§:Point;
      
      private var windowWidth:int = 450;
      
      private const §52142343223445123423632234§:int = 12;
      
      private const §final var class§:int = 9;
      
      private const §5214237400237413123423632234§:Point = new Point(104,33);
      
      private const space:int = 8;
      
      private var §default use switch§:Sprite;
      
      public function RepatriateBonusWindow(param1:BitmapData, param2:String, param3:Vector.<§5214231187231200123423632234§>)
      {
         var _loc12_:int = 0;
         var _loc10_:PreviewBonusItem = null;
         var _loc11_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§5214231141231154123423632234§ = null;
         super();
         var _loc7_:GarageItemBackground = new GarageItemBackground(11);
         if(param3.length == 1)
         {
            _loc12_ = 1;
         }
         else if(param3.length <= 4)
         {
            _loc12_ = 2;
         }
         else if(param3.length <= 6)
         {
            _loc12_ = 3;
         }
         else
         {
            _loc12_ = 4;
         }
         this.§default use switch§ = new Sprite();
         this.windowWidth = _loc7_.width + 12 * 2 + 9 * 2 + (_loc7_.width + 8) * (_loc12_ - 1);
         this.§extends for package§ = new §5214231141231154123423632234§();
         this.§extends for package§.wordWrap = true;
         this.§extends for package§.multiline = true;
         this.§extends for package§.text = param2;
         this.§extends for package§.§521423102842310297123423632234§ = 12;
         this.§extends for package§.color = 5898034;
         this.§extends for package§.x = 12 * 2;
         this.§extends for package§.y = 134;
         this.§extends for package§.width = this.windowWidth - 12 * 4;
         this.§521423121722312185123423632234§ = new Point(this.windowWidth,110 + this.§extends for package§.height + this.§5214237400237413123423632234§.y + 12 * 3 + 9 * 3);
         this.window = new §for var extends§();
         this.window.width = this.§521423121722312185123423632234§.x;
         this.window.height = this.§521423121722312185123423632234§.y;
         addChild(this.window);
         this.window.§extends package var§ = §5214236363236376123423632234§.getText("GUI_LANG");
         this.window.§var package case§ = "WELCOME_BACK_HEADER";
         this.§return const set§ = new §include return§(0,0,4278985229);
         addChild(this.§return const set§);
         this.§return const set§.x = 12;
         this.§return const set§.y = 12;
         this.§return const set§.width = this.§521423121722312185123423632234§.x - 12 * 2;
         this.§return const set§.height = this.§521423121722312185123423632234§.y - 12 - 9 * 2 - this.§5214237400237413123423632234§.y + 2;
         var _loc5_:Bitmap = new Bitmap(param1);
         addChild(_loc5_);
         _loc5_.y = 30;
         _loc5_.x = (this.§return const set§.width - _loc5_.width) / 2;
         addChild(this.§extends for package§);
         addChild(this.§default use switch§);
         var _loc4_:int = int(param3.length / _loc12_) + 1;
         var _loc6_:int = 0;
         while(_loc6_ < param3.length)
         {
            _loc7_ = new GarageItemBackground(11);
            this.§default use switch§.addChild(_loc7_);
            _loc10_ = new PreviewBonusItem(param3[_loc6_].§521423132052313218123423632234§,_loc7_.width,_loc7_.height);
            this.§default use switch§.addChild(_loc10_);
            if(int(_loc6_ / _loc12_) + 1 == _loc4_)
            {
               _loc11_ = param3.length - (_loc4_ - 1) * _loc12_;
               _loc8_ = (_loc12_ - _loc11_) * (_loc7_.width + 8 >> 1);
               _loc7_.x = int(_loc6_ % _loc12_) * (_loc7_.width + 8) + _loc8_;
            }
            else
            {
               _loc7_.x = int(_loc6_ % _loc12_) * (_loc7_.width + 8);
            }
            _loc7_.y = (_loc7_.height + 8) * (int(_loc6_ / _loc12_));
            _loc10_.x = _loc7_.x;
            _loc10_.y = _loc7_.y;
            if(param3[_loc6_].§5214237362237375123423632234§ > 0)
            {
               _loc9_ = new §5214231141231154123423632234§();
               this.§default use switch§.addChild(_loc9_);
               _loc9_.§521423102842310297123423632234§ = 16;
               _loc9_.color = 5898034;
               _loc9_.text = "×" + param3[_loc6_].§5214237362237375123423632234§.toString();
               _loc9_.x = _loc7_.x + _loc7_.width - _loc9_.width - 15;
               _loc9_.y = _loc7_.y + _loc7_.height - _loc9_.height - 10;
            }
            _loc6_++;
         }
         this.§521423121722312185123423632234§.y += this.§default use switch§.height;
         this.closeButton = new §5214237085237098123423632234§();
         addChild(this.closeButton);
         this.closeButton.label = §5214236363236376123423632234§.getText("FREE_BONUSES_WINDOW_BUTTON_CLOSE_TEXT");
         this.closeButton.y = this.§521423121722312185123423632234§.y - 9 - this.§5214237400237413123423632234§.y - 2;
         this.b6fac716();
         this.window.height = this.§521423121722312185123423632234§.y;
         this.window.width = this.§521423121722312185123423632234§.x;
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

