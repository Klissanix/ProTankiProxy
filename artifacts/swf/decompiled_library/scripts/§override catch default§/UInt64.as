package §override catch default§
{
   public class UInt64 extends Binary64
   {
      
      public function UInt64(param1:uint = 0, param2:uint = 0)
      {
         super(param1,param2);
      }
      
      public static function parseUInt64(param1:String, param2:uint = 0) : UInt64
      {
         var _loc3_:UInt64 = null;
         var _loc5_:uint = 0;
         var _loc4_:uint = 0;
         if(param2 == 0)
         {
            if(param1.search(/^0x/) == 0)
            {
               param2 = 16;
               _loc4_ = 2;
            }
            else
            {
               param2 = 10;
            }
         }
         if(param2 < 2 || param2 > 36)
         {
            throw new ArgumentError();
         }
         param1 = param1.toLowerCase();
         _loc3_ = new UInt64();
         while(_loc4_ < param1.length)
         {
            _loc5_ = param1.charCodeAt(_loc4_);
            if(_loc5_ >= "0".charCodeAt() && _loc5_ <= "9".charCodeAt())
            {
               _loc5_ -= "0".charCodeAt();
            }
            else
            {
               if(!(_loc5_ >= "a".charCodeAt() && _loc5_ <= "z".charCodeAt()))
               {
                  throw new ArgumentError();
               }
               _loc5_ -= "a".charCodeAt();
            }
            if(_loc5_ >= param2)
            {
               throw new ArgumentError();
            }
            _loc3_.mul(param2);
            _loc3_.add(_loc5_);
            _loc4_++;
         }
         return _loc3_;
      }
      
      final public function toString(param1:uint = 10) : String
      {
         var _loc4_:uint = 0;
         if(param1 < 2 || param1 > 36)
         {
            throw new ArgumentError();
         }
         var _loc5_:UInt64 = this;
         if(_loc5_.§5214236533236546123423632234§ == 0)
         {
            return low.toString(param1);
         }
         var _loc3_:Array = [];
         var _loc6_:UInt64;
         var _loc2_:UInt64 = new UInt64(low,(_loc6_ = this).§5214236533236546123423632234§);
         var _loc7_:UInt64;
         do
         {
            _loc4_ = _loc2_.div(param1);
            _loc3_[_loc3_.length] = (_loc4_ < 10 ? "0" : "a").charCodeAt() + _loc4_;
         }
         while(_loc7_ = _loc2_, _loc7_.§5214236533236546123423632234§ != 0);
         return _loc2_.low.toString(param1) + String.fromCharCode.apply(String,_loc3_.reverse());
      }
      
      final public function toNumber() : Number
      {
         var _loc1_:UInt64 = this;
         return _loc1_.§5214236533236546123423632234§ * 4294967296 + low;
      }
      
      final public function set high(param1:uint) : void
      {
         §5214236533236546123423632234§ = param1;
      }
      
      final public function get high() : uint
      {
         return §5214236533236546123423632234§;
      }
   }
}

