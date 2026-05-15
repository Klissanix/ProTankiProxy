package alternativa.tanks.model.item.upgradable
{
   import §5214233059233072123423632234§.ItemGarageProperty;
   import §5214236800236813123423632234§.§include switch var§;
   
   public interface §5214233529233542123423632234§
   {
      
      function speedUp() : void;
      
      function setUpgradingProperty(param1:UpgradableItemPropertyValue, param2:§include switch var§) : void;
      
      function isUpgrading() : Boolean;
      
      function getUpgradableProperties() : Vector.<UpgradableItemPropertyValue>;
      
      function getUpgradingProperty() : ItemGarageProperty;
      
      function getCountDownTimer() : §include switch var§;
      
      function getUpgradingValue() : UpgradableItemPropertyValue;
      
      function traceUpgrades() : void;
      
      function initializePrecision() : void;
   }
}

