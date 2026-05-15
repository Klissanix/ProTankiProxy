package §521423114822311495123423632234§
{
   import §5214233059233072123423632234§.§5214233504233517123423632234§;
   import §5214233059233072123423632234§.ItemGaragePropertyData;
   import §5214233059233072123423632234§.ItemPropertiesModelBase;
   
   public class ItemPropertiesModel extends ItemPropertiesModelBase implements §5214233504233517123423632234§, §5214231204231217123423632234§
   {
      
      public function ItemPropertiesModel()
      {
         super();
      }
      
      public function getProperties() : Vector.<§for use use§>
      {
         var _loc2_:* = undefined;
         var _loc1_:Object = getData(Vector);
         if(_loc1_ == null)
         {
            _loc2_ = new Vector.<§for use use§>();
            for each(var _loc3_ in getInitParam().properties)
            {
               _loc2_[_loc2_.length] = new ItemGaragePropertyValue(_loc3_);
            }
            putData(Vector,_loc2_);
         }
         else
         {
            _loc2_ = Vector.<§for use use§>(_loc1_);
         }
         return _loc2_;
      }
   }
}

