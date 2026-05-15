package §override for continue§
{
   import flash.filters.ColorMatrixFilter;
   import flash.utils.Dictionary;
   
   public class BCSHFilter
   {
      
      private static const §5214231160231173123423632234§:Number = 0.01;
      
      private static var filters:Dictionary = new Dictionary();
      
      public function BCSHFilter()
      {
         super();
      }
      
      public static function createFilter(param1:Number, param2:Number, param3:Number, param4:Number) : ColorMatrixFilter
      {
         for(var _loc7_ in filters)
         {
            if(e13c13a8(param1,_loc7_.b) && e13c13a8(param2,_loc7_.c) && e13c13a8(param3,_loc7_.s) && e13c13a8(param4,_loc7_.h))
            {
               return filters[_loc7_];
            }
         }
         var _loc8_:AdjustColor = new AdjustColor();
         _loc8_.brightness = param1;
         _loc8_.contrast = param2;
         _loc8_.saturation = param3;
         _loc8_.hue = param4;
         var _loc5_:ColorMatrixFilter = new ColorMatrixFilter();
         _loc5_.matrix = _loc8_.CalculateFinalFlatArray();
         var _loc6_:Object = {
            "b":param1,
            "c":param2,
            "s":param3,
            "h":param4
         };
         filters[_loc6_] = _loc5_;
         return _loc5_;
      }
      
      private static function e13c13a8(param1:Number, param2:Number) : Boolean
      {
         return Math.abs(param1 - param2) < 0.01;
      }
   }
}

