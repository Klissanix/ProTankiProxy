package §5214231307231320123423632234§
{
   import alternativa.osgi.service.logging.LogService;
   import flash.filters.BitmapFilter;
   import flash.filters.ColorMatrixFilter;
   import §for use if§.§521423112452311258123423632234§;
   import §for use if§.§521423135042313517123423632234§;
   import §for use if§.§continue use true§;
   import platform.client.fp10.core.model.§do set function§;
   
   public class BCSHModel extends §521423135042313517123423632234§ implements §continue use true§, §do set function§, §class set return§
   {
      
      public static var §5214234621234634123423632234§:LogService;
      
      private static var §package include§:ColorMatrixFilter = new ColorMatrixFilter();
      
      public function BCSHModel()
      {
         super();
      }
      
      public function createFilter(param1:String) : BitmapFilter
      {
         var _loc3_:Object = Object(getData(Object));
         var _loc2_:BCSHData = _loc3_[param1];
         if(_loc2_ != null)
         {
            return _loc2_.createFilter();
         }
         return §package include§;
      }
      
      public function objectLoaded() : void
      {
         var _loc3_:Object = {};
         var _loc2_:Vector.<§521423112452311258123423632234§> = §switch var switch§().data;
         for each(var _loc1_ in _loc2_)
         {
            _loc3_[_loc1_.§try catch while§] = new BCSHData(_loc1_);
         }
         putData(Object,_loc3_);
      }
   }
}

