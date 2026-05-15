package alternativa.tanks.gui
{
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.display.Sprite;
   import §import catch catch§.OrderingLine;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   
   public class ThanksForPurchaseWindow extends DialogWindow
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public var closeButton:§5214237085237098123423632234§;
      
      public var §else catch default§:int;
      
      private const §52142343223445123423632234§:int = 12;
      
      private const §final var class§:int = 9;
      
      private var §return const set§:Sprite;
      
      public function ThanksForPurchaseWindow(param1:BitmapData, param2:int, param3:int, param4:int, param5:int)
      {
         var _loc6_:Bitmap = null;
         var _loc7_:OrderingLine = null;
         super();
         this.§else catch default§ = param2;
         var _loc14_:int = 42 + param1.width;
         var _loc13_:§native for dynamic§ = new §native for dynamic§();
         addChild(_loc13_);
         var _loc9_:§include return§ = new §include return§(_loc14_ - 12 * 2,0,4278985229);
         this.§return const set§ = _loc9_;
         _loc13_.addChild(_loc9_);
         _loc9_.x = 12;
         _loc9_.y = 12;
         _loc6_ = new Bitmap(param1);
         _loc6_.x = (_loc9_.width - _loc6_.width) / 2;
         this.addLine(_loc6_,12);
         var _loc12_:int = _loc9_.width * 0.8;
         if(param2 > 0)
         {
            _loc7_ = new OrderingLine(§5214236363236376123423632234§.getText("STRING_DONATION_ALERT_DONATED_CRYSTALS_TEXT"),param2);
            _loc7_.width = _loc12_;
            this.a67abae4(_loc7_,_loc9_.width);
            this.addLine(_loc7_,0);
         }
         if(param3 > 0)
         {
            _loc7_ = new OrderingLine(§5214236363236376123423632234§.getText("STRING_DONATION_ALERT_PACKAGE_BONUS_CRYSTALS_TEXT"),param3);
            _loc7_.width = _loc12_;
            this.a67abae4(_loc7_,_loc9_.width);
            this.addLine(_loc7_,-7);
         }
         if(param4 > 0)
         {
            _loc7_ = new OrderingLine(§5214236363236376123423632234§.getText("STRING_DONATION_ALERT_DOUBLE_CRYSTAL_CRYSTALS_TEXT"),param4);
            _loc7_.width = _loc12_;
            this.a67abae4(_loc7_,_loc9_.width);
            this.addLine(_loc7_,-7);
         }
         if(param5 > 0)
         {
            _loc7_ = new OrderingLine(§5214236363236376123423632234§.getText("DONATION_ALERT_PREMIUM_DAYS_TEXT"),param5,true);
            _loc7_.width = _loc12_;
            this.a67abae4(_loc7_,_loc9_.width);
            this.addLine(_loc7_,param2 > 0 ? -7 : 0);
         }
         var _loc11_:Shape = new Shape();
         _loc11_.graphics.beginFill(5898034);
         var _loc10_:int = 0;
         while(_loc10_ < _loc12_ - 5)
         {
            _loc11_.graphics.drawRect(_loc10_,0,1,1);
            _loc10_ += 3;
         }
         this.a67abae4(_loc11_,_loc9_.width);
         this.addLine(_loc11_,4);
         var _loc8_:int = param4 + param2 + param3;
         if(_loc8_ > 0)
         {
            _loc7_ = new OrderingLine(§5214236363236376123423632234§.getText("STRING_DONATION_ALERT_RECEIVED_CRYSTALS_TEXT"),_loc8_);
            _loc7_.width = _loc12_;
            this.a67abae4(_loc7_,_loc9_.width);
            this.addLine(_loc7_,1);
         }
         if(param5 > 0)
         {
            _loc7_ = new OrderingLine(§5214236363236376123423632234§.getText("DONATION_ALERT_RECEIVED_PREMIUM_TEXT"),param5,true);
            _loc7_.width = _loc12_;
            this.a67abae4(_loc7_,_loc9_.width);
            this.addLine(_loc7_,_loc8_ > 0 ? -7 : 1);
         }
         _loc9_.height += 12;
         this.closeButton = new §5214237085237098123423632234§();
         if(§5214236363236376123423632234§ != null)
         {
            this.closeButton.label = §5214236363236376123423632234§.getText("FREE_BONUSES_WINDOW_BUTTON_CLOSE_TEXT");
         }
         this.closeButton.y = _loc9_.x + _loc9_.height + 12;
         this.a67abae4(this.closeButton,_loc14_);
         _loc13_.addChild(this.closeButton);
         _loc13_.height = this.closeButton.y + this.closeButton.height + 12;
         _loc13_.width = _loc14_;
         addChild(_loc13_);
      }
      
      private function addLine(param1:DisplayObject, param2:int) : void
      {
         param1.y = this.§return const set§.height + param2;
         this.§return const set§.addChild(param1);
      }
      
      private function a67abae4(param1:DisplayObject, param2:Number) : void
      {
         param1.x = int((param2 - param1.width) / 2);
      }
   }
}

