package §finally catch with§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §521423119702311983123423632234§
   {
      
      public function §521423119702311983123423632234§()
      {
         super();
      }
      
      public static function §5214239513239526123423632234§(param1:BitmapData, param2:BitmapData) : Bitmap
      {
         var _loc6_:Number = param1.width;
         var _loc7_:Number = param1.height;
         var _loc5_:BitmapData = new BitmapData(_loc6_,_loc7_,true,0);
         var _loc3_:Point = new Point();
         var _loc4_:Rectangle = new Rectangle(0,0,_loc6_,_loc7_);
         _loc5_.copyPixels(param1,_loc4_,_loc3_);
         _loc5_.copyChannel(param2,_loc4_,_loc3_,1,8);
         param1.dispose();
         param2.dispose();
         return new Bitmap(_loc5_);
      }
   }
}

