package §var break§
{
   import §521423114822311495123423632234§.§for use use§;
   import §5214233059233072123423632234§.ItemGarageProperty;
   import alternativa.tanks.model.item.upgradable.UpgradableItemPropertyValue;
   
   public class UpgradeColors
   {
      
      public static const §each for final§:int = 65291;
      
      public static const §5214239641239654123423632234§:int = 16777215;
      
      public static const GOLD:int = 16580352;
      
      public static const §5214231071231084123423632234§:int = 8847108;
      
      public function UpgradeColors()
      {
         super();
      }
      
      public static function getColorForValue(param1:§for use use§) : int
      {
         var _loc2_:UpgradableItemPropertyValue = null;
         if(param1.isUpgradable())
         {
            _loc2_ = param1.getUpgradableValue();
            if(_loc2_.getMaxLevel() == _loc2_.getLevel())
            {
               return 16580352;
            }
            if(_loc2_.getLevel() > 0)
            {
               return 8847108;
            }
            return 16777215;
         }
         if(param1.getProperty() == ItemGarageProperty.ALL_RESISTANCE)
         {
            return 16580352;
         }
         return 16777215;
      }
   }
}

