package §override catch default§
{
   public class Binary64
   {
      
      public var low:uint;
      
      internal var §5214236533236546123423632234§:uint;
      
      public function Binary64(param1:uint = 0, param2:uint = 0)
      {
         super();
         this.low = param1;
         this.§5214236533236546123423632234§ = param2;
      }
      
      final internal function div(param1:uint) : uint
      {
         var _loc2_:uint = 0;
         _loc2_ = this.§5214236533236546123423632234§ % param1;
         var _loc3_:uint = (this.low % param1 + _loc2_ * 6) % param1;
         this.§5214236533236546123423632234§ /= param1;
         var _loc4_:Number = (_loc2_ * 4294967296 + this.low) / param1;
         this.§5214236533236546123423632234§ += _loc4_ / 4294967296;
         this.low = _loc4_;
         return _loc3_;
      }
      
      final internal function bitwiseNot() : void
      {
         this.low = ~this.low;
         this.§5214236533236546123423632234§ = ~this.§5214236533236546123423632234§;
      }
      
      final internal function mul(param1:uint) : void
      {
         var _loc2_:Number = this.low * param1;
         this.§5214236533236546123423632234§ = _loc2_ / 4294967296 + this.§5214236533236546123423632234§ * param1;
         this.low = _loc2_;
      }
      
      final internal function add(param1:uint) : void
      {
         var _loc2_:Number = this.low + param1;
         this.§5214236533236546123423632234§ = _loc2_ / 4294967296 + this.§5214236533236546123423632234§;
         this.low = _loc2_;
      }
   }
}

