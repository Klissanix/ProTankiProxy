package §521423129512312964123423632234§
{
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §try switch get§
   {
      
      public function §try switch get§()
      {
         super();
      }
      
      public static function §while const use§(param1:BitmapData, param2:BitmapData, param3:Boolean = false) : BitmapData
      {
         var _loc5_:BitmapData = null;
         var _loc4_:BitmapData = new BitmapData(param1.width,param1.height);
         var _loc6_:Point = new Point();
         _loc4_.copyPixels(param1,param1.rect,_loc6_);
         if(param1.width != param2.width || param1.height != param2.height)
         {
            _loc5_ = param2;
            param2 = new BitmapData(param1.width,param1.height);
            param2.draw(_loc5_,new Matrix(param1.width / _loc5_.width,0,0,param1.height / _loc5_.height),null,"normal",null,true);
         }
         _loc4_.copyChannel(param2,param2.rect,_loc6_,1,8);
         if(_loc5_ != null)
         {
            param2.dispose();
            param2 = _loc5_;
         }
         if(param3)
         {
            param1.dispose();
            param2.dispose();
         }
         return _loc4_;
      }
   }
}

