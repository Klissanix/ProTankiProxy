package §finally catch with§
{
   import alternativa.engine3d.materials.TextureMaterial;
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import flash.utils.Dictionary;
   
   public class §5214238074238087123423632234§
   {
      
      public function §5214238074238087123423632234§()
      {
         super();
      }
      
      public static function §for use include§(param1:Dictionary, param2:uint, param3:BitmapData, param4:Boolean = true) : TextureMaterial
      {
         var _loc5_:TextureMaterial = param1[param2];
         if(_loc5_ == null)
         {
            _loc5_ = new TextureMaterial(§5214235116235129123423632234§(param3,param2,0.75),param4,true,2);
            param1[param2] = _loc5_;
         }
         return _loc5_;
      }
      
      public static function §5214235116235129123423632234§(param1:BitmapData, param2:int, param3:Number = 1) : BitmapData
      {
         var _loc5_:Number = param3 * (param2 >> 16 & 0xFF) / 255;
         var _loc7_:Number = param3 * (param2 >> 8 & 0xFF) / 255;
         var _loc6_:Number = param3 * (param2 & 0xFF) / 255;
         var _loc4_:BitmapData = param1.clone();
         _loc4_.colorTransform(param1.rect,new ColorTransform(_loc5_,_loc7_,_loc6_));
         return _loc4_;
      }
   }
}

