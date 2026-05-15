package utils
{
   import flash.display.BitmapData;
   
   public class §if set for§
   {
      
      public function §if set for§()
      {
         super();
      }
      
      public static function flipH(param1:BitmapData) : BitmapData
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,true);
         var _loc3_:int = param1.width;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < param1.height)
            {
               _loc2_.setPixel32(_loc4_,_loc5_,param1.getPixel32(_loc3_ - 1 - _loc4_,_loc5_));
               _loc5_++;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public static function flipW(param1:BitmapData) : BitmapData
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,true);
         while(_loc3_ < param1.width)
         {
            _loc4_ = 0;
            while(_loc4_ < param1.height)
            {
               _loc2_.setPixel32(_loc3_,_loc4_,param1.getPixel32(_loc3_,param1.height - 1 - _loc4_));
               _loc4_++;
            }
            _loc3_++;
         }
         return _loc2_;
      }
   }
}

