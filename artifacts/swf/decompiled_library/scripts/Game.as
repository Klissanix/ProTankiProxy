package
{
   import §521423124502312463123423632234§.§const package get§;
   import §5214235655235668123423632234§.LauncherParams;
   import alternativa.ClientConfigurator;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.osgi.service.locale.LocaleService;
   import alternativa.startup.ConnectionParameters;
   import alternativa.startup.StartupSettings;
   import alternativa.tanks.loader.ILoaderWindowService;
   import §class package function§.§5214233354233367123423632234§;
   import §dynamic switch in§.§521423130912313104123423632234§;
   import flash.display.DisplayObjectContainer;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import §override catch default§.Long;
   import platform.client.fp10.core.registry.SpaceRegistry;
   import platform.client.fp10.core.type.impl.Space;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   import scpacker.networking.Network;
   
   public class Game extends Sprite
   {
      
      private var container:DisplayObjectContainer;
      
      public function Game()
      {
         super();
         if(numChildren > 1)
         {
            removeChildAt(0);
            removeChildAt(0);
         }
      }
      
      public function SUPER(param1:Stage, param2:DisplayObjectContainer, param3:LoaderInfo = null) : void
      {
         this.container = param2;
         param1.dispatchEvent(new Event("EntranceModel.objectLoaded",true));
         OSGi.getInstance().registerService(Network,new Network());
         this.activateAllModels(param3);
      }
      
      private function e16bde9e() : void
      {
         var _loc1_:SpaceRegistry = SpaceRegistry(OSGi.getInstance().getService(SpaceRegistry));
         _loc1_.addSpace(new Space(Long.getLong(10568210,51255591),null));
         _loc1_.addSpace(new Space(Long.getLong(52835823,6349643),null));
         _loc1_.addSpace(new Space(Long.getLong(59235923,646943),null));
         _loc1_.addSpace(new Space(Long.getLong(884380667,214),null));
         _loc1_.addSpace(new Space(Long.getLong(13503324,653),null));
      }
      
      private function b4a0b091() : void
      {
         new §const package get§().§521423117492311762123423632234§();
      }
      
      private function activate() : void
      {
         var _loc1_:OSGi = OSGi.getInstance();
         new EntranceActivator().start(_loc1_);
         ILoaderWindowService(_loc1_.getService(ILoaderWindowService)).showLoaderWindow();
         new GameActivator().start(_loc1_);
         StartupSettings.§5214237825237838123423632234§ = Sprite(parent.parent.parent);
         this.e16bde9e();
         §5214233354233367123423632234§.init();
         var _loc2_:GPUCapabilities = new GPUCapabilities(IDisplay(_loc1_.getService(IDisplay)).stage,loaderInfo.parameters["gpuEnabled"],loaderInfo.parameters["constrained"]);
         _loc2_.addEventListener("complete",this.a4f7b107,false,0,true);
         _loc2_.detect();
      }
      
      public function activateAllModels(param1:LoaderInfo) : void
      {
         new ClientConfigurator().start(this.container,new LauncherParams(),new ConnectionParameters(param1.parameters["ip"],new <int>[param1.parameters["port"]],param1.parameters["resources"]),param1);
         var _loc2_:ILocaleService = new LocaleService(param1.parameters["lang"],"en");
         OSGi.getInstance().registerService(ILocaleService,_loc2_);
         new §521423130912313104123423632234§().§native switch override§(param1.parameters["resources"] + "/localized.data_" + _loc2_.language,this.activate);
      }
      
      private function a4f7b107(param1:Event) : void
      {
         var _temp_3:* = OSGi.§try set return§;
         var _temp_2:* = "GPUDetection";
         var _temp_1:* = "GPU detection completed, %1";
         var _loc2_:GPUCapabilities = GPUCapabilities;
         _temp_3.log(_temp_2,_temp_1,projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§);
         this.b4a0b091();
      }
   }
}

