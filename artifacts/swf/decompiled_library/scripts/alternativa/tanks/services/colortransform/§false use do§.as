package alternativa.tanks.services.colortransform
{
   import §5214231816231829123423632234§.§const package for§;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.Color;
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   
   public class §false use do§
   {
      
      public function §false use do§()
      {
         super();
      }
      
      public static function clone(param1:ColorTransform) : ColorTransform
      {
         if(param1 == null)
         {
            return null;
         }
         return new ColorTransform(param1.redMultiplier,param1.greenMultiplier,param1.blueMultiplier,param1.alphaMultiplier,param1.redOffset,param1.greenOffset,param1.blueOffset,param1.alphaOffset);
      }
      
      public static function transformBitmap(param1:BitmapData, param2:ColorTransform) : BitmapData
      {
         var _loc3_:BitmapData = param1.clone();
         _loc3_.colorTransform(_loc3_.rect,param2);
         return _loc3_;
      }
      
      public static function equal(param1:ColorTransform, param2:ColorTransform) : Boolean
      {
         if(param1 == param2)
         {
            return true;
         }
         if(param1 == null || param2 == null)
         {
            return false;
         }
         return param1.redMultiplier == param2.redMultiplier && param1.greenMultiplier == param2.greenMultiplier && param1.blueMultiplier == param2.blueMultiplier && param1.alphaMultiplier == param2.alphaMultiplier && param1.redOffset == param2.redOffset && param1.greenOffset == param2.greenOffset && param1.blueOffset == param2.blueOffset && param1.alphaOffset == param2.alphaOffset;
      }
      
      public static function toString(param1:ColorTransform) : String
      {
         if(param1 == null)
         {
            return "null";
         }
         return param1.toString();
      }
      
      public static function calculateColorTransform(param1:§const package for§, param2:Number) : ColorTransform
      {
         var _loc7_:Color = null;
         var _loc13_:Color = null;
         var _loc8_:Matrix3 = null;
         var _loc10_:Vector3 = null;
         var _loc6_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc14_:ColorTransform = null;
         var _loc15_:GPUCapabilities = GPUCapabilities;
         if(!projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ || Boolean(projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§))
         {
            _loc7_ = new Color(param1.§const while§);
            _loc13_ = new Color(param1.§5214233090233103123423632234§);
            _loc7_.subtract(_loc13_);
            _loc8_ = new Matrix3();
            _loc8_.setRotationMatrix(param1.§52142317323186123423632234§,0,param1.§do for set§);
            _loc10_ = new Vector3(0,1,0);
            _loc10_.transform3(_loc8_);
            _loc10_.normalize();
            _loc6_ = (_loc10_.z > 0 ? _loc10_.z : -_loc10_.z) * param2;
            _loc9_ = (_loc13_.getColor() >> 16 & 0xFF) / 255;
            _loc4_ = (_loc13_.getColor() >> 8 & 0xFF) / 255;
            _loc3_ = (_loc13_.getColor() & 0xFF) / 255;
            _loc5_ = (_loc7_.getColor() >> 16 & 0xFF) / 255;
            _loc12_ = (_loc7_.getColor() >> 8 & 0xFF) / 255;
            _loc11_ = (_loc7_.getColor() & 0xFF) / 255;
            _loc14_ = new ColorTransform();
            _loc14_.redMultiplier = 2 * (_loc9_ + _loc5_ * _loc6_);
            _loc14_.greenMultiplier = 2 * (_loc4_ + _loc12_ * _loc6_);
            _loc14_.blueMultiplier = 2 * (_loc3_ + _loc11_ * _loc6_);
            return _loc14_;
         }
         return null;
      }
   }
}

