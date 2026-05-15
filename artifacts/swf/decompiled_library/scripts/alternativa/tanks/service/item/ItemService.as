package alternativa.tanks.service.item
{
   import §521423114822311495123423632234§.§for use use§;
   import §5214233059233072123423632234§.ItemGarageProperty;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214236800236813123423632234§.§include switch var§;
   import alternativa.tanks.model.item.upgradable.UpgradableItemPropertyValue;
   import §do package if§.ItemCategoryEnum;
   import §do package if§.ItemViewCategoryEnum;
   import flash.events.IEventDispatcher;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public interface ItemService extends IEventDispatcher
   {
      
      function getDiscount(param1:§521423120252312038123423632234§) : int;
      
      function getProperties(param1:§521423120252312038123423632234§) : Vector.<§for use use§>;
      
      function isPresent(param1:§521423120252312038123423632234§) : Boolean;
      
      function hasItem(param1:§521423120252312038123423632234§) : Boolean;
      
      function method_343(param1:§521423120252312038123423632234§) : int;
      
      function getViewCategory(param1:§521423120252312038123423632234§) : ItemViewCategoryEnum;
      
      function getModificationIndex(param1:§521423120252312038123423632234§) : int;
      
      function isCountable(param1:§521423120252312038123423632234§) : Boolean;
      
      function getPosition(param1:§521423120252312038123423632234§) : int;
      
      function method_582(param1:ItemCategoryEnum) : void;
      
      function setCount(param1:§521423120252312038123423632234§, param2:int) : void;
      
      function getUpgradingProperty(param1:§521423120252312038123423632234§) : ItemGarageProperty;
      
      function isPremiumItem(param1:§521423120252312038123423632234§) : Boolean;
      
      function canBuy(param1:§521423120252312038123423632234§) : Boolean;
      
      function isBuyable(param1:§521423120252312038123423632234§) : Boolean;
      
      function isKit(param1:§521423120252312038123423632234§) : Boolean;
      
      function getMaxRankIndex(param1:§521423120252312038123423632234§) : int;
      
      function mountItem(param1:§521423120252312038123423632234§) : void;
      
      function reset() : void;
      
      function isGrouped(param1:§521423120252312038123423632234§) : Boolean;
      
      function getNextModification(param1:§521423120252312038123423632234§) : §521423120252312038123423632234§;
      
      function isFullUpgraded(param1:§521423120252312038123423632234§) : Boolean;
      
      function hasNextModification(param1:§521423120252312038123423632234§) : Boolean;
      
      function isUpgrading(param1:§521423120252312038123423632234§) : Boolean;
      
      function getMinRankIndex(param1:§521423120252312038123423632234§) : int;
      
      function getCategory(param1:§521423120252312038123423632234§) : ItemCategoryEnum;
      
      function getEndDiscountTimer(param1:§521423120252312038123423632234§) : §include switch var§;
      
      function isMounted(param1:§521423120252312038123423632234§) : Boolean;
      
      function getPrice(param1:§521423120252312038123423632234§) : int;
      
      function getMaxAvailableModification(param1:§521423120252312038123423632234§) : §521423120252312038123423632234§;
      
      function method_19(param1:§521423120252312038123423632234§) : §521423120252312038123423632234§;
      
      function isTimelessItem(param1:§521423120252312038123423632234§) : Boolean;
      
      function getModifications(param1:§521423120252312038123423632234§) : Vector.<§521423120252312038123423632234§>;
      
      function isModificationItem(param1:§521423120252312038123423632234§) : Boolean;
      
      function getCount(param1:§521423120252312038123423632234§) : int;
      
      function getUpgradableProperties(param1:§521423120252312038123423632234§) : Vector.<UpgradableItemPropertyValue>;
      
      function isMountable(param1:§521423120252312038123423632234§) : Boolean;
      
      function getDescription(param1:§521423120252312038123423632234§) : String;
      
      function getPreviewResource(param1:§521423120252312038123423632234§) : §include catch with§;
      
      function addItem(param1:§521423120252312038123423632234§) : void;
      
      function isGivenPresent(param1:§521423120252312038123423632234§) : Boolean;
      
      function getPriceWithoutDiscount(param1:§521423120252312038123423632234§) : int;
      
      function getMaxAvailableOrNextNotAvailableModification(param1:§521423120252312038123423632234§) : §521423120252312038123423632234§;
      
      function getTimeLeftInSeconds(param1:§521423120252312038123423632234§) : int;
      
      function getMaxUserModificationItem(param1:§521423120252312038123423632234§) : §521423120252312038123423632234§;
      
      function removeItem(param1:§521423120252312038123423632234§) : void;
      
      function getName(param1:§521423120252312038123423632234§) : String;
      
      function isEnabledItem(param1:§521423120252312038123423632234§) : Boolean;
   }
}

