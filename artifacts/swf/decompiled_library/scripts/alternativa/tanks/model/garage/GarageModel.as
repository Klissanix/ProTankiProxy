package alternativa.tanks.model.garage
{
   import §521423106142310627123423632234§.Alert;
   import §521423106142310627123423632234§.AlertAnswer;
   import §521423107942310807123423632234§.§521423110672311080123423632234§;
   import §521423127152312728123423632234§.§5214235968235981123423632234§;
   import §521423129512312964123423632234§.§5214238033238046123423632234§;
   import §521423129512312964123423632234§.§include catch each§;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214234748234761123423632234§.§521423121342312147123423632234§;
   import §5214234748234761123423632234§.§function switch continue§;
   import §5214234856234869123423632234§.KitItem;
   import §5214236800236813123423632234§.§include switch var§;
   import §52142370623719123423632234§.§52142351823531123423632234§;
   import alternativa.engine3d.materials.TextureResourcesRegistry;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.gui.ConfirmAlert;
   import alternativa.tanks.gui.GarageWindow;
   import alternativa.tanks.gui.GarageWindowEvent;
   import alternativa.tanks.gui.TimerKitCouldBeBoughtContext;
   import alternativa.tanks.loader.ILoaderWindowService;
   import alternativa.tanks.model.item.upgradable.§5214233529233542123423632234§;
   import alternativa.tanks.service.achievement.IAchievementService;
   import alternativa.tanks.service.delaymountcategory.IDelayMountCategoryService;
   import alternativa.tanks.service.garage.GarageService;
   import alternativa.tanks.service.item.ItemService;
   import alternativa.tanks.service.item3d.ITank3DViewer;
   import alternativa.tanks.service.money.IMoneyService;
   import alternativa.tanks.service.temporaryitemnotify.ITemporaryItemNotifyService;
   import alternativa.tanks.service.temporaryitemnotify.§final use try§;
   import §catch for while§.§default catch case§;
   import §catch for while§.§for package finally§;
   import §do package if§.ItemCategoryEnum;
   import §do package if§.ItemViewCategoryEnum;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import §for switch catch§.FirstMoneyHelper;
   import §get switch catch§.§catch§;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.model.§throw catch var§;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.client.garage.models.garage.GarageModelBase;
   import projects.tanks.client.garage.models.garage.§super set each§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.helper.IHelpService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.UserPropertiesServiceEvent;
   import §throw package for§.§return var function§;
   
   public class GarageModel extends GarageModelBase implements §super set each§, §do set function§, §throw catch var§, §5214238033238046123423632234§, §final use try§, §5214233988234001123423632234§
   {
      
      public static var display:IDisplay;
      
      public static var §else var include§:IHelpService;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      public static var §521423120472312060123423632234§:ItemService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §get use final§:ITemporaryItemNotifyService;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      public static var §52142339723410123423632234§:ITank3DViewer;
      
      public static var §521423124592312472123423632234§:IAchievementService;
      
      public static var §var var finally§:IMoneyService;
      
      public static var §521423101112310124123423632234§:ILoaderWindowService;
      
      public static var §finally switch default§:GarageService;
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §extends package use§:IDelayMountCategoryService;
      
      public static var §default finally§:IDialogsService;
      
      private const §case var finally§:int = 2;
      
      private const §5214236255236268123423632234§:int = 3;
      
      private const §5214231452231465123423632234§:int = 700;
      
      private const §521423125292312542123423632234§:String = "GarageModel";
      
      private var §521423119602311973123423632234§:GarageWindow;
      
      private var §function catch§:§521423120252312038123423632234§;
      
      private var §521423100442310057123423632234§:§521423120252312038123423632234§;
      
      private var §5214232576232589123423632234§:ConfirmAlert;
      
      private var selectedItem:§521423120252312038123423632234§;
      
      private var items:Vector.<§521423120252312038123423632234§>;
      
      private var §521423114292311442123423632234§:FirstMoneyHelper;
      
      public function GarageModel()
      {
         super();
      }
      
      private function d4afcdb5() : void
      {
         this.§521423114292311442123423632234§ = new FirstMoneyHelper();
         §else var include§.registerHelper("GarageModel",700,this.§521423114292311442123423632234§,false);
         display.stage.addEventListener("resize",this.d647889f);
         this.d647889f();
      }
      
      public function onResourceLoadingFatalError(param1:§include catch each§, param2:String) : void
      {
      }
      
      private function d647889f(param1:Event = null) : void
      {
         var _loc2_:int = Math.max(1000,display.stage.stageWidth / Display.§521423132512313264123423632234§);
         var _loc3_:int = Math.max(600,display.stage.stageHeight / Display.§521423132512313264123423632234§);
         this.§521423114292311442123423632234§.targetPoint = new Point(_loc2_ - 400,30);
         this.a2fdcd5a();
      }
      
      public function objectLoaded() : void
      {
         this.§521423119602311973123423632234§ = new GarageWindow(getInitParam().§null catch return§,false);
         §finally switch default§.registerView(this.§521423119602311973123423632234§);
      }
      
      private function b187bb50() : void
      {
         this.removeEvents();
         var _loc1_:DisplayObjectContainer = display.systemLayer;
         if(_loc1_.contains(this.§521423119602311973123423632234§))
         {
            display.mainContainer.blendMode = "normal";
            this.§521423119602311973123423632234§.destroy();
            _loc1_.removeChild(this.§521423119602311973123423632234§);
         }
         §52142339723410123423632234§.resetView();
         §finally switch default§.unregisterView();
         this.§521423119602311973123423632234§ = null;
      }
      
      public function selectFirstItemInDepot() : void
      {
         this.§521423119602311973123423632234§.showDefaultCategory();
      }
      
      private function removeEvents() : void
      {
         display.stage.removeEventListener("resize",this.b1913c31);
         §52142329523308123423632234§.removeEventListener("UserPropertiesServiceEvent.UPDATE_RANK",this.a43d8f3c);
      }
      
      private function a16d8ebc(param1:GarageWindowEvent) : void
      {
         var _loc2_:BitmapData = null;
         var _loc4_:ItemCategoryEnum = null;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = Boolean(§return var function§(param1.item.adapt(§return var function§)).isForRent());
         this.§521423100442310057123423632234§ = param1.item;
         var _loc3_:int = this.getPrice(§521423120472312060123423632234§.hasItem(param1.item) && §521423120472312060123423632234§.isModificationItem(param1.item) ? §521423120472312060123423632234§.getNextModification(param1.item) : param1.item);
         if(§var var finally§.checkEnough(_loc3_))
         {
            if(§521423120472312060123423632234§.isPresent(this.§521423100442310057123423632234§))
            {
               §function switch continue§(param1.item.adapt(§function switch continue§)).preparePresent(this.§521423100442310057123423632234§);
               return;
            }
            if(§521423120472312060123423632234§.hasItem(this.§521423100442310057123423632234§) && §521423120472312060123423632234§.isModificationItem(this.§521423100442310057123423632234§))
            {
               _loc2_ = §521423120472312060123423632234§.getPreviewResource(§521423120472312060123423632234§.getNextModification(this.§521423100442310057123423632234§)).data;
               _loc4_ = §521423120472312060123423632234§.getCategory(§521423120472312060123423632234§.getNextModification(this.§521423100442310057123423632234§));
               _loc5_ = §521423120472312060123423632234§.isCountable(§521423120472312060123423632234§.getNextModification(this.§521423100442310057123423632234§));
               this.showConfirmAlert(§521423120472312060123423632234§.getName(§521423120472312060123423632234§.getNextModification(this.§521423100442310057123423632234§)),_loc3_,_loc2_,false,_loc4_ == ItemCategoryEnum.ARMOR || _loc4_ == ItemCategoryEnum.WEAPON ? §521423120472312060123423632234§.getModificationIndex(§521423120472312060123423632234§.getNextModification(param1.item)) : -1,_loc5_ ? this.§521423119602311973123423632234§.§try true§.§521423112092311222123423632234§.value : -1,_loc6_);
            }
            else
            {
               _loc2_ = §521423120472312060123423632234§.getPreviewResource(this.§521423100442310057123423632234§).data;
               _loc4_ = §521423120472312060123423632234§.getCategory(this.§521423100442310057123423632234§);
               _loc5_ = §521423120472312060123423632234§.isCountable(this.§521423100442310057123423632234§);
               this.showConfirmAlert(§521423120472312060123423632234§.getName(this.§521423100442310057123423632234§),_loc3_,_loc2_,true,_loc4_ == ItemCategoryEnum.ARMOR || _loc4_ == ItemCategoryEnum.WEAPON ? §521423120472312060123423632234§.getModificationIndex(param1.item) : -1,_loc5_ ? this.§521423119602311973123423632234§.§try true§.§521423112092311222123423632234§.value : -1,_loc6_);
            }
         }
      }
      
      private function f47712b(param1:MouseEvent = null) : void
      {
         §default finally§.removeDialog(this.§5214232576232589123423632234§);
         this.§5214232576232589123423632234§ = null;
      }
      
      private function f4102c98(param1:GarageWindowEvent) : void
      {
         var _loc2_:§521423120252312038123423632234§ = param1.item;
         this.§521423119602311973123423632234§.showItemInfo(_loc2_,true);
         this.a2fdcd5a();
         if(this.selectedItem != _loc2_)
         {
            this.selectedItem = _loc2_;
         }
      }
      
      public function objectUnloaded() : void
      {
         if(this.§521423119602311973123423632234§ != null)
         {
            §get use final§.removeListener(this);
            this.b187bb50();
            this.e3c85376();
         }
         this.items = null;
         §521423120472312060123423632234§.reset();
         if(!§return set get§.isInBattle())
         {
            TextureResourcesRegistry.releaseTextureResources();
         }
      }
      
      private function e20765ca(param1:§521423120252312038123423632234§) : Boolean
      {
         if(!§continue for final§.inBattle())
         {
            return true;
         }
         if(!§return set get§.reArmorEnabled)
         {
            return false;
         }
         var _loc2_:§include switch var§ = §extends package use§.getDownTimer(param1);
         return _loc2_.§throw package return§() <= 0;
      }
      
      private function b55498d9(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.f47712b();
         if(§521423120472312060123423632234§.isKit(this.§521423100442310057123423632234§))
         {
            this.b7042e1a();
            if(!§521423120472312060123423632234§.canBuy(this.§521423100442310057123423632234§))
            {
               this.b63626b5(this.§521423100442310057123423632234§);
            }
            return;
         }
         if(§521423120472312060123423632234§.isModificationItem(this.§521423100442310057123423632234§) && §521423120472312060123423632234§.hasItem(this.§521423100442310057123423632234§))
         {
            this.d5329989();
         }
         else
         {
            _loc2_ = §521423120472312060123423632234§.getPrice(this.§521423100442310057123423632234§);
            if(§521423120472312060123423632234§.isCountable(this.§521423100442310057123423632234§))
            {
               _loc3_ = this.§521423119602311973123423632234§.§try true§.§521423112092311222123423632234§.value;
               _loc2_ *= _loc3_;
            }
            else
            {
               _loc3_ = 1;
            }
            §var var finally§.spend(_loc2_);
            if(§521423120472312060123423632234§.isPresent(this.§521423100442310057123423632234§))
            {
               §function switch continue§(this.§521423100442310057123423632234§.adapt(§function switch continue§)).confirmPresentPurchase(this.§521423100442310057123423632234§);
               return;
            }
            server.itemBought(this.§521423100442310057123423632234§.name,_loc3_,_loc2_);
            this.b305c52c(this.§521423100442310057123423632234§,_loc3_);
            this.§521423119602311973123423632234§.updateKitsContainsItem(this.§521423100442310057123423632234§);
         }
      }
      
      private function a2fdcd5a() : void
      {
         var _loc1_:int = 0;
         if(this.§521423119602311973123423632234§.§try true§.§super use break§.enabled && this.§521423119602311973123423632234§.§try true§.§super use break§.visible)
         {
            _loc1_ = this.§521423119602311973123423632234§.x + this.§521423119602311973123423632234§.§try true§.x;
            §521423124592312472123423632234§.setGarageBuyButtonTargetPoint(new Point(this.§521423119602311973123423632234§.§try true§.§super use break§.x + _loc1_,this.§521423119602311973123423632234§.§try true§.§super use break§.y + 75));
         }
         else
         {
            §521423124592312472123423632234§.setGarageBuyButtonTargetPoint(new Point(0,0));
         }
      }
      
      private function f44fa33f(param1:§521423120252312038123423632234§, param2:§521423120252312038123423632234§) : void
      {
         this.§521423119602311973123423632234§.addItemToDepot(param2);
         if(!§521423120472312060123423632234§.isMounted(param2))
         {
            this.mountItem(param2);
            server.itemMounted(param2.name);
         }
         this.§521423119602311973123423632234§.removeItemFromDepot(param1);
         this.§521423119602311973123423632234§.updateKitsContainsItem(param2);
      }
      
      private function e19d5669(param1:§521423120252312038123423632234§) : void
      {
         var _loc2_:§521423120252312038123423632234§ = null;
         var _loc3_:§5214233529233542123423632234§ = null;
         var _loc4_:Vector.<§521423120252312038123423632234§> = §521423120472312060123423632234§.getModifications(param1);
         for each(_loc2_ in _loc4_)
         {
            _loc3_ = §5214233529233542123423632234§(_loc2_.adapt(§5214233529233542123423632234§));
            if(_loc3_.isUpgrading())
            {
               _loc3_.getCountDownTimer().§521423129602312973123423632234§();
            }
         }
      }
      
      public function initMarket(param1:Vector.<§521423120252312038123423632234§>) : void
      {
         this.a6b6dc18(param1,"market");
         this.§521423119602311973123423632234§.initStore(param1);
         this.§521423119602311973123423632234§.addEventListener("GarageWindowEventStoreItemSelected",this.f4102c98);
         this.§521423119602311973123423632234§.addEventListener("GarageWindowEventBuyItem",this.a16d8ebc);
         this.§521423119602311973123423632234§.addEventListener("GarageWindowEventDeletePresent",getFunctionWrapper(this.b30f1ca8));
         this.b195622a();
      }
      
      private function d5329989() : void
      {
         var _loc1_:§521423120252312038123423632234§ = §521423120472312060123423632234§.getNextModification(this.§521423100442310057123423632234§);
         var _loc2_:§521423120252312038123423632234§ = §521423120472312060123423632234§.method_19(_loc1_);
         var _loc3_:int = §521423120472312060123423632234§.getPrice(_loc1_);
         §var var finally§.spend(§521423120472312060123423632234§.getPrice(_loc1_));
         server.itemBought(_loc2_.name,1,_loc3_);
         this.e19d5669(_loc1_);
         this.f44fa33f(_loc2_,_loc1_);
      }
      
      private function e6383474(param1:§521423120252312038123423632234§, param2:int, param3:Boolean) : void
      {
         var _loc5_:Number = NaN;
         var _loc4_:§521423120252312038123423632234§ = null;
         if(§521423120472312060123423632234§.canBuy(param1))
         {
            this.b305c52c(param1,param2,param3);
            this.mountItem(param1);
            server.itemMounted(param1.name);
         }
      }
      
      public function onResourceLoadingStart(param1:§include catch each§) : void
      {
      }
      
      private function b305c52c(param1:§521423120252312038123423632234§, param2:int, param3:Boolean = true) : void
      {
         var _loc5_:int = 0;
         var _loc4_:ItemCategoryEnum = §521423120472312060123423632234§.getCategory(param1);
         if(param1.hasModel(§catch§) && §521423120472312060123423632234§.getCategory(param1) == ItemCategoryEnum.PLUGIN)
         {
            §catch§(param1.adapt(§catch§)).startTiming(0);
         }
         if(_loc4_ != ItemCategoryEnum.INVENTORY)
         {
            if(§521423120472312060123423632234§.isModificationItem(param1))
            {
               this.§521423119602311973123423632234§.removeAllModifications(param1);
            }
            else
            {
               this.§521423119602311973123423632234§.removeItemFromStore(param1);
            }
            this.§521423119602311973123423632234§.addItemToDepot(param1);
         }
         else if(param1.name != "1000_scores_m0")
         {
            _loc5_ = §521423120472312060123423632234§.getCount(param1);
            if(param2 > 0)
            {
               §521423120472312060123423632234§.setCount(param1,_loc5_ + param2);
               this.§521423119602311973123423632234§.updateCount(param1);
            }
         }
         if(param3 && §521423120472312060123423632234§.isMountable(param1) && this.e20765ca(param1))
         {
            this.mountItem(param1);
            server.itemMounted(param1.name);
         }
      }
      
      private function b1913c31(param1:Event = null) : void
      {
         var _loc2_:Stage = display.stage;
         var _loc3_:int = Math.max(1000,_loc2_.stageWidth / Display.§521423132512313264123423632234§);
         this.§521423119602311973123423632234§.x = Math.round(_loc3_ / 3);
         this.§521423119602311973123423632234§.y = 60;
         this.§521423119602311973123423632234§.resize(Math.round(_loc3_ * 2 / 3),Math.max(display.stage.stageHeight / Display.§521423132512313264123423632234§ - 60,490));
      }
      
      private function b195622a() : void
      {
         var _loc1_:DisplayObjectContainer = display.systemLayer;
         display.mainContainer.blendMode = "layer";
         _loc1_.addChild(this.§521423119602311973123423632234§);
         this.b1913c31();
         this.setEvents();
      }
      
      public function onResourceLoadingComplete(param1:§include catch each§) : void
      {
      }
      
      public function temporaryItemTimeIsUp(param1:§521423120252312038123423632234§) : void
      {
         if(this.§521423119602311973123423632234§ != null)
         {
            this.§521423119602311973123423632234§.removeItemFromDepot(param1);
            if(§521423120472312060123423632234§.getPrice(param1) > 0 && §521423120472312060123423632234§.isBuyable(param1))
            {
               this.§521423119602311973123423632234§.addItemToMarket(param1);
            }
            else
            {
               this.§521423119602311973123423632234§.updateSelection();
            }
         }
      }
      
      private function e76f0887(param1:GarageWindowEvent) : void
      {
         var _loc2_:§521423120252312038123423632234§ = null;
         var _loc3_:§521423120252312038123423632234§ = param1.item;
         var _loc4_:ItemCategoryEnum = §521423120472312060123423632234§.getCategory(_loc3_);
         this.§function catch§ = _loc3_;
         if(_loc4_ == ItemCategoryEnum.WEAPON || _loc4_ == ItemCategoryEnum.ARMOR)
         {
            _loc2_ = §521423120472312060123423632234§.getNextModification(_loc3_);
            if(_loc2_ != null)
            {
               this.f5d601cd(_loc2_);
            }
         }
         this.§521423119602311973123423632234§.showItemInfo(_loc3_,false);
         this.a2fdcd5a();
         if(this.selectedItem != _loc3_)
         {
            this.selectedItem = _loc3_;
         }
      }
      
      public function onResourceLoadingError(param1:§include catch each§, param2:String) : void
      {
      }
      
      private function setEvents() : void
      {
         display.stage.addEventListener("resize",this.b1913c31);
         §52142329523308123423632234§.addEventListener("UserPropertiesServiceEvent.UPDATE_RANK",this.a43d8f3c);
      }
      
      private function a1737b1e() : void
      {
         display.stage.quality = "high";
         this.d4afcdb5();
         §get use final§.addListener(this);
      }
      
      private function getPrice(param1:§521423120252312038123423632234§) : int
      {
         var _loc2_:int = §521423120472312060123423632234§.getPrice(param1);
         if(§521423120472312060123423632234§.isCountable(param1))
         {
            _loc2_ *= this.§521423119602311973123423632234§.§try true§.§521423112092311222123423632234§.value;
         }
         return _loc2_;
      }
      
      public function showConfirmAlert(param1:String, param2:int, param3:BitmapData, param4:Boolean, param5:int, param6:int = -1, param7:Boolean = false) : void
      {
         this.§5214232576232589123423632234§ = new ConfirmAlert(param1,param2,param3,param5,param7 ? §5214236363236376123423632234§.getText("GARAGE_CONFIRM_ALERT_RENT_QUESTION_TEXT") : (param4 ? §5214236363236376123423632234§.getText("GARAGE_CONFIRM_ALERT_BUY_QEUSTION_TEXT") : §5214236363236376123423632234§.getText("GARAGE_CONFIRM_ALERT_UPGRADE_QEUSTION_TEXT")),param6,param7);
         §default finally§.addDialog(this.§5214232576232589123423632234§);
         this.§5214232576232589123423632234§.§5214238520238533123423632234§.addEventListener("click",this.b55498d9);
         this.§5214232576232589123423632234§.§521423113902311403123423632234§.addEventListener("click",this.f47712b);
      }
      
      public function showCategory(param1:ItemViewCategoryEnum) : void
      {
         this.§521423119602311973123423632234§.showCategory(param1);
      }
      
      private function b7042e1a() : void
      {
         var _loc2_:§521423120252312038123423632234§ = null;
         var _loc3_:§521423110672311080123423632234§ = §521423110672311080123423632234§(this.§521423100442310057123423632234§.adapt(§521423110672311080123423632234§));
         var _loc4_:int = _loc3_.getPrice();
         if(§var var finally§.crystal < _loc4_)
         {
            return;
         }
         §var var finally§.spend(_loc4_);
         server.kitBought(this.§521423100442310057123423632234§.name,_loc4_);
         for each(var _loc1_ in _loc3_.getItems())
         {
            _loc2_ = _loc1_.item;
            this.e6383474(_loc2_,_loc1_.count,_loc1_.mount);
            if(!§521423120472312060123423632234§.isCountable(_loc2_))
            {
               this.§521423119602311973123423632234§.updateKitsContainsItem(_loc2_);
            }
         }
         this.§521423119602311973123423632234§.showItemInCategory(this.§521423100442310057123423632234§);
      }
      
      public function select(param1:§521423120252312038123423632234§) : void
      {
         this.§521423119602311973123423632234§.showItemInCategory(param1);
      }
      
      public function initDepot(param1:Vector.<§521423120252312038123423632234§>) : void
      {
         this.a6b6dc18(param1,"depot");
         this.a1737b1e();
         this.§521423119602311973123423632234§.initDepot(param1);
         this.§521423119602311973123423632234§.addEventListener("GarageWindowEventWirehouseItemSelected",this.e76f0887);
         this.§521423119602311973123423632234§.addEventListener("GarageWindowEventSetupItem",this.d29ede1);
         this.§521423119602311973123423632234§.addEventListener("GarageWindowEventUpgradeItem",this.fc3948a);
      }
      
      public function reloadGarage(param1:String, param2:int) : void
      {
         §521423101112310124123423632234§.showLoaderWindow();
         §include switch var§.§5214234500234513123423632234§();
         §521423120472312060123423632234§.reset();
         §var var finally§.changeCrystals(param2 - §var var finally§.crystal);
         var _loc3_:Alert = new Alert();
         _loc3_.showAlert(param1,Vector.<String>([AlertAnswer.OK]));
         display.dialogsLayer.addChild(_loc3_);
         this.b187bb50();
      }
      
      private function b30f1ca8(param1:GarageWindowEvent) : void
      {
         var _loc2_:int = int(§52142351823531123423632234§(param1.item.adapt(§52142351823531123423632234§)).getConstructor().id);
         §521423121342312147123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§521423121342312147123423632234§)).removePresent(_loc2_);
      }
      
      private function b63626b5(param1:§521423120252312038123423632234§) : void
      {
         for each(var _loc2_ in this.§521423119602311973123423632234§.§false switch package§)
         {
            if(param1 == _loc2_.item)
            {
               _loc2_.removeListener();
            }
         }
      }
      
      private function a43d8f3c(param1:UserPropertiesServiceEvent) : void
      {
         var _loc2_:§521423120252312038123423632234§ = null;
         var _loc3_:Vector.<§521423120252312038123423632234§> = this.§521423119602311973123423632234§.itemsInStore.slice();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc2_ = _loc3_[_loc4_];
            this.§521423119602311973123423632234§.removeItemFromStore(_loc2_);
            this.§521423119602311973123423632234§.addItemToMarket(_loc2_);
            _loc4_++;
         }
         this.§521423119602311973123423632234§.updateStore();
      }
      
      public function initMounted(param1:Vector.<§521423120252312038123423632234§>) : void
      {
         var _loc2_:§521423120252312038123423632234§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = param1[_loc3_];
            §521423120472312060123423632234§.method_582(§521423120472312060123423632234§.getCategory(_loc2_));
            this.mountItem(_loc2_);
            _loc3_++;
         }
      }
      
      public function initPresents(param1:Vector.<§521423120252312038123423632234§>) : void
      {
         var _loc3_:Boolean = false;
         for each(var _loc2_ in param1)
         {
            §default catch case§(_loc2_.adapt(§default catch case§)).setCategory(ItemCategoryEnum.GIVEN_PRESENT);
            §for package finally§(_loc2_.adapt(§for package finally§)).setCategory(ItemViewCategoryEnum.GIVEN_PRESENTS);
            this.§521423119602311973123423632234§.addItemToDepot(_loc2_);
            _loc3_ = true;
         }
         this.§521423119602311973123423632234§.setCategoryButtonVisibility(ItemViewCategoryEnum.GIVEN_PRESENTS,_loc3_);
      }
      
      private function fc3948a(param1:GarageWindowEvent) : void
      {
         this.§521423100442310057123423632234§ = param1.item;
      }
      
      private function mountItem(param1:§521423120252312038123423632234§) : void
      {
         §521423120472312060123423632234§.mountItem(param1);
      }
      
      private function f5d601cd(param1:§521423120252312038123423632234§) : void
      {
         var _loc2_:§include catch with§ = §5214235968235981123423632234§(param1.adapt(§5214235968235981123423632234§)).getPreviewResource();
         var _loc3_:§include catch with§ = _loc2_;
         if((_loc3_.§else for include§ & 1) == 0)
         {
            _loc2_.§5214234169234182123423632234§(this);
         }
      }
      
      private function d29ede1(param1:GarageWindowEvent) : void
      {
         this.mountItem(this.§function catch§);
         server.itemMounted(this.§function catch§.name);
      }
      
      private function e3c85376() : void
      {
         display.stage.removeEventListener("resize",this.d647889f);
         §else var include§.hideHelp();
         §else var include§.unregisterHelper("GarageModel",700);
         this.§521423114292311442123423632234§ = null;
      }
      
      private function a6b6dc18(param1:Vector.<§521423120252312038123423632234§>, param2:String) : void
      {
         for each(var _loc3_ in param1)
         {
            if(_loc3_ == null)
            {
               throw new Error("Not all items have been loaded into the " + param2);
            }
         }
      }
   }
}

