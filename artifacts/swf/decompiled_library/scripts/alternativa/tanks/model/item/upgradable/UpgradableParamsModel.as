package alternativa.tanks.model.item.upgradable
{
   import §521423114822311495123423632234§.§5214231204231217123423632234§;
   import §521423114822311495123423632234§.§for use use§;
   import §5214233059233072123423632234§.ItemGarageProperty;
   import §5214236800236813123423632234§.§include switch var§;
   import alternativa.tanks.service.item.ItemService;
   import alternativa.tanks.service.itempropertyparams.ItemPropertyParams;
   import alternativa.tanks.service.itempropertyparams.ItemPropertyParamsService;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.model.§throw catch var§;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import §true finally§.GaragePropertyData;
   import §var set override§.UpgradeableParamsConstructorModelBase;
   import §var set override§.§class var throw§;
   
   public class UpgradableParamsModel extends UpgradeableParamsConstructorModelBase implements §class var throw§, §5214234168234181123423632234§, §5214233529233542123423632234§, §throw catch var§, §5214231204231217123423632234§
   {
      
      public static var §521423131892313202123423632234§:ItemPropertyParamsService;
      
      public static var §521423120472312060123423632234§:ItemService;
      
      public function UpgradableParamsModel()
      {
         super();
      }
      
      public function getCountDownTimer() : §include switch var§
      {
         return this.data().timer;
      }
      
      public function isUpgrading() : Boolean
      {
         return this.data().isUpgrading();
      }
      
      private function data() : UpgradeableItemData
      {
         return UpgradeableItemData(getData(UpgradeableItemData));
      }
      
      public function objectLoadedPost() : void
      {
         var _loc1_:GaragePropertyData = null;
         var _loc2_:UpgradeableItemData = null;
         var _loc4_:UpgradableItemPropertyValue = null;
         var _loc5_:Vector.<UpgradableItemPropertyValue> = new Vector.<UpgradableItemPropertyValue>();
         var _loc3_:Boolean = §521423120472312060123423632234§.isModificationItem(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§) && §521423120472312060123423632234§.hasNextModification(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§);
         for each(_loc1_ in getInitParam().properties)
         {
            _loc4_ = new UpgradableItemPropertyValue(_loc1_,_loc3_);
            _loc5_.push(_loc4_);
         }
         _loc2_ = new UpgradeableItemData(_loc5_,getInitParam().info,platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§);
         putData(UpgradeableItemData,_loc2_);
      }
      
      public function setUpgradingProperty(param1:UpgradableItemPropertyValue, param2:§include switch var§) : void
      {
         this.data().setUpgradingProperty(param1,param2);
      }
      
      public function getUpgradingProperty() : ItemGarageProperty
      {
         return this.data().§try use extends§.getProperty();
      }
      
      public function initializePrecision() : void
      {
         var _loc1_:Vector.<UpgradeableItemData> = null;
         var _loc2_:§521423120252312038123423632234§ = null;
         var _loc4_:GaragePropertyData = null;
         var _loc5_:int = 0;
         var _loc3_:UpgradeableItemData = null;
         if(§521423120472312060123423632234§.isModificationItem(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§) && §521423120472312060123423632234§.getModificationIndex(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§) == 0)
         {
            _loc1_ = new Vector.<UpgradeableItemData>();
            for each(_loc2_ in §521423120472312060123423632234§.getModifications(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§))
            {
               var _temp_2:* = Model;
               var _loc15_:§521423120252312038123423632234§ = _loc2_;
               var _loc6_:Model = _temp_2;
               platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
               platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc15_;
               _loc1_.push(this.data());
               Model.popObject();
            }
            for each(_loc4_ in getInitParam().properties)
            {
               _loc5_ = 0;
               for each(_loc3_ in _loc1_)
               {
                  _loc5_ = Math.max(_loc5_,_loc3_.getValue(_loc4_.property).getPrecision());
               }
               for each(_loc3_ in _loc1_)
               {
                  _loc3_.getValue(_loc4_.property).setPrecision(_loc5_);
               }
            }
         }
      }
      
      private function a67cdae5(param1:UpgradableItemPropertyValue, param2:UpgradableItemPropertyValue) : Number
      {
         var _loc5_:ItemPropertyParams = §521423131892313202123423632234§.getParams(param1.getProperty());
         var _loc6_:ItemPropertyParams = §521423131892313202123423632234§.getParams(param2.getProperty());
         var _loc3_:int = _loc5_ != null ? _loc5_.method_2073 : 0;
         var _loc4_:int = _loc6_ != null ? _loc6_.method_2073 : 0;
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         return 0;
      }
      
      public function objectUnloaded() : void
      {
         clearData(UpgradeableItemData);
      }
      
      public function getProperties() : Vector.<§for use use§>
      {
         return Vector.<§for use use§>(this.data().properties);
      }
      
      public function speedUp() : void
      {
         return this.data().speedUp();
      }
      
      public function traceUpgrades() : void
      {
         var _loc1_:UpgradableItemPropertyValue = null;
         var _loc2_:String = §521423120472312060123423632234§.getName(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§);
         if(§521423120472312060123423632234§.isModificationItem(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§))
         {
            _loc2_ += " M" + §521423120472312060123423632234§.getModificationIndex(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§);
         }
         for each(_loc1_ in this.data().properties)
         {
            _loc1_.traceUpgrades();
         }
      }
      
      public function getUpgradingValue() : UpgradableItemPropertyValue
      {
         return this.data().§try use extends§;
      }
      
      public function getUpgradableProperties() : Vector.<UpgradableItemPropertyValue>
      {
         return this.data().properties;
      }
   }
}

