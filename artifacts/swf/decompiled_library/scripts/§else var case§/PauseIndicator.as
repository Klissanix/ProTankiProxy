package §else var case§
{
   import §5214232472232485123423632234§.§with package true§;
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import flash.display.Bitmap;
   
   public class PauseIndicator extends §with package true§
   {
      
      private static const §switch var class§:String = "{time}";
      
      private static const §5214239249239262123423632234§:Class = §a1gh309_png$0ffaa164fec9cf0c7fc3b90e76a37fc7-1686414918§;
      
      private var §in for true§:§5214238529238542123423632234§;
      
      private var §static const true§:String;
      
      private var §class package in§:int;
      
      public function PauseIndicator(param1:String, param2:String, param3:String)
      {
         super();
         this.§static const true§ = param3;
         var _loc7_:int = 33;
         var _loc11_:int = 33;
         var _loc5_:int = 5;
         var _loc8_:int = 16;
         var _loc6_:Bitmap = new §5214239249239262123423632234§();
         addChild(_loc6_);
         _loc6_.y = _loc7_;
         var _loc4_:int = _loc6_.y + _loc6_.height + 2 * _loc5_;
         var _loc9_:§5214238529238542123423632234§ = new §5214238529238542123423632234§();
         _loc9_.§521423102842310297123423632234§ = _loc8_;
         _loc9_.text = param1;
         _loc9_.y = _loc4_;
         addChild(_loc9_);
         width = _loc9_.textWidth;
         _loc4_ += _loc9_.height + _loc5_;
         var _loc10_:§5214238529238542123423632234§ = new §5214238529238542123423632234§();
         _loc10_.§521423102842310297123423632234§ = _loc8_;
         _loc10_.text = param2;
         _loc10_.y = _loc4_;
         addChild(_loc10_);
         if(width < _loc10_.textWidth)
         {
            width = _loc10_.textWidth;
         }
         _loc4_ += _loc10_.height + _loc5_;
         this.§in for true§ = new §5214238529238542123423632234§();
         this.§in for true§.§521423102842310297123423632234§ = _loc8_;
         this.§in for true§.autoSize = "left";
         this.§in for true§.text = param3 + " 99:99";
         this.§in for true§.y = _loc4_;
         addChild(this.§in for true§);
         if(width < this.§in for true§.textWidth)
         {
            width = this.§in for true§.textWidth;
         }
         width += 2 * _loc11_;
         _loc6_.x = width - _loc6_.width >> 1;
         _loc9_.x = width - _loc9_.width >> 1;
         _loc10_.x = width - _loc10_.width >> 1;
         height = _loc4_ + this.§in for true§.height + _loc7_ - 5;
      }
      
      public function set seconds(param1:int) : void
      {
         if(this.§class package in§ == param1)
         {
            return;
         }
         this.§class package in§ = param1;
         var _loc3_:int = this.§class package in§ / 60;
         this.§class package in§ -= _loc3_ * 60;
         var _loc2_:String = this.§class package in§ < 10 ? "0" + this.§class package in§ : this.§class package in§.toString();
         this.§in for true§.text = this.§static const true§.replace("{time}",_loc3_ + ":" + _loc2_);
         this.§in for true§.x = width - this.§in for true§.width >> 1;
      }
   }
}

