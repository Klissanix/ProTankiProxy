package alternativa.tanks.gui
{
   import §521423106142310627123423632234§.AlertAnswer;
   import §521423110462311059123423632234§.§while catch throw§;
   import §5214231817231830123423632234§.§5214233863233876123423632234§;
   import §5214232250232263123423632234§.§try set set§;
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214235891235904123423632234§.CategoryButtonsList;
   import §5214236800236813123423632234§.§include switch var§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.item.ItemService;
   import alternativa.tanks.service.item3d.ITank3DViewer;
   import alternativa.utils.removeDisplayObject;
   import §do package if§.ItemCategoryEnum;
   import §do package if§.ItemViewCategoryEnum;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import §include else§.§52142345223465123423632234§;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.AlertServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import §return package finally§.GarageList;
   import §return package finally§.GarageListController;
   import §switch set for§.§package default§;
   
   public class GarageWindow extends Sprite implements §throw package implements§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §521423120472312060123423632234§:ItemService;
      
      public static var §break use do§:IAlertService;
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §52142339723410123423632234§:ITank3DViewer;
      
      private var §521423121722312185123423632234§:Point;
      
      private const §52142343223445123423632234§:int = 11;
      
      private const §5214237400237413123423632234§:Point = new Point(104,33);
      
      public var §try true§:ItemInfoPanel;
      
      public var §5214237270237283123423632234§:Boolean;
      
      public var §catch set function§:Boolean;
      
      public var §package set return§:String;
      
      public var selectedItem:§521423120252312038123423632234§;
      
      private var §case var false§:Vector.<§521423120252312038123423632234§>;
      
      private var §5214234186234199123423632234§:Vector.<§521423120252312038123423632234§>;
      
      public var §52142318923202123423632234§:§try set set§;
      
      public const §5214236520236533123423632234§:int = 412;
      
      private var §else package with§:§native for dynamic§;
      
      private var §set set null§:§include return§;
      
      private var §in package true§:GarageList;
      
      private var §5214233508233521123423632234§:CategoryButtonsList;
      
      private var §5214239774239787123423632234§:GarageListController;
      
      public var §false switch package§:Vector.<TimerKitCouldBeBoughtContext>;
      
      public function GarageWindow(param1:§5214233863233876123423632234§, param2:Boolean)
      {
         super();
         this.§false switch package§ = new Vector.<TimerKitCouldBeBoughtContext>();
         this.§case var false§ = new Vector.<§521423120252312038123423632234§>();
         this.§5214234186234199123423632234§ = new Vector.<§521423120252312038123423632234§>();
         this.§521423121722312185123423632234§ = new Point(880,737);
         if(!§return set get§.isInBattle())
         {
            this.§52142318923202123423632234§ = new §try set set§(param1);
            addChild(this.§52142318923202123423632234§);
            §52142339723410123423632234§.setView(this.§52142318923202123423632234§);
         }
         this.§try true§ = new ItemInfoPanel(param2,412);
         addChild(this.§try true§);
         this.§else package with§ = new §native for dynamic§();
         addChild(this.§else package with§);
         this.§set set null§ = new §include return§(0,0,4278985229);
         this.§set set null§.§5214238301238314123423632234§ = true;
         addChild(this.§set set null§);
         this.§in package true§ = new GarageList();
         addChild(this.§in package true§);
         this.§5214233508233521123423632234§ = new CategoryButtonsList();
         addChild(this.§5214233508233521123423632234§);
         this.§5214239774239787123423632234§ = new GarageListController(this.§in package true§,this.§5214233508233521123423632234§);
         this.setEvents();
         this.setEvents();
      }
      
      public function get itemsInWarehouse() : Vector.<§521423120252312038123423632234§>
      {
         return this.§case var false§;
      }
      
      private function c1b31cd4(param1:§52142345223465123423632234§) : void
      {
         this.f409f744(param1);
         if(this.selectedItem.hasModel(§while catch throw§))
         {
            §while catch throw§(this.selectedItem.adapt(§while catch throw§)).handleDoubleClickOnItemPreview();
            return;
         }
         if(this.§try true§.§null package var§.visible && this.§try true§.§null package var§.§521423116092311622123423632234§() == §package default§.§5214239651239664123423632234§)
         {
            this.f12700e3();
         }
         else if(this.§try true§.§super use break§.visible && this.§try true§.§super use break§.§521423116092311622123423632234§() == §package default§.§5214239651239664123423632234§)
         {
            this.d58979ce();
         }
         else if(this.§try true§.§52142351123524123423632234§.visible && this.§try true§.§52142351123524123423632234§.§521423116092311622123423632234§() == §package default§.§5214239651239664123423632234§)
         {
            this.f69ab4d();
         }
      }
      
      public function updateDiscount(param1:§521423120252312038123423632234§) : void
      {
         if(this.selectedItem == param1)
         {
            this.showItemInfo(this.selectedItem,this.isItemInStore(this.selectedItem));
         }
         this.§5214239774239787123423632234§.updateDiscount(param1);
      }
      
      public function unlockItemInStore(param1:String) : void
      {
      }
      
      public function destroy() : void
      {
         if(this.§52142318923202123423632234§ != null)
         {
            removeDisplayObject(this.§52142318923202123423632234§);
            this.§52142318923202123423632234§.destroy();
            this.§52142318923202123423632234§ = null;
         }
         this.§try true§.destroy();
         this.§try true§ = null;
         this.§package set return§ = null;
         this.§case var false§ = null;
         this.§5214234186234199123423632234§ = null;
         removeDisplayObject(this.§else package with§);
         this.§else package with§ = null;
         removeDisplayObject(this.§set set null§);
         this.§set set null§ = null;
         this.§5214239774239787123423632234§.destroy();
         this.§5214239774239787123423632234§ = null;
         this.§in package true§ = null;
         this.§5214233508233521123423632234§ = null;
         this.b3004b05();
      }
      
      public function setBuyButtonInfo(param1:Boolean, param2:int = 0, param3:int = 0) : void
      {
         if(param1)
         {
            this.§try true§.§super use break§.icon = null;
         }
         else
         {
            this.§try true§.§super use break§.setInfo(param2,param3);
         }
      }
      
      private function d58979ce() : void
      {
         dispatchEvent(new GarageWindowEvent("GarageWindowEventBuyItem",this.selectedItem));
      }
      
      public function unlockUpgradeButton() : void
      {
      }
      
      public function removeItemFromDepot(param1:§521423120252312038123423632234§) : void
      {
         this.§5214239774239787123423632234§.removeItemFromDepot(param1);
      }
      
      public function addItemToMarket(param1:§521423120252312038123423632234§) : void
      {
         this.§5214234186234199123423632234§.push(param1);
         this.§5214239774239787123423632234§.addItemToStore(param1);
      }
      
      public function removeItemFromStore(param1:§521423120252312038123423632234§) : void
      {
         this.§5214239774239787123423632234§.removeItemFromStore(param1);
      }
      
      private function c844cd3(param1:Event) : void
      {
         dispatchEvent(new GarageWindowEvent("GarageWindowEventWirehouseItemSelected",this.selectedItem));
      }
      
      public function showDefaultCategory() : void
      {
         this.§5214239774239787123423632234§.showDefaultCategory();
      }
      
      public function showItemInfo(param1:§521423120252312038123423632234§, param2:Boolean) : void
      {
         this.§catch set function§ = param2;
         this.§5214237270237283123423632234§ = §521423120472312060123423632234§.getCategory(param1) == ItemCategoryEnum.INVENTORY;
         if(§521423120472312060123423632234§.getCategory(param1) == ItemCategoryEnum.INVENTORY && !param2)
         {
            this.§in package true§.updateCount(param1,§521423120472312060123423632234§.getCount(param1));
         }
         this.§try true§.showItemInfo(param1,param2);
         this.§try true§.resize(412,this.§521423121722312185123423632234§.y - this.§else package with§.height);
      }
      
      private function f409f744(param1:§52142345223465123423632234§) : void
      {
         this.selectedItem = this.§in package true§.selectedItem;
         var _loc2_:Boolean = this.§5214239774239787123423632234§.isItemInDepot(this.selectedItem);
         if(_loc2_)
         {
            dispatchEvent(new GarageWindowEvent("GarageWindowEventWirehouseItemSelected",this.selectedItem));
         }
         else
         {
            dispatchEvent(new GarageWindowEvent("GarageWindowEventStoreItemSelected",this.selectedItem));
         }
      }
      
      public function unlockMountButton() : void
      {
         if(!this.§catch set function§ && !this.§5214237270237283123423632234§)
         {
            this.§try true§.§null package var§.enabled = true;
         }
      }
      
      public function getTimersKitCouldBeBoughtContext() : Vector.<TimerKitCouldBeBoughtContext>
      {
         return this.§false switch package§;
      }
      
      private function a3a629b7(param1:MouseEvent) : void
      {
         dispatchEvent(new GarageWindowEvent("GarageWindowEventUpgradeItem",this.selectedItem));
      }
      
      public function updateCount(param1:§521423120252312038123423632234§) : void
      {
         this.§in package true§.updateCount(param1,§521423120472312060123423632234§.getCount(param1));
      }
      
      public function showItemInCategory(param1:§521423120252312038123423632234§) : void
      {
         this.§5214239774239787123423632234§.showItemInCategory(param1);
      }
      
      private function c51873ba(param1:Event) : void
      {
         dispatchEvent(new GarageWindowEvent("GarageWindowEventStoreItemSelected",this.selectedItem));
      }
      
      private function b75cf294(param1:MouseEvent) : void
      {
         dispatchEvent(new GarageWindowEvent("GarageWindowEventSetupItem",this.selectedItem));
      }
      
      public function unmountItem(param1:§521423120252312038123423632234§) : void
      {
         this.§in package true§.unmount(param1);
      }
      
      public function isItemInStore(param1:§521423120252312038123423632234§) : Boolean
      {
         return this.§5214239774239787123423632234§.isItemInStore(param1);
      }
      
      public function lockMountButton() : void
      {
         if(!this.§catch set function§ && !this.§5214237270237283123423632234§)
         {
            this.§try true§.§null package var§.enabled = false;
         }
      }
      
      public function selectFirstItemInWarehouse() : void
      {
         this.showDefaultCategory();
      }
      
      private function f12700e3() : void
      {
         dispatchEvent(new GarageWindowEvent("GarageWindowEventSetupItem",this.selectedItem));
      }
      
      public function updateKitsContainsItem(param1:§521423120252312038123423632234§) : void
      {
         this.§5214239774239787123423632234§.updateKitsContainsItem(param1);
      }
      
      public function mountItem(param1:§521423120252312038123423632234§) : void
      {
         this.§in package true§.mount(param1);
      }
      
      public function get itemsInStore() : Vector.<§521423120252312038123423632234§>
      {
         return this.§5214234186234199123423632234§;
      }
      
      public function lockItemInStore(param1:String) : void
      {
      }
      
      public function itemFullUpgraded(param1:§521423120252312038123423632234§) : void
      {
         var _loc2_:§521423120252312038123423632234§ = null;
         if(§521423120472312060123423632234§.isModificationItem(this.selectedItem))
         {
            _loc2_ = §521423120472312060123423632234§.getNextModification(param1);
            if(_loc2_ != null)
            {
               this.updateDiscount(_loc2_);
            }
         }
      }
      
      public function getItemInfoPanel() : ItemInfoPanel
      {
         return this.§try true§;
      }
      
      public function setCategoryButtonVisibility(param1:ItemViewCategoryEnum, param2:Boolean) : void
      {
         this.§5214233508233521123423632234§.setCategoryButtonVisibility(param1,param2);
      }
      
      private function e1d86a9d(param1:Vector.<§521423120252312038123423632234§>) : void
      {
         var _loc2_:§521423120252312038123423632234§ = null;
         var _loc7_:int = 0;
         var _loc8_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§include switch var§ = null;
         var _loc3_:int = int(param1.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = param1[_loc4_];
            if(§521423120472312060123423632234§.isKit(_loc2_) && §521423120472312060123423632234§.canBuy(_loc2_) && §521423120472312060123423632234§.isEnabledItem(_loc2_))
            {
               _loc7_ = §521423120472312060123423632234§.getTimeLeftInSeconds(_loc2_);
               _loc8_ = 2592000;
               if(!§521423120472312060123423632234§.isTimelessItem(_loc2_) && _loc7_ > 0 && _loc7_ <= _loc8_)
               {
                  _loc5_ = _loc7_ * 1000;
                  _loc6_ = new §include switch var§();
                  _loc6_.§native var include§(_loc5_ + getTimer());
                  this.§false switch package§.push(new TimerKitCouldBeBoughtContext(_loc2_,_loc6_,this));
               }
            }
            _loc4_++;
         }
      }
      
      public function initStore(param1:Vector.<§521423120252312038123423632234§>) : void
      {
         this.e1d86a9d(param1);
         this.§5214239774239787123423632234§.initStore(param1);
      }
      
      public function addItemToDepot(param1:§521423120252312038123423632234§) : void
      {
         this.§5214239774239787123423632234§.addItemToDepot(param1);
      }
      
      public function unlockBuyButton() : void
      {
      }
      
      public function initDepot(param1:Vector.<§521423120252312038123423632234§>) : void
      {
         this.§5214239774239787123423632234§.initDepot(param1);
      }
      
      public function unlockItemInWarehouse(param1:String) : void
      {
      }
      
      private function f69ab4d() : void
      {
         §break use do§.showAlert(§5214236363236376123423632234§.getText("PRESENT_WILL_BE_REMOVED_ALERT"),Vector.<String>([AlertAnswer.OK,AlertAnswer.§final set get§]));
         §break use do§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.e579647e);
      }
      
      public function showCategory(param1:ItemViewCategoryEnum) : void
      {
         this.§5214239774239787123423632234§.showCategory(param1);
      }
      
      private function cc81c9a(param1:MouseEvent) : void
      {
         dispatchEvent(new GarageWindowEvent("GarageWindowEventBuyItem",this.selectedItem));
      }
      
      public function lockItemInWarehouse(param1:String) : void
      {
      }
      
      private function e579647e(param1:AlertServiceEvent) : void
      {
         §break use do§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.e579647e);
         if(param1.typeButton == AlertAnswer.OK)
         {
            dispatchEvent(new GarageWindowEvent("GarageWindowEventDeletePresent",this.selectedItem));
            this.removeItemFromDepot(this.selectedItem);
            if(this.§5214239774239787123423632234§.getCurrentCategoryItemsCount() > 0)
            {
               this.updateSelection();
            }
            else
            {
               this.§5214233508233521123423632234§.setCategoryButtonVisibility(ItemViewCategoryEnum.GIVEN_PRESENTS,false);
               this.showDefaultCategory();
            }
         }
      }
      
      public function isItemInDepot(param1:§521423120252312038123423632234§) : Boolean
      {
         return this.§5214239774239787123423632234§.isItemInDepot(param1);
      }
      
      public function removeAllModifications(param1:§521423120252312038123423632234§) : void
      {
         var _loc2_:§521423120252312038123423632234§ = null;
         var _loc3_:Vector.<§521423120252312038123423632234§> = §521423120472312060123423632234§.getModifications(param1);
         for each(_loc2_ in _loc3_)
         {
            if(this.isItemInDepot(_loc2_))
            {
               this.removeItemFromDepot(_loc2_);
            }
            if(this.isItemInStore(_loc2_))
            {
               this.removeItemFromStore(_loc2_);
            }
         }
      }
      
      private function setEvents() : void
      {
         this.§in package true§.addEventListener("SelectPartsListItem",this.f409f744);
         this.§in package true§.addEventListener("PartsListItemDoubleClick",this.c1b31cd4);
         this.§try true§.§super use break§.addEventListener("click",this.cc81c9a);
         this.§try true§.§null package var§.addEventListener("click",this.b75cf294);
         this.§try true§.§52142351123524123423632234§.addEventListener("click",this.d668b6c2);
      }
      
      public function resize(param1:int, param2:int) : void
      {
         this.§521423121722312185123423632234§ = new Point(param1,param2);
         this.§else package with§.width = param1;
         this.§else package with§.height = 205;
         this.§else package with§.x = 0;
         this.§else package with§.y = param2 - this.§else package with§.height;
         this.§set set null§.width = param1 - 11 * 2;
         this.§set set null§.height = 147;
         this.§set set null§.x = 11;
         this.§set set null§.y = this.§else package with§.y + 11;
         this.§in package true§.width = this.§else package with§.width - 11 * 2 - 8;
         this.§in package true§.height = 148;
         this.§in package true§.x = 11 + 4;
         this.§in package true§.y = this.§else package with§.y + 11 + 4;
         this.§5214233508233521123423632234§.width = param1 - 11 * 2 - 8;
         this.§5214233508233521123423632234§.x = 11;
         this.§5214233508233521123423632234§.y = this.§in package true§.y + this.§in package true§.height;
         if(this.§52142318923202123423632234§ != null)
         {
            this.§52142318923202123423632234§.resize(param1 - 412,param2 - this.§else package with§.height);
         }
         this.§try true§.resize(412,param2 - this.§else package with§.height);
         this.§try true§.x = param1 - 412;
      }
      
      public function updateStore() : void
      {
         this.§5214239774239787123423632234§.updateSelection();
      }
      
      public function getSelectedItem() : §521423120252312038123423632234§
      {
         return this.selectedItem;
      }
      
      private function d668b6c2(param1:MouseEvent) : void
      {
         this.f69ab4d();
      }
      
      private function f408f341(param1:MouseEvent) : void
      {
         dispatchEvent(new GarageWindowEvent("GarageWindowEventAddCrystals",this.selectedItem));
      }
      
      private function b3004b05() : void
      {
         var _loc1_:TimerKitCouldBeBoughtContext = null;
         for each(_loc1_ in this.§false switch package§)
         {
            _loc1_.removeListener();
         }
      }
      
      public function updateSelection() : void
      {
         this.§5214239774239787123423632234§.updateSelection();
      }
   }
}

