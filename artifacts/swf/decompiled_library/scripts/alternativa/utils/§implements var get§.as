package alternativa.utils
{
   public class §implements var get§
   {
      
      private static const §5214232601232614123423632234§:String = "/";
      
      public function §implements var get§()
      {
         super();
      }
      
      public static function getResourcePath(param1:uint, param2:uint, param3:uint, param4:uint) : String
      {
         var _loc5_:String = c4a24efd(param3,param4);
         return "/" + param1.toString(8) + "/" + (param2 >> 16 & 0xFFFF).toString(8) + "/" + (param2 >> 8 & 0xFF).toString(8) + "/" + (param2 & 0xFF).toString(8) + "/" + _loc5_ + "/";
      }
      
      private static function f286cd3c(param1:uint) : String
      {
         var _loc2_:String = param1.toString(8);
         return (_loc2_.length < 2 ? "0" : "") + _loc2_;
      }
      
      private static function c4a24efd(param1:uint, param2:uint) : String
      {
         var _loc8_:int = 0;
         var _loc3_:* = 0;
         var _loc5_:* = 0;
         var _loc4_:uint = 0;
         var _loc7_:String = "";
         var _loc6_:String = "";
         while(_loc8_ < 5)
         {
            _loc3_ = uint((param1 & 63 << 4 + _loc4_) >>> _loc4_ + 4);
            _loc5_ = uint((param2 & 63 << _loc4_) >>> _loc4_);
            var _loc11_:uint = _loc3_;
            var _loc10_:String = _loc11_.toString(8);
            _loc7_ = (_loc10_.length < 2 ? "0" : "") + _loc10_ + _loc7_;
            var _loc13_:uint = _loc5_;
            var _loc12_:String = _loc13_.toString(8);
            _loc6_ = (_loc12_.length < 2 ? "0" : "") + _loc12_ + _loc6_;
            _loc4_ += 6;
            _loc8_++;
         }
         var _loc14_:String;
         var _loc15_:Number;
         var _loc9_:String = _loc7_ + (((_loc14_ = (_loc15_ = ((param1 & 0x0F) << 2) + (param2 >>> 30)).toString(8)).length < 2 ? "0" : "") + _loc14_) + _loc6_;
         _loc8_ = 0;
         while(_loc8_ < _loc9_.length && _loc9_.charAt(_loc8_) == "0")
         {
            _loc8_++;
         }
         return _loc9_.substr(_loc8_);
      }
   }
}

