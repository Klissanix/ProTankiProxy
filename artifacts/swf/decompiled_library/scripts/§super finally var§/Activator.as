package §super finally var§
{
   import §521423107642310777123423632234§.DelayMountCategoryModel;
   import §521423107942310807123423632234§.§521423110672311080123423632234§;
   import §521423107942310807123423632234§.GarageKitAdapt;
   import §521423107942310807123423632234§.GarageKitEvents;
   import §521423107942310807123423632234§.GarageKitModel;
   import §521423110462311059123423632234§.ItemActionPanelAdapt;
   import §521423110462311059123423632234§.ItemActionPanelEvents;
   import §521423110462311059123423632234§.§while catch throw§;
   import §521423114822311495123423632234§.§5214231204231217123423632234§;
   import §521423114822311495123423632234§.ItemPropertiesAdapt;
   import §521423114822311495123423632234§.ItemPropertiesEvents;
   import §521423114822311495123423632234§.ItemPropertiesModel;
   import §521423127152312728123423632234§.§5214235968235981123423632234§;
   import §521423127152312728123423632234§.IItemAdapt;
   import §521423127152312728123423632234§.IItemEvents;
   import §521423127152312728123423632234§.ItemModel;
   import §521423130732313086123423632234§.Item3DModel;
   import §5214231525231538123423632234§.§52142387523888123423632234§;
   import §5214231525231538123423632234§.BuyableModel;
   import §5214231525231538123423632234§.IBuyableAdapt;
   import §5214231525231538123423632234§.IBuyableEvents;
   import §5214231742231755123423632234§.§521423136452313658123423632234§;
   import §5214231742231755123423632234§.DiscountCollectorModel;
   import §5214231742231755123423632234§.DiscountModel;
   import §5214231742231755123423632234§.ICollectDiscountAdapt;
   import §5214231742231755123423632234§.ICollectDiscountEvents;
   import §5214231742231755123423632234§.IDiscountAdapt;
   import §5214231742231755123423632234§.IDiscountEvents;
   import §5214231742231755123423632234§.§false const const§;
   import §5214232250232263123423632234§.§try set set§;
   import §5214232440232453123423632234§.ItemFittingAdapt;
   import §5214232440232453123423632234§.ItemFittingEvents;
   import §5214232440232453123423632234§.ItemFittingModel;
   import §5214232440232453123423632234§.§use set while§;
   import §5214233052233065123423632234§.KitInfoTable;
   import §5214233052233065123423632234§.KitItemInfoRow;
   import §5214233085233098123423632234§.PresentPrepareWindow;
   import §5214234748234761123423632234§.§521423121342312147123423632234§;
   import §5214234748234761123423632234§.PresentGivenAdapt;
   import §5214234748234761123423632234§.PresentGivenEvents;
   import §5214234748234761123423632234§.PresentGivenModel;
   import §5214234748234761123423632234§.PresentPurchaseAdapt;
   import §5214234748234761123423632234§.PresentPurchaseEvents;
   import §5214234748234761123423632234§.PresentPurchaseModel;
   import §5214234748234761123423632234§.§function switch continue§;
   import §5214234891234904123423632234§.CrystalButton;
   import §5214234891234904123423632234§.GarageButton;
   import §5214235891235904123423632234§.ItemCategoryButton;
   import §52142370623719123423632234§.§52142351823531123423632234§;
   import §52142370623719123423632234§.PresentItemAdapt;
   import §52142370623719123423632234§.PresentItemEvents;
   import §52142370623719123423632234§.PresentItemModel;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.gui.ConfirmAlert;
   import alternativa.tanks.gui.GarageWindow;
   import alternativa.tanks.gui.ItemInfoPanel;
   import alternativa.tanks.gui.PresentInfoPanel;
   import alternativa.tanks.loader.ILoaderWindowService;
   import alternativa.tanks.model.garage.§5214233988234001123423632234§;
   import alternativa.tanks.model.garage.GarageModel;
   import alternativa.tanks.model.garage.IPurchaseConfirmAdapt;
   import alternativa.tanks.model.garage.IPurchaseConfirmEvents;
   import alternativa.tanks.model.item.upgradable.§5214233529233542123423632234§;
   import alternativa.tanks.model.item.upgradable.UpgradableItemAdapt;
   import alternativa.tanks.model.item.upgradable.UpgradableItemEvents;
   import alternativa.tanks.model.item.upgradable.UpgradableItemPropertyValue;
   import alternativa.tanks.model.item.upgradable.UpgradableParamsModel;
   import alternativa.tanks.model.useremailandpassword.PasswordService;
   import alternativa.tanks.service.achievement.IAchievementService;
   import alternativa.tanks.service.delaymountcategory.DelayMountCategoryService;
   import alternativa.tanks.service.delaymountcategory.IDelayMountCategoryService;
   import alternativa.tanks.service.garage.GarageService;
   import alternativa.tanks.service.item.ItemService;
   import alternativa.tanks.service.item.ItemServiceImpl;
   import alternativa.tanks.service.item3d.ITank3DViewer;
   import alternativa.tanks.service.itempropertyparams.ItemPropertyParamsService;
   import alternativa.tanks.service.itempropertyparams.ItemPropertyParamsServiceImpl;
   import alternativa.tanks.service.money.IMoneyService;
   import alternativa.tanks.service.notificationcategories.INotificationGarageCategoriesService;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.temporaryitem.ITemporaryItemService;
   import alternativa.tanks.service.temporaryitem.TemporaryItemService;
   import alternativa.tanks.service.temporaryitemnotify.ITemporaryItemNotifyService;
   import §catch for while§.IItemCategoryAdapt;
   import §catch for while§.IItemCategoryEvents;
   import §catch for while§.IItemViewCategoryAdapt;
   import §catch for while§.IItemViewCategoryEvents;
   import §catch for while§.ItemCategoryModel;
   import §catch for while§.ItemViewCategoryModel;
   import §catch for while§.§default catch case§;
   import §catch for while§.§for package finally§;
   import §continue set while§.SingleActionPanel;
   import §dynamic for switch§.§521423107332310746123423632234§;
   import §dynamic for switch§.IModificationAdapt;
   import §dynamic for switch§.IModificationEvents;
   import §dynamic for switch§.ModificationModel;
   import §for switch catch§.FirstMoneyHelper;
   import §get switch catch§.ITemporaryItemAdapt;
   import §get switch catch§.ITemporaryItemEvents;
   import §get switch catch§.TemporaryItemModel;
   import §get switch catch§.§catch§;
   import §include const override§.CountableItemModel;
   import §include const override§.ICountableItemAdapt;
   import §include const override§.ICountableItemEvents;
   import §include const override§.§super set do§;
   import §native package final§.§throw var static§;
   import platform.client.fp10.core.registry.ModelRegistry;
   import projects.tanks.clients.flash.commons.services.validate.IValidateService;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.uidcheck.UidCheckService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.helper.IHelpService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import §return package finally§.GarageListController;
   import §set switch default§.RenameForm;
   import §set switch default§.RenameModel;
   import §throw package for§.IRentAdapt;
   import §throw package for§.IRentEvents;
   import §throw package for§.RentModel;
   import §throw package for§.§return var function§;
   import §with const in§.§5214234658234671123423632234§;
   import §with const in§.GroupedItemModel;
   import §with const in§.IGroupedItemAdapt;
   import §with const in§.IGroupedItemEvents;
   
   public class Activator implements §throw var static§
   {
      
      public function Activator()
      {
         super();
      }
      
      public function stop(param1:OSGi) : void
      {
      }
      
      public function start(param1:OSGi) : void
      {
         var modelRegistry:ModelRegistry;
         var osgi:OSGi = param1;
         osgi.injectService(ItemService,function(param1:Object):void
         {
            PresentPurchaseModel.§521423120472312060123423632234§ = ItemService(param1);
         },function():ItemService
         {
            return PresentPurchaseModel.§521423120472312060123423632234§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            GarageModel.display = IDisplay(param1);
         },function():IDisplay
         {
            return GarageModel.display;
         });
         osgi.injectService(IHelpService,function(param1:Object):void
         {
            GarageModel.§else var include§ = IHelpService(param1);
         },function():IHelpService
         {
            return GarageModel.§else var include§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            GarageModel.§52142329523308123423632234§ = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return GarageModel.§52142329523308123423632234§;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            GarageModel.§521423120472312060123423632234§ = ItemService(param1);
         },function():ItemService
         {
            return GarageModel.§521423120472312060123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            GarageModel.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return GarageModel.§5214236363236376123423632234§;
         });
         osgi.injectService(ITemporaryItemNotifyService,function(param1:Object):void
         {
            GarageModel.§get use final§ = ITemporaryItemNotifyService(param1);
         },function():ITemporaryItemNotifyService
         {
            return GarageModel.§get use final§;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            GarageModel.§continue for final§ = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return GarageModel.§continue for final§;
         });
         osgi.injectService(ITank3DViewer,function(param1:Object):void
         {
            GarageModel.§52142339723410123423632234§ = ITank3DViewer(param1);
         },function():ITank3DViewer
         {
            return GarageModel.§52142339723410123423632234§;
         });
         osgi.injectService(IAchievementService,function(param1:Object):void
         {
            GarageModel.§521423124592312472123423632234§ = IAchievementService(param1);
         },function():IAchievementService
         {
            return GarageModel.§521423124592312472123423632234§;
         });
         osgi.injectService(IMoneyService,function(param1:Object):void
         {
            GarageModel.§var var finally§ = IMoneyService(param1);
         },function():IMoneyService
         {
            return GarageModel.§var var finally§;
         });
         osgi.injectService(ILoaderWindowService,function(param1:Object):void
         {
            GarageModel.§521423101112310124123423632234§ = ILoaderWindowService(param1);
         },function():ILoaderWindowService
         {
            return GarageModel.§521423101112310124123423632234§;
         });
         osgi.injectService(GarageService,function(param1:Object):void
         {
            GarageModel.§finally switch default§ = GarageService(param1);
         },function():GarageService
         {
            return GarageModel.§finally switch default§;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            GarageModel.§return set get§ = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return GarageModel.§return set get§;
         });
         osgi.injectService(IDelayMountCategoryService,function(param1:Object):void
         {
            GarageModel.§extends package use§ = IDelayMountCategoryService(param1);
         },function():IDelayMountCategoryService
         {
            return GarageModel.§extends package use§;
         });
         osgi.injectService(IDialogsService,function(param1:Object):void
         {
            GarageModel.§default finally§ = IDialogsService(param1);
         },function():IDialogsService
         {
            return GarageModel.§default finally§;
         });
         osgi.injectService(GarageService,function(param1:Object):void
         {
            DiscountModel.§finally switch default§ = GarageService(param1);
         },function():GarageService
         {
            return DiscountModel.§finally switch default§;
         });
         osgi.injectService(ModelRegistry,function(param1:Object):void
         {
            DiscountCollectorModel.modelRegistry = ModelRegistry(param1);
         },function():ModelRegistry
         {
            return DiscountCollectorModel.modelRegistry;
         });
         osgi.injectService(ITemporaryItemService,function(param1:Object):void
         {
            TemporaryItemModel.§5214232011232024123423632234§ = ITemporaryItemService(param1);
         },function():ITemporaryItemService
         {
            return TemporaryItemModel.§5214232011232024123423632234§;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            GarageKitModel.§521423120472312060123423632234§ = ItemService(param1);
         },function():ItemService
         {
            return GarageKitModel.§521423120472312060123423632234§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            GarageKitModel.§true switch package§ = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return GarageKitModel.§true switch package§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            RenameModel.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return RenameModel.§5214236363236376123423632234§;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            RenameModel.§break use do§ = IAlertService(param1);
         },function():IAlertService
         {
            return RenameModel.§break use do§;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            RenameModel.§if catch include§ = IStorageService(param1);
         },function():IStorageService
         {
            return RenameModel.§if catch include§;
         });
         osgi.injectService(IMoneyService,function(param1:Object):void
         {
            RenameModel.§var var finally§ = IMoneyService(param1);
         },function():IMoneyService
         {
            return RenameModel.§var var finally§;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            RenameModel.§521423120472312060123423632234§ = ItemService(param1);
         },function():ItemService
         {
            return RenameModel.§521423120472312060123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            RenameForm.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return RenameForm.§5214236363236376123423632234§;
         });
         osgi.injectService(UidCheckService,function(param1:Object):void
         {
            RenameForm.§5214231693231706123423632234§ = UidCheckService(param1);
         },function():UidCheckService
         {
            return RenameForm.§5214231693231706123423632234§;
         });
         osgi.injectService(PasswordService,function(param1:Object):void
         {
            RenameForm.§class for finally§ = PasswordService(param1);
         },function():PasswordService
         {
            return RenameForm.§class for finally§;
         });
         osgi.injectService(IValidateService,function(param1:Object):void
         {
            RenameForm.§52142345123464123423632234§ = IValidateService(param1);
         },function():IValidateService
         {
            return RenameForm.§52142345123464123423632234§;
         });
         osgi.injectService(IDelayMountCategoryService,function(param1:Object):void
         {
            DelayMountCategoryModel.§extends package use§ = IDelayMountCategoryService(param1);
         },function():IDelayMountCategoryService
         {
            return DelayMountCategoryModel.§extends package use§;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            DelayMountCategoryModel.§continue for final§ = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return DelayMountCategoryModel.§continue for final§;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            DelayMountCategoryModel.§return set get§ = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return DelayMountCategoryModel.§return set get§;
         });
         osgi.injectService(ItemPropertyParamsService,function(param1:Object):void
         {
            UpgradableItemPropertyValue.§native throw§ = ItemPropertyParamsService(param1);
         },function():ItemPropertyParamsService
         {
            return UpgradableItemPropertyValue.§native throw§;
         });
         osgi.injectService(ItemPropertyParamsService,function(param1:Object):void
         {
            UpgradableParamsModel.§521423131892313202123423632234§ = ItemPropertyParamsService(param1);
         },function():ItemPropertyParamsService
         {
            return UpgradableParamsModel.§521423131892313202123423632234§;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            UpgradableParamsModel.§521423120472312060123423632234§ = ItemService(param1);
         },function():ItemService
         {
            return UpgradableParamsModel.§521423120472312060123423632234§;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            Item3DModel.§521423120472312060123423632234§ = ItemService(param1);
         },function():ItemService
         {
            return Item3DModel.§521423120472312060123423632234§;
         });
         osgi.injectService(ITank3DViewer,function(param1:Object):void
         {
            Item3DModel.§52142339723410123423632234§ = ITank3DViewer(param1);
         },function():ITank3DViewer
         {
            return Item3DModel.§52142339723410123423632234§;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            GarageListController.§521423120472312060123423632234§ = ItemService(param1);
         },function():ItemService
         {
            return GarageListController.§521423120472312060123423632234§;
         });
         osgi.injectService(PremiumService,function(param1:Object):void
         {
            GarageListController.§with var try§ = PremiumService(param1);
         },function():PremiumService
         {
            return GarageListController.§with var try§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            GarageListController.§52142329523308123423632234§ = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return GarageListController.§52142329523308123423632234§;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            GarageListController.§if catch include§ = IStorageService(param1);
         },function():IStorageService
         {
            return GarageListController.§if catch include§;
         });
         osgi.injectService(INotificationGarageCategoriesService,function(param1:Object):void
         {
            GarageListController.§5214236480236493123423632234§ = INotificationGarageCategoriesService(param1);
         },function():INotificationGarageCategoriesService
         {
            return GarageListController.§5214236480236493123423632234§;
         });
         osgi.injectService(GarageService,function(param1:Object):void
         {
            GarageListController.§finally switch default§ = GarageService(param1);
         },function():GarageService
         {
            return GarageListController.§finally switch default§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §try set set§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §try set set§.§5214236363236376123423632234§;
         });
         osgi.injectService(ISettingsService,function(param1:Object):void
         {
            §try set set§.§5214232551232564123423632234§ = ISettingsService(param1);
         },function():ISettingsService
         {
            return §try set set§.§5214232551232564123423632234§;
         });
         osgi.injectService(IMoneyService,function(param1:Object):void
         {
            CrystalButton.§var var finally§ = IMoneyService(param1);
         },function():IMoneyService
         {
            return CrystalButton.§var var finally§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            GarageButton.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return GarageButton.§5214236363236376123423632234§;
         });
         osgi.injectService(IMoneyService,function(param1:Object):void
         {
            GarageButton.§var var finally§ = IMoneyService(param1);
         },function():IMoneyService
         {
            return GarageButton.§var var finally§;
         });
         osgi.injectService(PremiumService,function(param1:Object):void
         {
            GarageButton.§with var try§ = PremiumService(param1);
         },function():PremiumService
         {
            return GarageButton.§with var try§;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            KitItemInfoRow.§521423120472312060123423632234§ = ItemService(param1);
         },function():ItemService
         {
            return KitItemInfoRow.§521423120472312060123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            KitItemInfoRow.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return KitItemInfoRow.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            KitInfoTable.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return KitInfoTable.§5214236363236376123423632234§;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            KitInfoTable.§521423120472312060123423632234§ = ItemService(param1);
         },function():ItemService
         {
            return KitInfoTable.§521423120472312060123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            GarageWindow.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return GarageWindow.§5214236363236376123423632234§;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            GarageWindow.§521423120472312060123423632234§ = ItemService(param1);
         },function():ItemService
         {
            return GarageWindow.§521423120472312060123423632234§;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            GarageWindow.§break use do§ = IAlertService(param1);
         },function():IAlertService
         {
            return GarageWindow.§break use do§;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            GarageWindow.§return set get§ = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return GarageWindow.§return set get§;
         });
         osgi.injectService(ITank3DViewer,function(param1:Object):void
         {
            GarageWindow.§52142339723410123423632234§ = ITank3DViewer(param1);
         },function():ITank3DViewer
         {
            return GarageWindow.§52142339723410123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            ConfirmAlert.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return ConfirmAlert.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            SingleActionPanel.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return SingleActionPanel.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            PresentInfoPanel.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return PresentInfoPanel.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            PresentPrepareWindow.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return PresentPrepareWindow.§5214236363236376123423632234§;
         });
         osgi.injectService(UidCheckService,function(param1:Object):void
         {
            PresentPrepareWindow.§5214235523235536123423632234§ = UidCheckService(param1);
         },function():UidCheckService
         {
            return PresentPrepareWindow.§5214235523235536123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            ItemInfoPanel.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return ItemInfoPanel.§5214236363236376123423632234§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            ItemInfoPanel.§52142329523308123423632234§ = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return ItemInfoPanel.§52142329523308123423632234§;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            ItemInfoPanel.§521423120472312060123423632234§ = ItemService(param1);
         },function():ItemService
         {
            return ItemInfoPanel.§521423120472312060123423632234§;
         });
         osgi.injectService(IMoneyService,function(param1:Object):void
         {
            ItemInfoPanel.§var var finally§ = IMoneyService(param1);
         },function():IMoneyService
         {
            return ItemInfoPanel.§var var finally§;
         });
         osgi.injectService(ItemPropertyParamsService,function(param1:Object):void
         {
            ItemInfoPanel.§521423131892313202123423632234§ = ItemPropertyParamsService(param1);
         },function():ItemPropertyParamsService
         {
            return ItemInfoPanel.§521423131892313202123423632234§;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            ItemInfoPanel.§continue for final§ = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return ItemInfoPanel.§continue for final§;
         });
         osgi.injectService(ITank3DViewer,function(param1:Object):void
         {
            ItemInfoPanel.§5214233683233696123423632234§ = ITank3DViewer(param1);
         },function():ITank3DViewer
         {
            return ItemInfoPanel.§5214233683233696123423632234§;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            ItemInfoPanel.§return set get§ = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return ItemInfoPanel.§return set get§;
         });
         osgi.injectService(IDelayMountCategoryService,function(param1:Object):void
         {
            ItemInfoPanel.§extends package use§ = IDelayMountCategoryService(param1);
         },function():IDelayMountCategoryService
         {
            return ItemInfoPanel.§extends package use§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            ItemCategoryButton.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return ItemCategoryButton.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            ItemPropertyParamsServiceImpl.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return ItemPropertyParamsServiceImpl.§5214236363236376123423632234§;
         });
         osgi.injectService(IClientLog,function(param1:Object):void
         {
            ItemPropertyParamsServiceImpl.§get set with§ = IClientLog(param1);
         },function():IClientLog
         {
            return ItemPropertyParamsServiceImpl.§get set with§;
         });
         osgi.injectService(ITemporaryItemNotifyService,function(param1:Object):void
         {
            TemporaryItemService.§get use final§ = ITemporaryItemNotifyService(param1);
         },function():ITemporaryItemNotifyService
         {
            return TemporaryItemService.§get use final§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            ItemServiceImpl.§true switch package§ = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return ItemServiceImpl.§true switch package§;
         });
         osgi.injectService(GarageService,function(param1:Object):void
         {
            ItemServiceImpl.§finally switch default§ = GarageService(param1);
         },function():GarageService
         {
            return ItemServiceImpl.§finally switch default§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            ItemServiceImpl.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return ItemServiceImpl.§5214236363236376123423632234§;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            DelayMountCategoryService.§521423120472312060123423632234§ = ItemService(param1);
         },function():ItemService
         {
            return DelayMountCategoryService.§521423120472312060123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            FirstMoneyHelper.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return FirstMoneyHelper.§5214236363236376123423632234§;
         });
         modelRegistry = osgi.getService(ModelRegistry) as ModelRegistry;
         modelRegistry.registerAdapt(§function switch continue§,PresentPurchaseAdapt);
         modelRegistry.registerEvents(§function switch continue§,PresentPurchaseEvents);
         modelRegistry.registerAdapt(§521423121342312147123423632234§,PresentGivenAdapt);
         modelRegistry.registerEvents(§521423121342312147123423632234§,PresentGivenEvents);
         modelRegistry.registerAdapt(§5214233988234001123423632234§,IPurchaseConfirmAdapt);
         modelRegistry.registerEvents(§5214233988234001123423632234§,IPurchaseConfirmEvents);
         modelRegistry.registerAdapt(§52142387523888123423632234§,IBuyableAdapt);
         modelRegistry.registerEvents(§52142387523888123423632234§,IBuyableEvents);
         modelRegistry.registerAdapt(§5214231204231217123423632234§,ItemPropertiesAdapt);
         modelRegistry.registerEvents(§5214231204231217123423632234§,ItemPropertiesEvents);
         modelRegistry.registerAdapt(§while catch throw§,ItemActionPanelAdapt);
         modelRegistry.registerEvents(§while catch throw§,ItemActionPanelEvents);
         modelRegistry.registerAdapt(§521423136452313658123423632234§,IDiscountAdapt);
         modelRegistry.registerEvents(§521423136452313658123423632234§,IDiscountEvents);
         modelRegistry.registerAdapt(§false const const§,ICollectDiscountAdapt);
         modelRegistry.registerEvents(§false const const§,ICollectDiscountEvents);
         modelRegistry.registerAdapt(§catch§,ITemporaryItemAdapt);
         modelRegistry.registerEvents(§catch§,ITemporaryItemEvents);
         modelRegistry.registerAdapt(§521423110672311080123423632234§,GarageKitAdapt);
         modelRegistry.registerEvents(§521423110672311080123423632234§,GarageKitEvents);
         modelRegistry.registerAdapt(§super set do§,ICountableItemAdapt);
         modelRegistry.registerEvents(§super set do§,ICountableItemEvents);
         modelRegistry.registerAdapt(§return var function§,IRentAdapt);
         modelRegistry.registerEvents(§return var function§,IRentEvents);
         modelRegistry.registerAdapt(§5214235968235981123423632234§,IItemAdapt);
         modelRegistry.registerEvents(§5214235968235981123423632234§,IItemEvents);
         modelRegistry.registerAdapt(§use set while§,ItemFittingAdapt);
         modelRegistry.registerEvents(§use set while§,ItemFittingEvents);
         modelRegistry.registerAdapt(§521423107332310746123423632234§,IModificationAdapt);
         modelRegistry.registerEvents(§521423107332310746123423632234§,IModificationEvents);
         modelRegistry.registerAdapt(§52142351823531123423632234§,PresentItemAdapt);
         modelRegistry.registerEvents(§52142351823531123423632234§,PresentItemEvents);
         modelRegistry.registerAdapt(§5214234658234671123423632234§,IGroupedItemAdapt);
         modelRegistry.registerEvents(§5214234658234671123423632234§,IGroupedItemEvents);
         modelRegistry.registerAdapt(§5214233529233542123423632234§,UpgradableItemAdapt);
         modelRegistry.registerEvents(§5214233529233542123423632234§,UpgradableItemEvents);
         modelRegistry.registerAdapt(§for package finally§,IItemViewCategoryAdapt);
         modelRegistry.registerEvents(§for package finally§,IItemViewCategoryEvents);
         modelRegistry.registerAdapt(§default catch case§,IItemCategoryAdapt);
         modelRegistry.registerEvents(§default catch case§,IItemCategoryEvents);
         modelRegistry.add(new PresentGivenModel());
         modelRegistry.add(new PresentPurchaseModel());
         modelRegistry.add(new GarageModel());
         modelRegistry.add(new BuyableModel());
         modelRegistry.add(new ItemPropertiesModel());
         modelRegistry.add(new DiscountModel());
         modelRegistry.add(new DiscountCollectorModel());
         modelRegistry.add(new TemporaryItemModel());
         modelRegistry.add(new GarageKitModel());
         modelRegistry.add(new CountableItemModel());
         modelRegistry.add(new RentModel());
         modelRegistry.add(new ItemModel());
         modelRegistry.add(new RenameModel());
         modelRegistry.add(new ItemFittingModel());
         modelRegistry.add(new ModificationModel());
         modelRegistry.add(new PresentItemModel());
         modelRegistry.add(new GroupedItemModel());
         modelRegistry.add(new DelayMountCategoryModel());
         modelRegistry.add(new UpgradableParamsModel());
         modelRegistry.add(new ItemCategoryModel());
         modelRegistry.add(new ItemViewCategoryModel());
         modelRegistry.add(new Item3DModel());
      }
   }
}

