package alternativa.tanks.service.item
{
   import §521423107942310807123423632234§.§521423110672311080123423632234§;
   import §521423114822311495123423632234§.§5214231204231217123423632234§;
   import §521423114822311495123423632234§.§for use use§;
   import §521423127152312728123423632234§.§5214235968235981123423632234§;
   import §5214231525231538123423632234§.§52142387523888123423632234§;
   import §5214231742231755123423632234§.§521423136452313658123423632234§;
   import §5214233059233072123423632234§.ItemGarageProperty;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214236800236813123423632234§.§include switch var§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.gui.GarageWindow;
   import alternativa.tanks.model.item.upgradable.§5214233529233542123423632234§;
   import alternativa.tanks.model.item.upgradable.UpgradableItemPropertyValue;
   import alternativa.tanks.service.garage.GarageService;
   import §catch for while§.§default catch case§;
   import §catch for while§.§for package finally§;
   import §do package if§.ItemCategoryEnum;
   import §do package if§.ItemViewCategoryEnum;
   import §dynamic for switch§.§521423107332310746123423632234§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import §function const break§.§521423125602312573123423632234§;
   import §include const override§.§super set do§;
   import §override catch default§.Long;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import §while finally finally§.§521423108722310885123423632234§;
   import §with const in§.§5214234658234671123423632234§;
   
   public class ItemServiceImpl extends EventDispatcher implements ItemService
   {
      
      public static var §true switch package§:IUserPropertiesService;
      
      public static var §finally switch default§:GarageService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §switch var dynamic§:Dictionary;
      
      private var §5214233387233400123423632234§:Dictionary;
      
      private var §final catch switch§:Vector.<§521423120252312038123423632234§>;
      
      private var §5214233719233732123423632234§:Dictionary;
      
      private var §throw switch each§:Dictionary;
      
      private const §in use catch§:int = 5;
      
      public function ItemServiceImpl()
      {
         super();
         this.§final catch switch§ = new Vector.<§521423120252312038123423632234§>();
         this.§switch var dynamic§ = new Dictionary();
         this.§5214233387233400123423632234§ = new Dictionary();
         this.§throw switch each§ = new Dictionary();
         this.§5214233719233732123423632234§ = new Dictionary();
         this.§5214233719233732123423632234§[ItemGarageProperty.FIREBIRD_RESISTANCE] = "REDUCE_DAMAGE_FIREBIRD";
         this.§5214233719233732123423632234§[ItemGarageProperty.FREEZE_RESISTANCE] = "REDUCE_DAMAGE_FREEZE";
         this.§5214233719233732123423632234§[ItemGarageProperty.ISIS_RESISTANCE] = "REDUCE_DAMAGE_ISIDA";
         this.§5214233719233732123423632234§[ItemGarageProperty.RAILGUN_RESISTANCE] = "REDUCE_DAMAGE_RAILGUN";
         this.§5214233719233732123423632234§[ItemGarageProperty.RICOCHET_RESISTANCE] = "REDUCE_DAMAGE_RICOCHET";
         this.§5214233719233732123423632234§[ItemGarageProperty.SHAFT_RESISTANCE] = "REDUCE_DAMAGE_SHAFT";
         this.§5214233719233732123423632234§[ItemGarageProperty.SMOKY_RESISTANCE] = "REDUCE_DAMAGE_SMOKY";
         this.§5214233719233732123423632234§[ItemGarageProperty.THUNDER_RESISTANCE] = "REDUCE_DAMAGE_THUNDER";
         this.§5214233719233732123423632234§[ItemGarageProperty.TWINS_RESISTANCE] = "REDUCE_DAMAGE_TWINS";
         this.§5214233719233732123423632234§[ItemGarageProperty.MINE_RESISTANCE] = "REDUCE_DAMAGE_MINE";
         this.§5214233719233732123423632234§[ItemGarageProperty.SHOTGUN_RESISTANCE] = "REDUCE_DAMAGE_SHOTGUN";
         this.§5214233719233732123423632234§[ItemGarageProperty.MACHINE_GUN_RESISTANCE] = "REDUCE_DAMAGE_MACHINE_GUN";
      }
      
      public function getCategory(param1:§521423120252312038123423632234§) : ItemCategoryEnum
      {
         return §default catch case§(param1.adapt(§default catch case§)).getCategory();
      }
      
      public function method_19(param1:§521423120252312038123423632234§) : §521423120252312038123423632234§
      {
         var _loc2_:int = this.getModificationIndex(param1);
         var _loc3_:Vector.<§521423120252312038123423632234§> = this.getModifications(param1);
         if(_loc2_ > 0)
         {
            return _loc3_[_loc2_ - 1];
         }
         return null;
      }
      
      private function c6957867(param1:§521423120252312038123423632234§) : §5214233529233542123423632234§
      {
         return §5214233529233542123423632234§(param1.adapt(§5214233529233542123423632234§));
      }
      
      public function getProperties(param1:§521423120252312038123423632234§) : Vector.<§for use use§>
      {
         if(param1.hasModel(§5214231204231217123423632234§))
         {
            return §5214231204231217123423632234§(param1.adapt(§5214231204231217123423632234§)).getProperties();
         }
         return null;
      }
      
      public function getMaxAvailableOrNextNotAvailableModification(param1:§521423120252312038123423632234§) : §521423120252312038123423632234§
      {
         var _loc2_:§521423120252312038123423632234§ = this.getMaxAvailableModification(param1);
         if(_loc2_ == param1)
         {
            _loc2_ = this.getNextModification(param1);
         }
         return _loc2_;
      }
      
      public function method_343(param1:§521423120252312038123423632234§) : int
      {
         return this.getModifications(param1).length;
      }
      
      public function getMinRankIndex(param1:§521423120252312038123423632234§) : int
      {
         return §5214235968235981123423632234§(param1.adapt(§5214235968235981123423632234§)).getMinRank();
      }
      
      public function getEndDiscountTimer(param1:§521423120252312038123423632234§) : §include switch var§
      {
         return §521423136452313658123423632234§(param1.adapt(§521423136452313658123423632234§)).getEndDiscountTimer();
      }
      
      public function getPriceWithoutDiscount(param1:§521423120252312038123423632234§) : int
      {
         return §52142387523888123423632234§(param1.adapt(§52142387523888123423632234§)).getPriceWithoutDiscount();
      }
      
      public function isModificationItem(param1:§521423120252312038123423632234§) : Boolean
      {
         return param1.hasModel(§521423107332310746123423632234§) && §521423107332310746123423632234§(param1.adapt(§521423107332310746123423632234§)).getModificationIndex() >= 0;
      }
      
      public function getMaxRankIndex(param1:§521423120252312038123423632234§) : int
      {
         return §5214235968235981123423632234§(param1.adapt(§5214235968235981123423632234§)).getMaxRank();
      }
      
      public function isBuyable(param1:§521423120252312038123423632234§) : Boolean
      {
         return §52142387523888123423632234§(param1.adapt(§52142387523888123423632234§)).isBuyable();
      }
      
      public function isPremiumItem(param1:§521423120252312038123423632234§) : Boolean
      {
         return false;
      }
      
      public function getName(param1:§521423120252312038123423632234§) : String
      {
         var _loc2_:String = §521423125602312573123423632234§(param1.adapt(§521423125602312573123423632234§)).getName();
         if(this.isModificationItem(param1))
         {
            _loc2_ += (§5214236363236376123423632234§.language == "cn" ? "" : " ") + "M" + this.getModificationIndex(param1);
         }
         return _loc2_;
      }
      
      public function isTimelessItem(param1:§521423120252312038123423632234§) : Boolean
      {
         return §521423108722310885123423632234§(param1.adapt(§521423108722310885123423632234§)).isTimeless();
      }
      
      public function isFullUpgraded(param1:§521423120252312038123423632234§) : Boolean
      {
         for each(var _loc2_ in this.getProperties(param1))
         {
            if(_loc2_.isUpgradable() && !_loc2_.getUpgradableValue().isFullUpgraded())
            {
               return false;
            }
         }
         return true;
      }
      
      public function mountItem(param1:§521423120252312038123423632234§) : void
      {
         var _loc2_:§521423120252312038123423632234§ = this.e2810270(this.getCategory(param1));
         if(_loc2_ == param1)
         {
            return;
         }
         var _loc3_:GarageWindow = §finally switch default§.getView();
         if(_loc2_ != null)
         {
            _loc3_.unmountItem(_loc2_);
            this.§final catch switch§.removeAt(this.§final catch switch§.indexOf(_loc2_));
         }
         _loc3_.mountItem(param1);
         this.§final catch switch§.push(param1);
         if(_loc3_.selectedItem == param1)
         {
            _loc3_.§try true§.updateEquipButton();
         }
      }
      
      public function getModificationIndex(param1:§521423120252312038123423632234§) : int
      {
         if(this.isModificationItem(param1))
         {
            return §521423107332310746123423632234§(param1.adapt(§521423107332310746123423632234§)).getModificationIndex();
         }
         return -1;
      }
      
      public function setCount(param1:§521423120252312038123423632234§, param2:int) : void
      {
         if(param1.hasModel(§super set do§))
         {
            §super set do§(param1.adapt(§super set do§)).setCount(param2);
         }
      }
      
      public function getUpgradableProperties(param1:§521423120252312038123423632234§) : Vector.<UpgradableItemPropertyValue>
      {
         if(param1.hasModel(§5214233529233542123423632234§))
         {
            return this.c6957867(param1).getUpgradableProperties();
         }
         return null;
      }
      
      public function getModifications(param1:§521423120252312038123423632234§) : Vector.<§521423120252312038123423632234§>
      {
         var _loc2_:Vector.<§521423120252312038123423632234§> = null;
         var _loc8_:Dictionary = null;
         var _loc9_:int = 0;
         var _loc6_:Long = null;
         var _loc7_:int = 0;
         var _loc4_:§521423120252312038123423632234§ = null;
         var _loc5_:int = 0;
         var _loc3_:Vector.<§521423120252312038123423632234§> = this.§5214233387233400123423632234§[param1];
         _loc2_ = param1.space.objects;
         _loc8_ = new Dictionary();
         _loc9_ = 0;
         _loc6_ = §521423107332310746123423632234§(param1.adapt(§521423107332310746123423632234§)).getBaseItemId();
         _loc7_ = 0;
         while(_loc7_ < _loc2_.length)
         {
            _loc4_ = _loc2_[_loc7_];
            if(_loc4_.hasModel(§521423107332310746123423632234§) && _loc4_.name.indexOf("garageObject") == -1)
            {
               if(§521423107332310746123423632234§(_loc4_.adapt(§521423107332310746123423632234§)).getBaseItemId() == _loc6_)
               {
                  _loc5_ = this.getModificationIndex(_loc4_);
                  _loc8_[_loc5_] = _loc4_;
                  _loc9_++;
               }
            }
            _loc7_++;
         }
         _loc3_ = new Vector.<§521423120252312038123423632234§>();
         _loc7_ = 0;
         while(_loc7_ < _loc9_)
         {
            _loc3_[_loc7_] = _loc8_[_loc7_];
            _loc7_++;
         }
         this.§5214233387233400123423632234§[param1] = _loc3_;
         return _loc3_;
      }
      
      public function hasItem(param1:§521423120252312038123423632234§) : Boolean
      {
         return param1 in this.§switch var dynamic§;
      }
      
      public function isUpgrading(param1:§521423120252312038123423632234§) : Boolean
      {
         return param1.hasModel(§5214233529233542123423632234§) && this.c6957867(param1).isUpgrading();
      }
      
      public function getCount(param1:§521423120252312038123423632234§) : int
      {
         if(param1.hasModel(§super set do§))
         {
            return §super set do§(param1.adapt(§super set do§)).getCount();
         }
         return 0;
      }
      
      public function getMaxAvailableModification(param1:§521423120252312038123423632234§) : §521423120252312038123423632234§
      {
         var _loc3_:int = 0;
         var _loc2_:§521423120252312038123423632234§ = null;
         var _loc5_:§521423120252312038123423632234§ = null;
         if(§true switch package§.rank < this.getMinRankIndex(param1))
         {
            return param1;
         }
         var _loc6_:Vector.<§521423120252312038123423632234§> = this.getModifications(param1);
         _loc3_ = int(_loc6_.length);
         var _loc4_:int = _loc3_ - 1;
         while(_loc4_ >= 0)
         {
            _loc5_ = _loc6_[_loc4_];
            if(§true switch package§.rank >= this.getMinRankIndex(_loc5_))
            {
               _loc2_ = _loc5_;
               break;
            }
            _loc4_--;
         }
         return _loc2_;
      }
      
      public function getViewCategory(param1:§521423120252312038123423632234§) : ItemViewCategoryEnum
      {
         return §for package finally§(param1.adapt(§for package finally§)).getCategory();
      }
      
      public function reset() : void
      {
         this.§5214233387233400123423632234§ = new Dictionary();
         this.§switch var dynamic§ = new Dictionary();
         this.§throw switch each§ = new Dictionary();
         this.§final catch switch§.length = 0;
      }
      
      public function isPresent(param1:§521423120252312038123423632234§) : Boolean
      {
         return this.getCategory(param1) == ItemCategoryEnum.PRESENT;
      }
      
      public function getTimeToStartInSeconds(param1:§521423120252312038123423632234§) : int
      {
         var _loc2_:int = int(§521423108722310885123423632234§(param1.adapt(§521423108722310885123423632234§)).getTimeToStartInSeconds());
         return _loc2_ > 0 ? int(_loc2_ + 5) : 0;
      }
      
      public function getDescription(param1:§521423120252312038123423632234§) : String
      {
         var _loc2_:Vector.<§for use use§> = null;
         var _loc4_:§for use use§ = null;
         var _loc5_:String = "";
         var _loc3_:* = null;
         if(this.getCategory(param1) == ItemCategoryEnum.COLOR)
         {
            _loc2_ = this.getProperties(param1);
            if(_loc2_.length > 0)
            {
               _loc5_ = §5214236363236376123423632234§.getText("GARAGE_RESISTANCE_DESCRIPTION_PREFIX") + "\n";
               if(_loc2_.length == 1 && _loc2_[0].getProperty() == ItemGarageProperty.ALL_RESISTANCE)
               {
                  for each(_loc3_ in this.§5214233719233732123423632234§)
                  {
                     _loc5_ += §5214236363236376123423632234§.getText(_loc3_) + "\n";
                  }
               }
               else
               {
                  for each(_loc4_ in _loc2_)
                  {
                     _loc5_ += §5214236363236376123423632234§.getText(this.§5214233719233732123423632234§[_loc4_.getProperty()]) + "\n";
                  }
               }
               _loc5_ += "\n";
            }
         }
         return _loc5_ + §521423125602312573123423632234§(param1.adapt(§521423125602312573123423632234§)).getDescription();
      }
      
      public function canBuy(param1:§521423120252312038123423632234§) : Boolean
      {
         if(this.isKit(param1))
         {
            return §521423110672311080123423632234§(param1.adapt(§521423110672311080123423632234§)).canBuy();
         }
         return this.isCountable(param1) || !this.hasItem(param1);
      }
      
      public function removeItem(param1:§521423120252312038123423632234§) : void
      {
         if(this.hasItem(param1))
         {
            delete this.§switch var dynamic§[param1];
         }
      }
      
      private function a20a081d(param1:§521423120252312038123423632234§) : Boolean
      {
         var _loc2_:int = int(§521423108722310885123423632234§(param1.adapt(§521423108722310885123423632234§)).getModelLoadingTimeInMillis());
         return getTimer() > _loc2_ + this.getTimeToStartInSeconds(param1) * 1000;
      }
      
      public function addItem(param1:§521423120252312038123423632234§) : void
      {
         if(param1 in this.§switch var dynamic§)
         {
            return;
         }
         this.§switch var dynamic§[param1] = true;
         dispatchEvent(new ItemEvents(ItemEvents.§import use use§,param1));
      }
      
      public function isMounted(param1:§521423120252312038123423632234§) : Boolean
      {
         return this.e2810270(this.getCategory(param1)) == param1;
      }
      
      public function isMountable(param1:§521423120252312038123423632234§) : Boolean
      {
         return this.§throw switch each§[this.getCategory(param1)] == true;
      }
      
      public function getNextModification(param1:§521423120252312038123423632234§) : §521423120252312038123423632234§
      {
         var _loc2_:int = this.getModificationIndex(param1);
         var _loc3_:Vector.<§521423120252312038123423632234§> = this.getModifications(param1);
         if(_loc2_ < _loc3_.length - 1)
         {
            return _loc3_[_loc2_ + 1];
         }
         return param1;
      }
      
      public function isEnabledItem(param1:§521423120252312038123423632234§) : Boolean
      {
         var _loc2_:Boolean = Boolean(§521423108722310885123423632234§(param1.adapt(§521423108722310885123423632234§)).isEnabled());
         return _loc2_ && !this.e66b96a3(param1) || this.getTimeToStartInSeconds(param1) > 0 && this.a20a081d(param1);
      }
      
      private function e2810270(param1:ItemCategoryEnum) : §521423120252312038123423632234§
      {
         var _loc2_:§521423120252312038123423632234§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§final catch switch§.length)
         {
            _loc2_ = this.§final catch switch§[_loc3_];
            if(this.getCategory(_loc2_) == param1)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function isCountable(param1:§521423120252312038123423632234§) : Boolean
      {
         if(param1.hasModel(§super set do§))
         {
            if(§super set do§(param1.adapt(§super set do§)).getCount() >= 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getTimeLeftInSeconds(param1:§521423120252312038123423632234§) : int
      {
         var _loc2_:int = int(§521423108722310885123423632234§(param1.adapt(§521423108722310885123423632234§)).getTimeLeftInSeconds());
         return _loc2_ > 5 ? int(_loc2_ - 5) : 0;
      }
      
      private function e66b96a3(param1:§521423120252312038123423632234§) : Boolean
      {
         var _loc2_:int = int(§521423108722310885123423632234§(param1.adapt(§521423108722310885123423632234§)).getTimeLeftInSeconds());
         return _loc2_ > 0 && _loc2_ <= 5;
      }
      
      public function getUpgradingProperty(param1:§521423120252312038123423632234§) : ItemGarageProperty
      {
         return this.c6957867(param1).getUpgradingProperty();
      }
      
      public function method_582(param1:ItemCategoryEnum) : void
      {
         this.§throw switch each§[param1] = true;
      }
      
      public function isGrouped(param1:§521423120252312038123423632234§) : Boolean
      {
         return param1.hasModel(§5214234658234671123423632234§) && Boolean(§5214234658234671123423632234§(param1.adapt(§5214234658234671123423632234§)).isGrouped());
      }
      
      public function getPrice(param1:§521423120252312038123423632234§) : int
      {
         if(this.isKit(param1))
         {
            return §521423110672311080123423632234§(param1.adapt(§521423110672311080123423632234§)).getPrice();
         }
         return §52142387523888123423632234§(param1.adapt(§52142387523888123423632234§)).getPrice();
      }
      
      public function isKit(param1:§521423120252312038123423632234§) : Boolean
      {
         return this.getCategory(param1) == ItemCategoryEnum.KIT && param1.hasModel(§521423110672311080123423632234§) && §521423110672311080123423632234§(param1.adapt(§521423110672311080123423632234§)).getImage != null;
      }
      
      public function getPreviewResource(param1:§521423120252312038123423632234§) : §include catch with§
      {
         return §5214235968235981123423632234§(param1.adapt(§5214235968235981123423632234§)).getPreviewResource();
      }
      
      public function hasNextModification(param1:§521423120252312038123423632234§) : Boolean
      {
         var _loc2_:Vector.<§521423120252312038123423632234§> = this.getModifications(param1);
         return param1 != _loc2_[_loc2_.length - 1];
      }
      
      public function getMaxUserModificationItem(param1:§521423120252312038123423632234§) : §521423120252312038123423632234§
      {
         var _loc2_:§521423120252312038123423632234§ = null;
         var _loc3_:Vector.<§521423120252312038123423632234§> = this.getModifications(param1);
         var _loc4_:int = _loc3_.length - 1;
         while(_loc4_ >= 0)
         {
            _loc2_ = _loc3_[_loc4_];
            if(this.hasItem(_loc2_))
            {
               return _loc2_;
            }
            _loc4_--;
         }
         return null;
      }
      
      public function isGivenPresent(param1:§521423120252312038123423632234§) : Boolean
      {
         return this.getCategory(param1) == ItemCategoryEnum.GIVEN_PRESENT;
      }
      
      public function getDiscount(param1:§521423120252312038123423632234§) : int
      {
         return §521423136452313658123423632234§(param1.adapt(§521423136452313658123423632234§)).getDiscountInPercent();
      }
      
      public function getPosition(param1:§521423120252312038123423632234§) : int
      {
         return §5214235968235981123423632234§(param1.adapt(§5214235968235981123423632234§)).getPosition();
      }
   }
}

