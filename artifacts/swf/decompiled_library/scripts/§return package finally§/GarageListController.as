package §return package finally§
{
   import §521423107942310807123423632234§.§521423110672311080123423632234§;
   import §5214234856234869123423632234§.KitItem;
   import §5214235891235904123423632234§.CategoryButtonsList;
   import §5214235891235904123423632234§.CategoryButtonsListEvent;
   import §5214236800236813123423632234§.§include switch var§;
   import §52142370623719123423632234§.§52142351823531123423632234§;
   import §5214239345239358123423632234§.MultiGameObjectDictionary;
   import alternativa.tanks.gui.TimerKitCouldBeBoughtContext;
   import alternativa.tanks.service.garage.GarageService;
   import alternativa.tanks.service.item.ItemService;
   import alternativa.tanks.service.notificationcategories.INotificationGarageCategoriesService;
   import alternativa.tanks.service.notificationcategories.NotificationGarageCategoriesEvent;
   import alternativa.utils.removeDisplayObject;
   import §do package if§.ItemCategoryEnum;
   import §do package if§.ItemViewCategoryEnum;
   import flash.events.Event;
   import flash.utils.clearTimeout;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.UserPropertiesServiceEvent;
   
   public class GarageListController
   {
      
      public static var §521423120472312060123423632234§:ItemService;
      
      public static var §with var try§:PremiumService;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      public static var §if catch include§:IStorageService;
      
      public static var §5214236480236493123423632234§:INotificationGarageCategoriesService;
      
      public static var §finally switch default§:GarageService;
      
      private static const §5214239297239310123423632234§:String = "LAST_SHOWED_GARAGE_CATEGORY";
      
      private static const §implements for for§:int = 1500;
      
      private static const §else use catch§:ItemViewCategoryEnum = ItemViewCategoryEnum.WEAPON;
      
      private var §in package true§:GarageList;
      
      private var §5214233508233521123423632234§:CategoryButtonsList;
      
      private var §521423106282310641123423632234§:Vector.<§521423120252312038123423632234§>;
      
      private var §5214234186234199123423632234§:Vector.<§521423120252312038123423632234§>;
      
      private var §5214232402232415123423632234§:Vector.<§521423120252312038123423632234§>;
      
      private var §use switch switch§:ItemViewCategoryEnum;
      
      private var §static switch while§:MultiGameObjectDictionary;
      
      private var §extends for function§:uint;
      
      public function GarageListController(param1:GarageList, param2:CategoryButtonsList)
      {
         super();
         this.§in package true§ = param1;
         this.§5214233508233521123423632234§ = param2;
         this.init();
      }
      
      private function getEndDiscountTimer(param1:§521423120252312038123423632234§, param2:Boolean) : §include switch var§
      {
         if(§521423120472312060123423632234§.isKit(param1))
         {
            return this.e8ccc6d(param1);
         }
         var _loc3_:§521423120252312038123423632234§ = param1;
         if(§521423120472312060123423632234§.isModificationItem(param1) && param2)
         {
            if(!§521423120472312060123423632234§.hasNextModification(param1))
            {
               return null;
            }
            _loc3_ = §521423120472312060123423632234§.getMaxAvailableOrNextNotAvailableModification(param1);
         }
         return §521423120472312060123423632234§.getEndDiscountTimer(_loc3_);
      }
      
      public function removeSingleItemFromStore(param1:§521423120252312038123423632234§) : void
      {
         var _loc2_:Vector.<KitItem> = null;
         var _loc4_:KitItem = null;
         var _loc3_:int = this.§5214234186234199123423632234§.indexOf(param1);
         if(_loc3_ != -1)
         {
            this.§5214234186234199123423632234§.removeAt(_loc3_);
         }
         if(this.§in package true§.indexById(param1) != -1)
         {
            this.§in package true§.deleteItem(param1);
         }
         if(§521423120472312060123423632234§.isKit(param1))
         {
            _loc2_ = §521423110672311080123423632234§(param1.adapt(§521423110672311080123423632234§)).getItems();
            for each(_loc4_ in _loc2_)
            {
               this.§static switch while§.remove(_loc4_.item,param1);
            }
         }
      }
      
      public function get itemsInDepot() : Vector.<§521423120252312038123423632234§>
      {
         return this.§521423106282310641123423632234§;
      }
      
      private function c388f47(param1:§521423120252312038123423632234§) : int
      {
         var _loc2_:§521423120252312038123423632234§ = null;
         var _loc3_:int = 0;
         if(§521423120472312060123423632234§.isCountable(param1))
         {
            _loc3_ = §521423120472312060123423632234§.getDiscount(param1);
         }
         else if(§521423120472312060123423632234§.isModificationItem(param1) && §521423120472312060123423632234§.hasNextModification(param1))
         {
            _loc2_ = §521423120472312060123423632234§.getMaxAvailableOrNextNotAvailableModification(param1);
            _loc3_ = §521423120472312060123423632234§.getDiscount(_loc2_);
         }
         return _loc3_;
      }
      
      private function d2c63cfe(param1:ItemViewCategoryEnum) : void
      {
         this.§5214233508233521123423632234§.hideNewItemIndicator(param1);
         §5214236480236493123423632234§.categoryShowed(param1);
      }
      
      private function c6407a79() : ItemViewCategoryEnum
      {
         var _loc2_:int = 0;
         var _loc1_:Vector.<ItemViewCategoryEnum> = new <ItemViewCategoryEnum>[ItemViewCategoryEnum.WEAPON,ItemViewCategoryEnum.ARMOR,ItemViewCategoryEnum.PAINT,ItemViewCategoryEnum.INVENTORY,ItemViewCategoryEnum.KIT,ItemViewCategoryEnum.SPECIAL,ItemViewCategoryEnum.GIVEN_PRESENTS];
         if(§if catch include§.getStorage().data.hasOwnProperty("LAST_SHOWED_GARAGE_CATEGORY"))
         {
            _loc2_ = int(§if catch include§.getStorage().data["LAST_SHOWED_GARAGE_CATEGORY"]);
            if(_loc2_ < 0 || _loc2_ >= _loc1_.length)
            {
               return §else use catch§;
            }
            return _loc1_[_loc2_];
         }
         return §else use catch§;
      }
      
      private function f74da358(param1:§521423120252312038123423632234§, param2:Boolean) : GarageListRendererData
      {
         var _loc3_:GarageListRendererData = new GarageListRendererData();
         _loc3_.id = param1;
         _loc3_.name = §521423120472312060123423632234§.getName(param1);
         _loc3_.type = §521423120472312060123423632234§.getCategory(param1);
         _loc3_.mod = §521423120472312060123423632234§.getModificationIndex(param1);
         _loc3_.crystalPrice = §521423120472312060123423632234§.getPrice(param1);
         if(param2)
         {
            _loc3_.rank = -1;
            _loc3_.showLockPremium = false;
            _loc3_.discount = this.c388f47(param1);
         }
         else
         {
            _loc3_.rank = this.f46e6034(param1);
            _loc3_.showLockPremium = §521423120472312060123423632234§.isPremiumItem(param1) && !§with var try§.hasPremium();
            _loc3_.discount = §521423120472312060123423632234§.getDiscount(param1);
         }
         _loc3_.installed = §521423120472312060123423632234§.isMounted(param1);
         _loc3_.garageElement = param2;
         _loc3_.count = §521423120472312060123423632234§.getCount(param1);
         _loc3_.preview = §521423120472312060123423632234§.getPreviewResource(param1);
         _loc3_.sort = §521423120472312060123423632234§.getPosition(param1);
         _loc3_.timerDiscount = this.getEndDiscountTimer(param1,param2);
         if(§521423120472312060123423632234§.isGivenPresent(param1))
         {
            _loc3_.appearanceTime = §52142351823531123423632234§(param1.adapt(§52142351823531123423632234§)).getDate().time;
         }
         return _loc3_;
      }
      
      public function getCurrentCategoryItemsCount() : int
      {
         return this.§in package true§.itemsCount();
      }
      
      public function updateKitsContainsItem(param1:§521423120252312038123423632234§) : void
      {
         var _loc2_:§521423120252312038123423632234§ = null;
         if(this.§static switch while§ == null)
         {
            return;
         }
         var _loc3_:Vector.<§521423120252312038123423632234§> = this.§static switch while§.getValues(param1);
         var _loc4_:int = _loc3_.length - 1;
         while(_loc4_ >= 0)
         {
            _loc2_ = _loc3_[_loc4_];
            if(!§521423120472312060123423632234§.canBuy(_loc2_))
            {
               this.removeSingleItemFromStore(_loc2_);
            }
            else
            {
               this.§in package true§.updateCost(_loc2_,§521423120472312060123423632234§.getPrice(_loc2_));
            }
            _loc4_--;
         }
      }
      
      private function e3ef078d() : void
      {
         var _loc1_:§521423120252312038123423632234§ = null;
         var _loc2_:Vector.<KitItem> = null;
         var _loc4_:KitItem = null;
         this.§static switch while§ = new MultiGameObjectDictionary();
         var _loc5_:int = int(this.§5214234186234199123423632234§.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc5_)
         {
            _loc1_ = this.§5214234186234199123423632234§[_loc3_];
            if(§521423120472312060123423632234§.isKit(_loc1_))
            {
               _loc2_ = §521423110672311080123423632234§(_loc1_.adapt(§521423110672311080123423632234§)).getItems();
               for each(_loc4_ in _loc2_)
               {
                  this.§static switch while§.put(_loc4_.item,_loc1_);
               }
            }
            _loc3_++;
         }
      }
      
      public function updateDiscount(param1:§521423120252312038123423632234§) : void
      {
         var _loc2_:§521423120252312038123423632234§ = null;
         this.updateKitsContainsItem(param1);
         this.d3b1a321();
         if(this.isItemInStore(param1))
         {
            this.§in package true§.updateDiscountAndCost(param1,§521423120472312060123423632234§.getDiscount(param1),§521423120472312060123423632234§.getEndDiscountTimer(param1),§521423120472312060123423632234§.getPrice(param1));
            return;
         }
         if(§521423120472312060123423632234§.isModificationItem(param1))
         {
            _loc2_ = §521423120472312060123423632234§.getMaxUserModificationItem(param1);
            if(_loc2_ != null && §521423120472312060123423632234§.getMaxAvailableOrNextNotAvailableModification(_loc2_) == param1)
            {
               this.§in package true§.updateDiscountWithTimer(_loc2_,§521423120472312060123423632234§.getDiscount(param1),§521423120472312060123423632234§.getEndDiscountTimer(param1));
            }
            return;
         }
         if(§521423120472312060123423632234§.isCountable(param1))
         {
            this.§in package true§.updateDiscountAndCost(param1,§521423120472312060123423632234§.getDiscount(param1),§521423120472312060123423632234§.getEndDiscountTimer(param1),§521423120472312060123423632234§.getPrice(param1));
         }
      }
      
      public function getItemsByCategory(param1:Vector.<§521423120252312038123423632234§>, param2:ItemViewCategoryEnum) : Vector.<§521423120252312038123423632234§>
      {
         var _loc5_:§521423120252312038123423632234§ = null;
         var _loc6_:Vector.<§521423120252312038123423632234§> = new Vector.<§521423120252312038123423632234§>();
         var _loc3_:int = int(param1.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1[_loc4_];
            if(§521423120472312060123423632234§.getViewCategory(_loc5_) == param2)
            {
               _loc6_.push(_loc5_);
            }
            _loc4_++;
         }
         return _loc6_;
      }
      
      public function addItemToDepot(param1:§521423120252312038123423632234§) : void
      {
         if(this.isItemInDepot(param1))
         {
            return;
         }
         §521423120472312060123423632234§.addItem(param1);
         this.§521423106282310641123423632234§.push(param1);
         this.d3b1a321();
         if(this.§use switch switch§ == §521423120472312060123423632234§.getViewCategory(param1))
         {
            this.§in package true§.addItem(this.f74da358(param1,true));
            this.§in package true§.sort();
            this.b1d8d7b2(param1);
         }
      }
      
      private function d3829129(param1:Vector.<§521423120252312038123423632234§>) : §521423120252312038123423632234§
      {
         var _loc2_:§521423120252312038123423632234§ = null;
         var _loc4_:§521423120252312038123423632234§ = null;
         var _loc5_:int = int(param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc5_)
         {
            _loc4_ = param1[_loc3_];
            if(§521423120472312060123423632234§.isMounted(_loc4_))
            {
               _loc2_ = _loc4_;
               break;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function d192eec8() : void
      {
         var _loc3_:int = 0;
         var _loc4_:ItemViewCategoryEnum = null;
         var _loc2_:Vector.<ItemViewCategoryEnum> = new <ItemViewCategoryEnum>[ItemViewCategoryEnum.WEAPON,ItemViewCategoryEnum.ARMOR,ItemViewCategoryEnum.PAINT,ItemViewCategoryEnum.INVENTORY,ItemViewCategoryEnum.KIT,ItemViewCategoryEnum.SPECIAL,ItemViewCategoryEnum.GIVEN_PRESENTS];
         var _loc1_:int = int(_loc2_.length);
         _loc3_ = 0;
         while(_loc3_ < _loc1_)
         {
            _loc4_ = _loc2_[_loc3_];
            if(§5214236480236493123423632234§.isNeedShowNewItemNotification(_loc4_))
            {
               if(this.§use switch switch§ == _loc4_)
               {
                  §5214236480236493123423632234§.categoryShowed(_loc4_);
               }
               else
               {
                  this.§5214233508233521123423632234§.hideDiscountIndicator(_loc4_);
                  this.§5214233508233521123423632234§.showNewItemIndicator(_loc4_);
               }
            }
            _loc3_++;
         }
      }
      
      public function removeItemFromDepot(param1:§521423120252312038123423632234§) : void
      {
         var _loc2_:int = this.§521423106282310641123423632234§.indexOf(param1);
         if(_loc2_ != -1)
         {
            §521423120472312060123423632234§.removeItem(param1);
            this.§521423106282310641123423632234§.removeAt(_loc2_);
         }
         if(this.§in package true§.indexById(param1) != -1)
         {
            this.§in package true§.deleteItem(param1);
         }
         this.updateSelection();
      }
      
      public function initDepot(param1:Vector.<§521423120252312038123423632234§>) : void
      {
         this.§521423106282310641123423632234§ = param1;
         this.a154e191(param1);
         this.a648efff();
      }
      
      private function d29a01b3(param1:§521423120252312038123423632234§) : Boolean
      {
         return true;
      }
      
      private function a154e191(param1:Vector.<§521423120252312038123423632234§>) : void
      {
         var _loc2_:int = int(param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            §521423120472312060123423632234§.addItem(param1[_loc3_]);
            _loc3_++;
         }
      }
      
      public function showDefaultCategory() : void
      {
         this.showCategory(this.c6407a79());
      }
      
      private function d66508cd(param1:UserPropertiesServiceEvent) : void
      {
         this.updateStore();
         this.showCategory(this.§use switch switch§);
      }
      
      private function c6790169() : void
      {
         var _loc1_:§521423120252312038123423632234§ = null;
         var _loc2_:int = int(this.§5214232402232415123423632234§.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = this.§5214232402232415123423632234§[_loc3_];
            if(§521423120472312060123423632234§.canBuy(_loc1_) && this.d29a01b3(_loc1_))
            {
               this.§5214234186234199123423632234§.push(_loc1_);
            }
            _loc3_++;
         }
      }
      
      private function b1d8d7b2(param1:§521423120252312038123423632234§) : void
      {
         this.§in package true§.unselect();
         this.§in package true§.select(param1);
         this.§in package true§.scrollTo(param1);
      }
      
      private function d763f2a4(param1:§521423120252312038123423632234§, param2:Boolean) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:§include switch var§ = null;
         if(param2)
         {
            if(this.c388f47(param1) > 0)
            {
               _loc4_ = this.getEndDiscountTimer(param1,param2);
            }
         }
         else if(§52142329523308123423632234§.rank >= §521423120472312060123423632234§.getMinRankIndex(param1))
         {
            _loc4_ = §521423120472312060123423632234§.getEndDiscountTimer(param1);
         }
         if(_loc4_ != null)
         {
            _loc3_ = _loc4_.§521423133692313382123423632234§() > getTimer();
         }
         return _loc3_;
      }
      
      private function updateStore() : void
      {
         this.c6790169();
         this.d1e03ea0();
         this.e3ef078d();
      }
      
      private function e8ccc6d(param1:§521423120252312038123423632234§) : §include switch var§
      {
         var _loc2_:§include switch var§ = null;
         var _loc5_:TimerKitCouldBeBoughtContext = null;
         var _loc6_:Vector.<TimerKitCouldBeBoughtContext> = §finally switch default§.getView().getTimersKitCouldBeBoughtContext();
         var _loc3_:int = int(_loc6_.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = _loc6_[_loc4_];
            if(_loc5_.item == param1)
            {
               _loc2_ = _loc5_.timer;
               break;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function isItemInStore(param1:§521423120252312038123423632234§) : Boolean
      {
         if(this.§5214234186234199123423632234§ == null)
         {
            return false;
         }
         return this.§5214234186234199123423632234§.indexOf(param1) != -1;
      }
      
      public function destroy() : void
      {
         §52142329523308123423632234§.removeEventListener("UserPropertiesServiceEvent.UPDATE_RANK",this.d66508cd);
         §5214236480236493123423632234§.removeEventListener("NotificationGarageCategoriesEvent.NOTIFICATION_CHANGE",this.a2eeb77e);
         this.§5214233508233521123423632234§.removeEventListener("CategoryButtonsListEvent:CategorySelected",this.f47d703f);
         §with var try§.removeEventListener("change",this.c307e3b);
         clearTimeout(this.§extends for function§);
         removeDisplayObject(this.§in package true§);
         removeDisplayObject(this.§5214233508233521123423632234§);
         this.§in package true§.destroy();
         this.§5214233508233521123423632234§.destroy();
         this.§in package true§ = null;
         this.§5214233508233521123423632234§ = null;
         this.§521423106282310641123423632234§ = null;
         this.§5214234186234199123423632234§ = null;
      }
      
      private function d1e03ea0() : void
      {
         var _loc1_:§521423120252312038123423632234§ = null;
         var _loc2_:§521423120252312038123423632234§ = null;
         var _loc5_:§521423120252312038123423632234§ = null;
         var _loc6_:Vector.<§521423120252312038123423632234§> = new Vector.<§521423120252312038123423632234§>();
         var _loc3_:int = int(this.§5214234186234199123423632234§.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc1_ = this.§5214234186234199123423632234§[_loc4_];
            if(§521423120472312060123423632234§.isModificationItem(_loc1_))
            {
               if(§521423120472312060123423632234§.isPremiumItem(_loc1_))
               {
                  _loc6_.push(_loc1_);
               }
               else
               {
                  _loc2_ = §521423120472312060123423632234§.getMaxUserModificationItem(_loc1_);
                  if(_loc2_ == null && §521423120472312060123423632234§.getModificationIndex(_loc1_) == 0)
                  {
                     _loc6_.push(_loc1_);
                  }
               }
            }
            else
            {
               _loc6_.push(_loc1_);
            }
            _loc4_++;
         }
         this.§5214234186234199123423632234§ = _loc6_;
      }
      
      private function c307e3b(param1:Event) : void
      {
         var _loc2_:§521423120252312038123423632234§ = null;
         var _loc3_:int = this.§in package true§.itemsCount() - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§in package true§.getItemAt(_loc3_);
            if(§521423120472312060123423632234§.isPremiumItem(_loc2_) && this.isItemInStore(_loc2_))
            {
               this.§in package true§.updateShowLockPremium(_loc2_,!§with var try§.hasPremium());
            }
            _loc3_--;
         }
         this.§in package true§.sort();
         this.b1d8d7b2(this.§in package true§.selectedItem);
      }
      
      private function init() : void
      {
         this.§521423106282310641123423632234§ = new Vector.<§521423120252312038123423632234§>();
         this.§5214234186234199123423632234§ = new Vector.<§521423120252312038123423632234§>();
         §52142329523308123423632234§.addEventListener("UserPropertiesServiceEvent.UPDATE_RANK",this.d66508cd);
         §5214236480236493123423632234§.addEventListener("NotificationGarageCategoriesEvent.NOTIFICATION_CHANGE",this.a2eeb77e);
         this.§5214233508233521123423632234§.addEventListener("CategoryButtonsListEvent:CategorySelected",this.f47d703f);
         §with var try§.addEventListener("change",this.c307e3b);
         this.d192eec8();
      }
      
      private function f6cae4fb() : void
      {
         var _loc1_:§521423120252312038123423632234§ = null;
         var _loc2_:Vector.<§521423120252312038123423632234§> = new Vector.<§521423120252312038123423632234§>();
         var _loc3_:int = int(this.§521423106282310641123423632234§.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc1_ = this.§521423106282310641123423632234§[_loc4_];
            if(§521423120472312060123423632234§.isModificationItem(_loc1_))
            {
               if(_loc1_ == §521423120472312060123423632234§.getMaxUserModificationItem(_loc1_))
               {
                  _loc2_.push(_loc1_);
               }
            }
            else
            {
               _loc2_.push(_loc1_);
            }
            _loc4_++;
         }
         this.§521423106282310641123423632234§ = _loc2_;
      }
      
      public function isItemInDepot(param1:§521423120252312038123423632234§) : Boolean
      {
         if(this.§521423106282310641123423632234§ == null)
         {
            return false;
         }
         return this.§521423106282310641123423632234§.indexOf(param1) != -1;
      }
      
      private function f46e6034(param1:§521423120252312038123423632234§) : int
      {
         var _loc2_:int = §521423120472312060123423632234§.getMinRankIndex(param1);
         var _loc3_:int = §521423120472312060123423632234§.getMaxRankIndex(param1);
         var _loc4_:int = §52142329523308123423632234§.rank;
         if(_loc4_ < _loc2_)
         {
            return _loc2_;
         }
         if(_loc4_ > _loc3_)
         {
            return _loc3_;
         }
         return 0;
      }
      
      private function c65e291a() : void
      {
         var _loc4_:int = 0;
         var _loc5_:ItemViewCategoryEnum = null;
         var _loc1_:Boolean = false;
         var _loc3_:Vector.<ItemViewCategoryEnum> = new <ItemViewCategoryEnum>[ItemViewCategoryEnum.WEAPON,ItemViewCategoryEnum.ARMOR,ItemViewCategoryEnum.PAINT,ItemViewCategoryEnum.INVENTORY,ItemViewCategoryEnum.KIT,ItemViewCategoryEnum.SPECIAL,ItemViewCategoryEnum.GIVEN_PRESENTS];
         var _loc2_:int = int(_loc3_.length);
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            _loc5_ = _loc3_[_loc4_];
            _loc1_ = false;
            if(_loc5_ != ItemViewCategoryEnum.KIT && !§5214236480236493123423632234§.isNeedShowNewItemNotification(_loc5_))
            {
               if(this.a28f2a59(_loc5_))
               {
                  _loc1_ = true;
               }
            }
            if(_loc1_)
            {
               this.§5214233508233521123423632234§.showDiscountIndicator(_loc5_);
            }
            else
            {
               this.§5214233508233521123423632234§.hideDiscountIndicator(_loc5_);
            }
            _loc4_++;
         }
      }
      
      public function showCategory(param1:ItemViewCategoryEnum, param2:§521423120252312038123423632234§ = null) : void
      {
         var _loc9_:ItemViewCategoryEnum = null;
         var _loc10_:§521423120252312038123423632234§ = null;
         var _loc7_:§521423120252312038123423632234§ = null;
         var _loc8_:int = 0;
         if(!this.§5214233508233521123423632234§.getCategoryButtonVisibility(param1))
         {
            _loc9_ = this.§5214233508233521123423632234§.findVisibleCategory();
            this.showCategory(_loc9_);
            return;
         }
         this.§use switch switch§ = param1;
         this.§5214233508233521123423632234§.select(param1);
         var _loc5_:Vector.<§521423120252312038123423632234§> = this.getItemsByCategory(this.§521423106282310641123423632234§,param1);
         var _loc6_:Vector.<§521423120252312038123423632234§> = this.getItemsByCategory(this.§5214234186234199123423632234§,param1);
         this.§in package true§.clearList();
         var _loc4_:int = int(_loc5_.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc4_)
         {
            this.§in package true§.addItem(this.f74da358(_loc5_[_loc3_],true));
            _loc3_++;
         }
         _loc4_ = int(_loc6_.length);
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            this.§in package true§.addItem(this.f74da358(_loc6_[_loc3_],false));
            _loc3_++;
         }
         this.§in package true§.sort();
         §if catch include§.getStorage().data["LAST_SHOWED_GARAGE_CATEGORY"] = param1.value;
         if(this.§in package true§.itemsCount() > 0)
         {
            _loc10_ = this.§in package true§.getItemAt(0);
            if(param2 == null)
            {
               _loc7_ = this.d3829129(_loc5_);
               if(_loc7_ == null)
               {
                  this.b1d8d7b2(_loc10_);
               }
               else
               {
                  this.§in package true§.scrollTo(_loc10_);
                  this.§in package true§.select(_loc7_);
               }
            }
            else
            {
               _loc8_ = this.§in package true§.indexById(param2);
               if(_loc8_ == -1)
               {
                  this.b1d8d7b2(_loc10_);
               }
               else
               {
                  this.b1d8d7b2(param2);
               }
            }
         }
         this.d2c63cfe(param1);
         this.c65e291a();
      }
      
      private function f47d703f(param1:CategoryButtonsListEvent) : void
      {
         if(this.§use switch switch§ != param1.getCategory())
         {
            this.showCategory(param1.getCategory());
         }
      }
      
      public function removeItemFromStore(param1:§521423120252312038123423632234§) : void
      {
         if(§521423120472312060123423632234§.isGrouped(param1))
         {
            this.f20e4395(param1);
         }
         else
         {
            this.removeSingleItemFromStore(param1);
         }
         this.updateSelection();
      }
      
      private function a648efff() : void
      {
         var _loc1_:§521423120252312038123423632234§ = null;
         var _loc2_:Vector.<§521423120252312038123423632234§> = new Vector.<§521423120252312038123423632234§>();
         var _loc3_:int = int(this.§521423106282310641123423632234§.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc1_ = this.§521423106282310641123423632234§[_loc4_];
            if(§521423120472312060123423632234§.getCategory(_loc1_) != ItemCategoryEnum.INVENTORY)
            {
               _loc2_.push(_loc1_);
            }
            else
            {
               this.§5214234186234199123423632234§.push(_loc1_);
            }
            _loc4_++;
         }
         this.§521423106282310641123423632234§ = _loc2_;
      }
      
      private function a28f2a59(param1:ItemViewCategoryEnum) : Boolean
      {
         var _loc7_:§521423120252312038123423632234§ = null;
         var _loc4_:§521423120252312038123423632234§ = null;
         var _loc5_:Vector.<§521423120252312038123423632234§> = this.getItemsByCategory(this.§521423106282310641123423632234§,param1);
         var _loc6_:int = int(_loc5_.length);
         var _loc2_:int = 0;
         while(_loc2_ < _loc6_)
         {
            _loc7_ = _loc5_[_loc2_];
            if(this.d763f2a4(_loc7_,true))
            {
               return true;
            }
            _loc2_++;
         }
         var _loc3_:Vector.<§521423120252312038123423632234§> = this.getItemsByCategory(this.§5214234186234199123423632234§,param1);
         _loc6_ = int(_loc3_.length);
         _loc2_ = 0;
         while(_loc2_ < _loc6_)
         {
            _loc4_ = _loc3_[_loc2_];
            if(this.d763f2a4(_loc4_,false))
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      private function f20e4395(param1:§521423120252312038123423632234§) : void
      {
         var _loc2_:§521423120252312038123423632234§ = null;
         var _loc3_:int = this.§5214234186234199123423632234§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§5214234186234199123423632234§[_loc3_];
            if(§521423120472312060123423632234§.isGrouped(_loc2_))
            {
               this.removeSingleItemFromStore(_loc2_);
            }
            _loc3_--;
         }
      }
      
      public function showItemInCategory(param1:§521423120252312038123423632234§) : void
      {
         var _loc2_:§521423120252312038123423632234§ = null;
         var _loc3_:§521423120252312038123423632234§ = param1;
         if(§521423120472312060123423632234§.isModificationItem(param1))
         {
            _loc2_ = §521423120472312060123423632234§.getMaxUserModificationItem(param1);
            if(_loc2_ != null)
            {
               _loc3_ = _loc2_;
            }
            else
            {
               _loc3_ = §521423120472312060123423632234§.getMaxAvailableModification(param1);
            }
         }
         this.showCategory(§521423120472312060123423632234§.getViewCategory(_loc3_),_loc3_);
      }
      
      private function a2eeb77e(param1:NotificationGarageCategoriesEvent) : void
      {
         this.d192eec8();
      }
      
      private function d3b1a321() : void
      {
         clearTimeout(this.§extends for function§);
         this.§extends for function§ = setTimeout(this.c65e291a,1500);
      }
      
      public function initStore(param1:Vector.<§521423120252312038123423632234§>) : void
      {
         this.§5214232402232415123423632234§ = param1;
         this.updateStore();
      }
      
      public function addItemToStore(param1:§521423120252312038123423632234§) : void
      {
         if(this.isItemInStore(param1) || !§521423120472312060123423632234§.canBuy(param1))
         {
            return;
         }
         this.§5214234186234199123423632234§.push(param1);
         if(this.§use switch switch§ == §521423120472312060123423632234§.getViewCategory(param1))
         {
            this.§in package true§.addItem(this.f74da358(param1,false));
            this.§in package true§.sort();
            this.b1d8d7b2(param1);
         }
      }
      
      public function updateSelection() : void
      {
         if(this.§in package true§.selectedItem == null && this.§in package true§.itemsCount() > 0)
         {
            this.b1d8d7b2(this.§in package true§.getItemAt(0));
         }
      }
   }
}

