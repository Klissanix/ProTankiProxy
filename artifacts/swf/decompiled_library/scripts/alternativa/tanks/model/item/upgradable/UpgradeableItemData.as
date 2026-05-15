package alternativa.tanks.model.item.upgradable
{
   import §5214233059233072123423632234§.ItemGarageProperty;
   import §5214236800236813123423632234§.§5214231879231892123423632234§;
   import §5214236800236813123423632234§.§include switch var§;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import §true finally§.UpgradingPropertyInfo;
   
   public class UpgradeableItemData implements §5214231879231892123423632234§
   {
      
      public var properties:Vector.<UpgradableItemPropertyValue>;
      
      public var §try use extends§:UpgradableItemPropertyValue = null;
      
      public var timer:§include switch var§ = null;
      
      public function UpgradeableItemData(param1:Vector.<UpgradableItemPropertyValue>, param2:UpgradingPropertyInfo, param3:§521423120252312038123423632234§)
      {
         super();
         var _loc5_:int = 0;
         var _loc4_:UpgradableItemPropertyValue = null;
         this.properties = param1;
         if(param2 != null)
         {
         }
      }
      
      public function getValue(param1:ItemGarageProperty) : UpgradableItemPropertyValue
      {
         var _loc2_:UpgradableItemPropertyValue = null;
         for each(_loc2_ in this.properties)
         {
            if(_loc2_.getProperty() == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function onCompleteAfter(param1:§include switch var§, param2:Boolean) : void
      {
         this.speedUp();
      }
      
      public function isUpgrading() : Boolean
      {
         return this.§try use extends§ != null;
      }
      
      public function setUpgradingProperty(param1:UpgradableItemPropertyValue, param2:§include switch var§) : void
      {
         this.§try use extends§ = param1;
         this.f8f38b3(param2);
      }
      
      private function f8f38b3(param1:§include switch var§) : void
      {
         this.timer = param1;
         param1.§5214232580232593123423632234§(§5214231879231892123423632234§,this);
      }
      
      public function speedUp() : void
      {
         this.§try use extends§.incrementLevel();
         this.§try use extends§ = null;
         this.timer.§return use var§(§5214231879231892123423632234§,this);
         this.timer = null;
      }
   }
}

