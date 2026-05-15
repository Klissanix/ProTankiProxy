package §use catch dynamic§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.gui.LobbyChat;
   import alternativa.tanks.model.ChatSettingsTracker;
   import alternativa.tanks.model.LobbyChatModel;
   import alternativa.tanks.service.chat.ISharpLinksService;
   import alternativa.tanks.service.settings.ISettingsService;
   import §finally catch with§.§5214233055233068123423632234§;
   import §native package final§.§throw var static§;
   import platform.client.fp10.core.registry.ModelRegistry;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.IBattleLinkActivatorService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import services.contextmenu.IContextMenuService;
   
   public class Activator implements §throw var static§
   {
      
      public function Activator()
      {
         super();
      }
      
      public function start(param1:OSGi) : void
      {
         var modelRegistry:ModelRegistry;
         var osgi:OSGi = param1;
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            LobbyChatModel.display = IDisplay(param1);
         },function():IDisplay
         {
            return LobbyChatModel.display;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            LobbyChatModel.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return LobbyChatModel.§5214236363236376123423632234§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            LobbyChatModel.§true switch package§ = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return LobbyChatModel.§true switch package§;
         });
         osgi.injectService(IBattleLinkActivatorService,function(param1:Object):void
         {
            LobbyChatModel.§5214231686231699123423632234§ = IBattleLinkActivatorService(param1);
         },function():IBattleLinkActivatorService
         {
            return LobbyChatModel.§5214231686231699123423632234§;
         });
         osgi.injectService(IClientLog,function(param1:Object):void
         {
            LobbyChatModel.§try set return§ = IClientLog(param1);
         },function():IClientLog
         {
            return LobbyChatModel.§try set return§;
         });
         osgi.injectService(ISharpLinksService,function(param1:Object):void
         {
            LobbyChatModel.§5214234248234261123423632234§ = ISharpLinksService(param1);
         },function():ISharpLinksService
         {
            return LobbyChatModel.§5214234248234261123423632234§;
         });
         osgi.injectService(ISettingsService,function(param1:Object):void
         {
            ChatSettingsTracker.§521423998231011123423632234§ = ISettingsService(param1);
         },function():ISettingsService
         {
            return ChatSettingsTracker.§521423998231011123423632234§;
         });
         osgi.injectService(IClientLog,function(param1:Object):void
         {
            §5214233055233068123423632234§.§try set return§ = IClientLog(param1);
         },function():IClientLog
         {
            return §5214233055233068123423632234§.§try set return§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            LobbyChat.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return LobbyChat.§5214236363236376123423632234§;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            LobbyChat.§if catch include§ = IStorageService(param1);
         },function():IStorageService
         {
            return LobbyChat.§if catch include§;
         });
         osgi.injectService(IContextMenuService,function(param1:Object):void
         {
            LobbyChat.§52142335623369123423632234§ = IContextMenuService(param1);
         },function():IContextMenuService
         {
            return LobbyChat.§52142335623369123423632234§;
         });
         modelRegistry = osgi.getService(ModelRegistry) as ModelRegistry;
         modelRegistry.add(new LobbyChatModel());
      }
      
      public function stop(param1:OSGi) : void
      {
      }
   }
}

