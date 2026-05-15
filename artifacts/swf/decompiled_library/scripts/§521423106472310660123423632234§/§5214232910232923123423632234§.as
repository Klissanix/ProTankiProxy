package §521423106472310660123423632234§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import flash.geom.Point;
   
   public class §5214232910232923123423632234§ extends §5214232498232511123423632234§
   {
      
      private var §set for if§:Number;
      
      private var §class null§:Number;
      
      private var §52142311523128123423632234§:Number;
      
      public function §5214232910232923123423632234§(param1:Number)
      {
         super();
         this.§52142311523128123423632234§ = param1;
      }
      
      private static function §function package§(param1:Vertex, param2:Vertex) : Number
      {
         var _loc5_:Number = param1.x - param2.x;
         var _loc7_:Number = param1.y - param2.y;
         var _loc8_:Number = param1.z - param2.z;
         var _loc9_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc7_ * _loc7_ + _loc8_ * _loc8_);
         var _loc3_:Number = param1.u - param2.u;
         var _loc4_:Number = param1.v - param2.v;
         var _loc6_:Number = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         return _loc6_ / _loc9_;
      }
      
      private static function §null use const§(param1:Face) : Number
      {
         var _loc2_:Vector.<Vertex> = param1.vertices;
         return §function package§(_loc2_[0],_loc2_[1]);
      }
      
      override public function §for use function§(param1:Number) : void
      {
         var _loc6_:int = 0;
         var _loc4_:Vertex = null;
         var _loc2_:Point = null;
         super.§for use function§(param1);
         var _loc5_:Number = §else use extends§ * this.§class null§ * this.§set for if§ % this.§52142311523128123423632234§;
         var _loc3_:int = int(§5214235339235352123423632234§.length);
         while(_loc6_ < _loc3_)
         {
            _loc4_ = §5214235339235352123423632234§[_loc6_];
            _loc2_ = §null use do§[_loc6_];
            _loc4_.u = _loc2_.x + _loc5_;
            _loc4_.v = _loc2_.y;
            _loc6_++;
         }
      }
      
      override public function init() : void
      {
         var _loc4_:Vertex = null;
         super.init();
         this.§set for if§ = 0;
         for each(var _loc1_ in §5214234596234609123423632234§)
         {
            this.§set for if§ += §null use const§(_loc1_);
         }
         this.§set for if§ /= §5214234596234609123423632234§.length;
         var _loc2_:Number = Infinity;
         var _loc6_:Number = Infinity;
         var _loc5_:Number = -Infinity;
         var _loc3_:Number = -Infinity;
         for each(var _loc7_ in §5214235339235352123423632234§)
         {
            _loc4_ = _loc7_;
            if(_loc4_.x < _loc2_)
            {
               _loc2_ = Number(_loc4_.x);
            }
            if(_loc4_.z < _loc6_)
            {
               _loc6_ = Number(_loc4_.z);
            }
            if(_loc4_.x > _loc5_)
            {
               _loc5_ = Number(_loc4_.x);
            }
            if(_loc4_.z > _loc3_)
            {
               _loc3_ = Number(_loc4_.z);
            }
         }
         this.§class null§ = (_loc5_ - _loc2_ + _loc3_ - _loc6_) / 4;
         §else use extends§ = 0;
      }
   }
}

