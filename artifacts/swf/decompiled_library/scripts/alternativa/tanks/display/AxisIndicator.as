package alternativa.tanks.display
{
   import alternativa.engine3d.core.Camera3D;
   import flash.display.Shape;
   
   public class AxisIndicator extends Shape
   {
      
      private const §continue use throw§:Vector.<Number> = new <Number>[0,0,0,0,0,0];
      
      private var _size:int;
      
      public function AxisIndicator(param1:int)
      {
         super();
         this._size = param1;
      }
      
      public function get size() : int
      {
         return this._size;
      }
      
      public function update(param1:Camera3D) : void
      {
         var _loc3_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         graphics.clear();
         param1.composeMatrix();
         this.§continue use throw§[0] = param1.ma;
         this.§continue use throw§[1] = param1.mb;
         this.§continue use throw§[2] = param1.me;
         this.§continue use throw§[3] = param1.mf;
         this.§continue use throw§[4] = param1.mi;
         this.§continue use throw§[5] = param1.mj;
         var _loc2_:int = this._size / 2;
         var _loc4_:int = 16;
         while(_loc3_ < 6)
         {
            _loc5_ = this.§continue use throw§[_loc3_] + 1;
            _loc6_ = this.§continue use throw§[int(_loc3_ + 1)] + 1;
            graphics.lineStyle(0,255 << _loc4_);
            graphics.moveTo(_loc2_,_loc2_);
            graphics.lineTo(_loc2_ * _loc5_,_loc2_ * _loc6_);
            _loc3_ += 2;
            _loc4_ -= 8;
         }
      }
   }
}

