package §finally if§
{
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   
   public class §if for import§
   {
      
      private static var §521423119502311963123423632234§:Matrix = new Matrix();
      
      private var §else const in§:int;
      
      private var §null use false§:int;
      
      private var §catch package switch§:int;
      
      private var §throw var try§:int;
      
      private var §true set continue§:int;
      
      private var §5214231602231615123423632234§:int;
      
      private var §extends var if§:§set catch break§;
      
      private var §case catch else§:int;
      
      private var §5214232220232233123423632234§:int;
      
      private var §5214233457233470123423632234§:int;
      
      private var §521423110492311062123423632234§:Shape = new Shape();
      
      private var x:int;
      
      private var y:int;
      
      private var §521423138742313887123423632234§:Rectangle;
      
      private var §521423532366123423632234§:int = -1;
      
      public function §if for import§(param1:int, param2:int, param3:int, param4:int, param5:§set catch break§)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§else const in§ = param3;
         this.§null use false§ = param4;
         this.§default switch switch§(param5);
         this.§521423138742313887123423632234§ = new Rectangle(param1,param2,2 * this.§catch package switch§ + param4,this.§throw var try§);
      }
      
      public function §default switch switch§(param1:§set catch break§) : void
      {
         if(this.§extends var if§ == param1)
         {
            return;
         }
         this.§521423532366123423632234§ = -1;
         this.§extends var if§ = param1;
         this.§case catch else§ = param1.§521423136222313635123423632234§.width;
         this.§5214232220232233123423632234§ = param1.§521423136222313635123423632234§.height;
         this.§catch package switch§ = param1.§each var if§.width;
         this.§throw var try§ = param1.§with for dynamic§.height;
         this.§true set continue§ = this.§catch package switch§ - this.§case catch else§;
         this.§5214231602231615123423632234§ = this.§throw var try§ - this.§5214232220232233123423632234§ >> 1;
      }
      
      public function get §5214238426238439123423632234§() : int
      {
         return this.§5214233457233470123423632234§;
      }
      
      private function §521423132326123423632234§(param1:Graphics, param2:uint, param3:BitmapData, param4:BitmapData) : void
      {
         var _loc5_:int = this.§null use false§ - this.§case catch else§;
         §521423119502311963123423632234§.tx = this.§true set continue§;
         §521423119502311963123423632234§.ty = this.§5214231602231615123423632234§;
         param1.beginBitmapFill(param3,§521423119502311963123423632234§,false);
         param1.drawRect(this.§true set continue§,this.§5214231602231615123423632234§,this.§case catch else§,this.§5214232220232233123423632234§);
         param1.beginFill(param2);
         param1.drawRect(this.§true set continue§ + this.§case catch else§,this.§5214231602231615123423632234§,_loc5_ - this.§case catch else§,this.§5214232220232233123423632234§);
         §521423119502311963123423632234§.tx = this.§true set continue§ + _loc5_;
         param1.beginBitmapFill(param4,§521423119502311963123423632234§,false);
         param1.drawRect(this.§true set continue§ + _loc5_,this.§5214231602231615123423632234§,this.§case catch else§,this.§5214232220232233123423632234§);
      }
      
      public function set §5214238426238439123423632234§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         else if(param1 > this.§else const in§)
         {
            param1 = this.§else const in§;
         }
         this.§5214233457233470123423632234§ = param1;
      }
      
      public function §5214233910233923123423632234§(param1:BitmapData) : Boolean
      {
         if(this.§521423532366123423632234§ == this.§5214233457233470123423632234§)
         {
            return false;
         }
         this.§521423532366123423632234§ = this.§5214233457233470123423632234§;
         var _loc2_:int = 0;
         var _loc4_:Graphics = this.§521423110492311062123423632234§.graphics;
         _loc4_.clear();
         _loc4_.beginBitmapFill(this.§extends var if§.§each var if§);
         _loc4_.drawRect(0,0,this.§catch package switch§,this.§throw var try§);
         _loc4_.beginBitmapFill(this.§extends var if§.§with for dynamic§);
         _loc4_.drawRect(this.§catch package switch§,0,this.§null use false§ - 2 * this.§case catch else§,this.§throw var try§);
         _loc4_.beginBitmapFill(this.§extends var if§.§521423117152311728123423632234§);
         _loc4_.drawRect(this.§catch package switch§ + this.§null use false§ - 2 * this.§case catch else§,0,this.§catch package switch§,this.§throw var try§);
         _loc4_.endFill();
         var _loc3_:int = this.§null use false§ * this.§5214233457233470123423632234§ / this.§else const in§;
         var _loc5_:int = this.§null use false§ - this.§case catch else§;
         if(_loc3_ >= this.§case catch else§)
         {
            if(_loc3_ == this.§null use false§)
            {
               this.§521423132326123423632234§(_loc4_,this.§extends var if§.color,this.§extends var if§.§52142371523728123423632234§,this.§extends var if§.§if for include§);
               _loc2_ = _loc3_;
            }
            else
            {
               §521423119502311963123423632234§.tx = this.§true set continue§;
               §521423119502311963123423632234§.ty = this.§5214231602231615123423632234§;
               _loc4_.beginBitmapFill(this.§extends var if§.§52142371523728123423632234§,§521423119502311963123423632234§,false);
               _loc4_.drawRect(this.§true set continue§,this.§5214231602231615123423632234§,this.§case catch else§,this.§5214232220232233123423632234§);
               if(_loc3_ > this.§case catch else§)
               {
                  if(_loc3_ > _loc5_)
                  {
                     _loc3_ = _loc5_;
                  }
                  _loc2_ = _loc3_;
                  _loc4_.beginFill(this.§extends var if§.color);
                  _loc4_.drawRect(this.§true set continue§ + this.§case catch else§,this.§5214231602231615123423632234§,_loc3_ - this.§case catch else§,this.§5214232220232233123423632234§);
               }
               else
               {
                  _loc2_ = this.§case catch else§;
               }
            }
         }
         if(_loc2_ == 0)
         {
            this.§521423132326123423632234§(_loc4_,this.§extends var if§.§class package class§,this.§extends var if§.§521423136222313635123423632234§,this.§extends var if§.§5214231596231609123423632234§);
         }
         else if(_loc2_ < this.§null use false§)
         {
            _loc4_.beginFill(this.§extends var if§.§class package class§);
            _loc4_.drawRect(this.§true set continue§ + _loc2_,this.§5214231602231615123423632234§,_loc5_ - _loc2_,this.§5214232220232233123423632234§);
            §521423119502311963123423632234§.tx = this.§true set continue§ + _loc5_;
            §521423119502311963123423632234§.ty = this.§5214231602231615123423632234§;
            _loc4_.beginBitmapFill(this.§extends var if§.§5214231596231609123423632234§,§521423119502311963123423632234§,false);
            _loc4_.drawRect(this.§true set continue§ + _loc5_,this.§5214231602231615123423632234§,this.§case catch else§,this.§5214232220232233123423632234§);
         }
         _loc4_.endFill();
         param1.fillRect(this.§521423138742313887123423632234§,0);
         §521423119502311963123423632234§.tx = this.x;
         §521423119502311963123423632234§.ty = this.y;
         param1.draw(this.§521423110492311062123423632234§,§521423119502311963123423632234§);
         return true;
      }
      
      public function §521423127692312782123423632234§() : void
      {
         this.§521423532366123423632234§ = -1;
      }
   }
}

