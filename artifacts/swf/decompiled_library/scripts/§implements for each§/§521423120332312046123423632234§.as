package §implements for each§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class §521423120332312046123423632234§ extends §include implements§
   {
      
      private static const §override const var§:Class = §D7ac71d_png$72129a7a762bfcef2fac6172d50e6f73-1080726536§;
      
      public function §521423120332312046123423632234§()
      {
         super();
      }
      
      override protected function §dynamic finally package§(param1:int) : Bitmap
      {
         return new Bitmap(§const for use§.§import use case§[param1 - 1]);
      }
      
      override protected function §521423127532312766123423632234§(param1:int) : Bitmap
      {
         var _loc3_:BitmapData = null;
         var _loc2_:BitmapData = null;
         var _loc5_:Matrix = null;
         var _loc4_:Vector.<BitmapData> = §521423108052310818123423632234§.§import use case§;
         if(_loc4_[param1 - 1] == null)
         {
            _loc3_ = new §override const var§().bitmapData;
            _loc2_ = §const for use§.§import use case§[param1 - 1];
            _loc5_ = new Matrix();
            _loc5_.tx = 37 - _loc2_.width / 2;
            _loc5_.ty = 37 - _loc2_.height / 2;
            if(param1 == 1 || param1 == 2)
            {
               _loc5_.ty += 2;
            }
            else if(param1 == 4)
            {
               _loc5_.ty += 1;
            }
            else if(param1 == 24 || param1 == 28)
            {
               _loc5_.ty -= 1;
            }
            else if(param1 == 14 || param1 == 12 || param1 == 21 || param1 == 23 || param1 == 25 || param1 == 27)
            {
               _loc5_.ty -= 2;
            }
            else if(param1 == 11 || param1 == 20 || param1 == 26)
            {
               _loc5_.ty -= 3;
            }
            _loc3_.draw(_loc2_,_loc5_);
            _loc4_[param1 - 1] = _loc3_;
         }
         return new Bitmap(_loc4_[param1 - 1]);
      }
   }
}

