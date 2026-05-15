package §default var use§
{
   import §521423100272310040123423632234§.§5214236663236676123423632234§;
   import §521423100272310040123423632234§.IProBattleAdapt;
   import §521423100272310040123423632234§.IProBattleEvents;
   import §521423100272310040123423632234§.ProBattleInfoModel;
   import §521423103152310328123423632234§.BattleDMItemModel;
   import §521423103152310328123423632234§.IBattleDMItemAdapt;
   import §521423103152310328123423632234§.IBattleDMItemEvents;
   import §521423103152310328123423632234§.§static switch break§;
   import §5214233083233096123423632234§.BattleListController;
   import §5214234955234968123423632234§.BattleDmInfoModel;
   import §5214239374239387123423632234§.IClanInfoAdapt;
   import §5214239374239387123423632234§.IClanInfoEvents;
   import §5214239374239387123423632234§.MapClanInfoModel;
   import §5214239374239387123423632234§.§null override§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.tanks.model.battleselect.BattleSelectModel;
   import alternativa.tanks.model.info.§5214234313234326123423632234§;
   import alternativa.tanks.model.info.BattleInfoModel;
   import alternativa.tanks.model.info.IBattleInfoAdapt;
   import alternativa.tanks.model.info.IBattleInfoEvents;
   import alternativa.tanks.model.item.BattleItemAdapt;
   import alternativa.tanks.model.item.BattleItemEvents;
   import alternativa.tanks.model.item.BattleItemModel;
   import alternativa.tanks.model.item.IBattleItemAdapt;
   import alternativa.tanks.model.item.IBattleItemEvents;
   import alternativa.tanks.model.item.§include set throw§;
   import alternativa.tanks.model.item.§with package function§;
   import alternativa.tanks.service.achievement.IAchievementService;
   import alternativa.tanks.service.battle.BattleFriendNotifier;
   import alternativa.tanks.service.battle.IBattleUserInfoService;
   import alternativa.tanks.service.battlecreate.IBattleCreateFormService;
   import alternativa.tanks.service.battleinfo.BattleInfoFormService;
   import alternativa.tanks.service.battleinfo.IBattleInfoFormService;
   import alternativa.tanks.service.battlelist.BattleListFormService;
   import alternativa.tanks.service.battlelist.IBattleListFormService;
   import alternativa.tanks.service.money.IMoneyService;
   import §do catch var§.§5214231736231749123423632234§;
   import §do catch var§.§5214232866232879123423632234§;
   import §extends use§.§5214232535232548123423632234§;
   import §extends use§.§case set do§;
   import §extends use§.§in package function§;
   import §final for if§.§521423137772313790123423632234§;
   import §final for if§.§5214234809234822123423632234§;
   import §final var if§.BattleTeamInfoModel;
   import §function catch if§.CreateBattleFormController;
   import §get const continue§.§5214233743233756123423632234§;
   import §if var else§.§521423117842311797123423632234§;
   import §if var else§.IMapInfoAdapt;
   import §if var else§.IMapInfoEvents;
   import §if var else§.MapInfoModel;
   import §import use import§.§5214236237236250123423632234§;
   import §native finally catch§.§521423101562310169123423632234§;
   import §native finally catch§.§521423118512311864123423632234§;
   import §native package final§.§throw var static§;
   import platform.client.fp10.core.registry.ModelRegistry;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.helper.IHelpService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.BattleFormatUtil;
   import scpacker.networking.Network;
   import §throw switch catch§.§52142320023213123423632234§;
   import §use const§.BattleTeamInfoAdapt;
   import §use const§.BattleTeamInfoEvents;
   import §use const§.BattleTeamItemModel;
   import §use const§.§implements package override§;
   import §var for throw§.BattleCreateModel;
   
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
         osgi.injectService(IBattleInfoFormService,function(param1:Object):void
         {
            BattleListController.§while set function§ = IBattleInfoFormService(param1);
         },function():IBattleInfoFormService
         {
            return BattleListController.§while set function§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            BattleListController.§52142329523308123423632234§ = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return BattleListController.§52142329523308123423632234§;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            BattleListController.§if catch include§ = IStorageService(param1);
         },function():IStorageService
         {
            return BattleListController.§if catch include§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            BattleListController.display = IDisplay(param1);
         },function():IDisplay
         {
            return BattleListController.display;
         });
         osgi.injectService(LogService,function(param1:Object):void
         {
            BattleListController.§5214234621234634123423632234§ = LogService(param1);
         },function():LogService
         {
            return BattleListController.§5214234621234634123423632234§;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            BattleListController.§continue for final§ = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return BattleListController.§continue for final§;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            CreateBattleFormController.§if catch include§ = IStorageService(param1);
         },function():IStorageService
         {
            return CreateBattleFormController.§if catch include§;
         });
         osgi.injectService(IAchievementService,function(param1:Object):void
         {
            CreateBattleFormController.§521423124592312472123423632234§ = IAchievementService(param1);
         },function():IAchievementService
         {
            return CreateBattleFormController.§521423124592312472123423632234§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            CreateBattleFormController.§52142329523308123423632234§ = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return CreateBattleFormController.§52142329523308123423632234§;
         });
         osgi.injectService(BattleFormatUtil,function(param1:Object):void
         {
            CreateBattleFormController.§5214239416239429123423632234§ = BattleFormatUtil(param1);
         },function():BattleFormatUtil
         {
            return CreateBattleFormController.§5214239416239429123423632234§;
         });
         osgi.injectService(IMoneyService,function(param1:Object):void
         {
            §5214231736231749123423632234§.§var var finally§ = IMoneyService(param1);
         },function():IMoneyService
         {
            return §5214231736231749123423632234§.§var var finally§;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            §5214231736231749123423632234§.§5214235632235645123423632234§ = IAlertService(param1);
         },function():IAlertService
         {
            return §5214231736231749123423632234§.§5214235632235645123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §5214231736231749123423632234§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §5214231736231749123423632234§.§5214236363236376123423632234§;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            §5214231736231749123423632234§.§continue for final§ = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return §5214231736231749123423632234§.§continue for final§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            §5214231736231749123423632234§.§52142329523308123423632234§ = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return §5214231736231749123423632234§.§52142329523308123423632234§;
         });
         osgi.injectService(IMoneyService,function(param1:Object):void
         {
            §5214232866232879123423632234§.§var var finally§ = IMoneyService(param1);
         },function():IMoneyService
         {
            return §5214232866232879123423632234§.§var var finally§;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            §5214232866232879123423632234§.§5214235632235645123423632234§ = IAlertService(param1);
         },function():IAlertService
         {
            return §5214232866232879123423632234§.§5214235632235645123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §5214232866232879123423632234§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §5214232866232879123423632234§.§5214236363236376123423632234§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            §5214232866232879123423632234§.§52142329523308123423632234§ = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return §5214232866232879123423632234§.§52142329523308123423632234§;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            §5214232866232879123423632234§.§continue for final§ = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return §5214232866232879123423632234§.§continue for final§;
         });
         osgi.injectService(IBattleInfoFormService,function(param1:Object):void
         {
            BattleInfoModel.§while set function§ = IBattleInfoFormService(param1);
         },function():IBattleInfoFormService
         {
            return BattleInfoModel.§while set function§;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            BattleInfoModel.§5214235632235645123423632234§ = IAlertService(param1);
         },function():IAlertService
         {
            return BattleInfoModel.§5214235632235645123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            BattleInfoModel.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return BattleInfoModel.§5214236363236376123423632234§;
         });
         osgi.injectService(IBattleInfoFormService,function(param1:Object):void
         {
            BattleDmInfoModel.§while set function§ = IBattleInfoFormService(param1);
         },function():IBattleInfoFormService
         {
            return BattleDmInfoModel.§while set function§;
         });
         osgi.injectService(BattleFormatUtil,function(param1:Object):void
         {
            BattleDmInfoModel.§5214239416239429123423632234§ = BattleFormatUtil(param1);
         },function():BattleFormatUtil
         {
            return BattleDmInfoModel.§5214239416239429123423632234§;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            BattleDmInfoModel.§break use do§ = IAlertService(param1);
         },function():IAlertService
         {
            return BattleDmInfoModel.§break use do§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            BattleDmInfoModel.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return BattleDmInfoModel.§5214236363236376123423632234§;
         });
         osgi.injectService(IBattleInfoFormService,function(param1:Object):void
         {
            ProBattleInfoModel.§while set function§ = IBattleInfoFormService(param1);
         },function():IBattleInfoFormService
         {
            return ProBattleInfoModel.§while set function§;
         });
         osgi.injectService(IBattleInfoFormService,function(param1:Object):void
         {
            BattleTeamInfoModel.§while set function§ = IBattleInfoFormService(param1);
         },function():IBattleInfoFormService
         {
            return BattleTeamInfoModel.§while set function§;
         });
         osgi.injectService(BattleFormatUtil,function(param1:Object):void
         {
            BattleTeamInfoModel.§5214239416239429123423632234§ = BattleFormatUtil(param1);
         },function():BattleFormatUtil
         {
            return BattleTeamInfoModel.§5214239416239429123423632234§;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            BattleTeamInfoModel.§break use do§ = IAlertService(param1);
         },function():IAlertService
         {
            return BattleTeamInfoModel.§break use do§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            BattleTeamInfoModel.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return BattleTeamInfoModel.§5214236363236376123423632234§;
         });
         osgi.injectService(IBattleListFormService,function(param1:Object):void
         {
            BattleDMItemModel.§5214233475233488123423632234§ = IBattleListFormService(param1);
         },function():IBattleListFormService
         {
            return BattleDMItemModel.§5214233475233488123423632234§;
         });
         osgi.injectService(IFriendInfoService,function(param1:Object):void
         {
            BattleDMItemModel.§5214237545237558123423632234§ = IFriendInfoService(param1);
         },function():IFriendInfoService
         {
            return BattleDMItemModel.§5214237545237558123423632234§;
         });
         osgi.injectService(IBattleUserInfoService,function(param1:Object):void
         {
            BattleDMItemModel.battleUserInfoService = IBattleUserInfoService(param1);
         },function():IBattleUserInfoService
         {
            return BattleDMItemModel.battleUserInfoService;
         });
         osgi.injectService(IBattleListFormService,function(param1:Object):void
         {
            BattleItemModel.§5214233475233488123423632234§ = IBattleListFormService(param1);
         },function():IBattleListFormService
         {
            return BattleItemModel.§5214233475233488123423632234§;
         });
         osgi.injectService(IBattleUserInfoService,function(param1:Object):void
         {
            BattleItemModel.battleUserInfoService = IBattleUserInfoService(param1);
         },function():IBattleUserInfoService
         {
            return BattleItemModel.battleUserInfoService;
         });
         osgi.injectService(IBattleListFormService,function(param1:Object):void
         {
            BattleTeamItemModel.§5214233475233488123423632234§ = IBattleListFormService(param1);
         },function():IBattleListFormService
         {
            return BattleTeamItemModel.§5214233475233488123423632234§;
         });
         osgi.injectService(IFriendInfoService,function(param1:Object):void
         {
            BattleTeamItemModel.§5214237545237558123423632234§ = IFriendInfoService(param1);
         },function():IFriendInfoService
         {
            return BattleTeamItemModel.§5214237545237558123423632234§;
         });
         osgi.injectService(IBattleUserInfoService,function(param1:Object):void
         {
            BattleTeamItemModel.battleUserInfoService = IBattleUserInfoService(param1);
         },function():IBattleUserInfoService
         {
            return BattleTeamItemModel.battleUserInfoService;
         });
         osgi.injectService(IBattleListFormService,function(param1:Object):void
         {
            BattleSelectModel.§5214233475233488123423632234§ = IBattleListFormService(param1);
         },function():IBattleListFormService
         {
            return BattleSelectModel.§5214233475233488123423632234§;
         });
         osgi.injectService(IBattleInfoFormService,function(param1:Object):void
         {
            BattleSelectModel.§while set function§ = IBattleInfoFormService(param1);
         },function():IBattleInfoFormService
         {
            return BattleSelectModel.§while set function§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            BattleSelectModel.display = IDisplay(param1);
         },function():IDisplay
         {
            return BattleSelectModel.display;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            BattleSelectModel.§continue for final§ = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return BattleSelectModel.§continue for final§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            BattleCreateModel.display = IDisplay(param1);
         },function():IDisplay
         {
            return BattleCreateModel.display;
         });
         osgi.injectService(ModelRegistry,function(param1:Object):void
         {
            BattleCreateModel.modelRegistry = ModelRegistry(param1);
         },function():ModelRegistry
         {
            return BattleCreateModel.modelRegistry;
         });
         osgi.injectService(IBattleCreateFormService,function(param1:Object):void
         {
            BattleCreateModel.§override set throw§ = IBattleCreateFormService(param1);
         },function():IBattleCreateFormService
         {
            return BattleCreateModel.§override set throw§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            BattleCreateModel.§52142329523308123423632234§ = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return BattleCreateModel.§52142329523308123423632234§;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            BattleCreateModel.§5214235632235645123423632234§ = IAlertService(param1);
         },function():IAlertService
         {
            return BattleCreateModel.§5214235632235645123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            BattleCreateModel.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return BattleCreateModel.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §521423118512311864123423632234§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §521423118512311864123423632234§.§5214236363236376123423632234§;
         });
         osgi.injectService(IHelpService,function(param1:Object):void
         {
            §521423101562310169123423632234§.§else var include§ = IHelpService(param1);
         },function():IHelpService
         {
            return §521423101562310169123423632234§.§else var include§;
         });
         osgi.injectService(IMoneyService,function(param1:Object):void
         {
            §5214233743233756123423632234§.§var var finally§ = IMoneyService(param1);
         },function():IMoneyService
         {
            return §5214233743233756123423632234§.§var var finally§;
         });
         osgi.injectService(PremiumService,function(param1:Object):void
         {
            §5214232535232548123423632234§.§with var try§ = PremiumService(param1);
         },function():PremiumService
         {
            return §5214232535232548123423632234§.§with var try§;
         });
         osgi.injectService(IBattleCreateFormService,function(param1:Object):void
         {
            §5214232535232548123423632234§.§override set throw§ = IBattleCreateFormService(param1);
         },function():IBattleCreateFormService
         {
            return §5214232535232548123423632234§.§override set throw§;
         });
         osgi.injectService(Network,function(param1:Object):void
         {
            §5214232535232548123423632234§.§521423140132314026123423632234§ = Network(param1);
         },function():Network
         {
            return §5214232535232548123423632234§.§521423140132314026123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §in package function§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §in package function§.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §case set do§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §case set do§.§5214236363236376123423632234§;
         });
         osgi.injectService(IDialogsService,function(param1:Object):void
         {
            §case set do§.§default finally§ = IDialogsService(param1);
         },function():IDialogsService
         {
            return §case set do§.§default finally§;
         });
         osgi.injectService(IAchievementService,function(param1:Object):void
         {
            §52142320023213123423632234§.§521423124592312472123423632234§ = IAchievementService(param1);
         },function():IAchievementService
         {
            return §52142320023213123423632234§.§521423124592312472123423632234§;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            §52142320023213123423632234§.§return set get§ = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return §52142320023213123423632234§.§return set get§;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            §52142320023213123423632234§.§continue for final§ = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return §52142320023213123423632234§.§continue for final§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §5214234809234822123423632234§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §5214234809234822123423632234§.§5214236363236376123423632234§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §5214234809234822123423632234§.§5214235917235930123423632234§ = IDisplay(param1);
         },function():IDisplay
         {
            return §5214234809234822123423632234§.§5214235917235930123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §521423137772313790123423632234§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §521423137772313790123423632234§.§5214236363236376123423632234§;
         });
         osgi.injectService(IAchievementService,function(param1:Object):void
         {
            §5214236237236250123423632234§.§521423124592312472123423632234§ = IAchievementService(param1);
         },function():IAchievementService
         {
            return §5214236237236250123423632234§.§521423124592312472123423632234§;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            §5214236237236250123423632234§.§return set get§ = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return §5214236237236250123423632234§.§return set get§;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            §5214236237236250123423632234§.§continue for final§ = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return §5214236237236250123423632234§.§continue for final§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            BattleListFormService.display = IDisplay(param1);
         },function():IDisplay
         {
            return BattleListFormService.display;
         });
         osgi.injectService(IBattleCreateFormService,function(param1:Object):void
         {
            BattleListFormService.§override set throw§ = IBattleCreateFormService(param1);
         },function():IBattleCreateFormService
         {
            return BattleListFormService.§override set throw§;
         });
         osgi.injectService(IBattleInfoFormService,function(param1:Object):void
         {
            BattleListFormService.§while set function§ = IBattleInfoFormService(param1);
         },function():IBattleInfoFormService
         {
            return BattleListFormService.§while set function§;
         });
         osgi.injectService(BattleFormatUtil,function(param1:Object):void
         {
            BattleListFormService.§5214239416239429123423632234§ = BattleFormatUtil(param1);
         },function():BattleFormatUtil
         {
            return BattleListFormService.§5214239416239429123423632234§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            BattleInfoFormService.display = IDisplay(param1);
         },function():IDisplay
         {
            return BattleInfoFormService.display;
         });
         osgi.injectService(IFriendInfoService,function(param1:Object):void
         {
            BattleFriendNotifier.§5214237545237558123423632234§ = IFriendInfoService(param1);
         },function():IFriendInfoService
         {
            return BattleFriendNotifier.§5214237545237558123423632234§;
         });
         osgi.injectService(IBattleUserInfoService,function(param1:Object):void
         {
            BattleFriendNotifier.battleUserInfoService = IBattleUserInfoService(param1);
         },function():IBattleUserInfoService
         {
            return BattleFriendNotifier.battleUserInfoService;
         });
         modelRegistry = osgi.getService(ModelRegistry) as ModelRegistry;
         modelRegistry.registerAdapt(§5214234313234326123423632234§,IBattleInfoAdapt);
         modelRegistry.registerEvents(§5214234313234326123423632234§,IBattleInfoEvents);
         modelRegistry.registerAdapt(§5214236663236676123423632234§,IProBattleAdapt);
         modelRegistry.registerEvents(§5214236663236676123423632234§,IProBattleEvents);
         modelRegistry.registerAdapt(§null override§,IClanInfoAdapt);
         modelRegistry.registerEvents(§null override§,IClanInfoEvents);
         modelRegistry.registerAdapt(§521423117842311797123423632234§,IMapInfoAdapt);
         modelRegistry.registerEvents(§521423117842311797123423632234§,IMapInfoEvents);
         modelRegistry.registerAdapt(§static switch break§,IBattleDMItemAdapt);
         modelRegistry.registerEvents(§static switch break§,IBattleDMItemEvents);
         modelRegistry.registerAdapt(§with package function§,BattleItemAdapt);
         modelRegistry.registerEvents(§with package function§,BattleItemEvents);
         modelRegistry.registerAdapt(§include set throw§,IBattleItemAdapt);
         modelRegistry.registerEvents(§include set throw§,IBattleItemEvents);
         modelRegistry.registerAdapt(§implements package override§,BattleTeamInfoAdapt);
         modelRegistry.registerEvents(§implements package override§,BattleTeamInfoEvents);
         modelRegistry.add(new BattleInfoModel());
         modelRegistry.add(new BattleDmInfoModel());
         modelRegistry.add(new ProBattleInfoModel());
         modelRegistry.add(new BattleTeamInfoModel());
         modelRegistry.add(new MapClanInfoModel());
         modelRegistry.add(new MapInfoModel());
         modelRegistry.add(new BattleDMItemModel());
         modelRegistry.add(new BattleItemModel());
         modelRegistry.add(new BattleTeamItemModel());
         modelRegistry.add(new BattleSelectModel());
         modelRegistry.add(new BattleCreateModel());
      }
   }
}

