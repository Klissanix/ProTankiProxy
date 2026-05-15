package §class package function§
{
   import §override catch default§.Long;
   
   public class §for switch import§
   {
      
      private static const §include const do§:Object = {};
      
      private static const §dynamic set§:Object = {};
      
      public function §for switch import§()
      {
         super();
      }
      
      public static function strToId(param1:String) : Long
      {
         var _loc7_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc8_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:Long = §include const do§[param1];
         if(!_loc2_)
         {
            _loc7_ = 0;
            _loc3_ = param1.length;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = uint(param1.charCodeAt(_loc4_));
               _loc7_ = uint((_loc7_ << 5) - _loc7_ + _loc5_);
               _loc7_ &= _loc7_;
               _loc4_++;
            }
            _loc8_ = _loc7_ >>> 32 & 0xFFFFFFFF & 0x7FFFFFFF;
            _loc6_ = _loc7_ & 0xFFFFFFFF;
            _loc2_ = Long.getLong(_loc8_,_loc6_);
            §include const do§[param1] = _loc2_;
            §dynamic set§[_loc2_] = param1;
         }
         return _loc2_;
      }
      
      public static function idToStr(param1:Long) : String
      {
         return §dynamic set§[param1];
      }
   }
}

