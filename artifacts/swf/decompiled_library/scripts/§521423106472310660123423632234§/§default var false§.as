package §521423106472310660123423632234§
{
   import alternativa.engine3d.core.Vertex;
   import flash.geom.Point;
   
   public class §default var false§ extends §5214232498232511123423632234§
   {
      
      private var §in package default§:Number;
      
      private var §with use set§:Number;
      
      public function §default var false§(param1:Number, param2:Number)
      {
         super();
         this.§in package default§ = param1;
         this.§with use set§ = param2;
      }
      
      override public function §for use function§(param1:Number) : void
      {
         var _loc8_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Vertex = null;
         var _loc7_:Point = null;
         super.§for use function§(param1);
         var _loc6_:Number = Math.cos(§else use extends§);
         var _loc3_:Number = -Math.sin(§else use extends§);
         var _loc4_:int = 0;
         while(_loc4_ < §5214235339235352123423632234§.length)
         {
            _loc2_ = §5214235339235352123423632234§[_loc4_];
            _loc7_ = §null use do§[_loc4_];
            _loc8_ = _loc7_.x - this.§in package default§;
            _loc5_ = _loc7_.y - this.§with use set§;
            _loc2_.u = _loc8_ * _loc6_ + _loc5_ * _loc3_ + this.§in package default§;
            _loc2_.v = _loc8_ * _loc3_ - _loc5_ * _loc6_ + this.§with use set§;
            _loc4_++;
         }
      }
   }
}

