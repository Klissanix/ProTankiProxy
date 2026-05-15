package alternativa
{
   import §5214235655235668123423632234§.§5214233634233647123423632234§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.clientlog.ClientLog;
   import alternativa.osgi.service.clientlog.DeprecatedClientLogWrapper;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.osgi.service.command.CommandService;
   import alternativa.osgi.service.console.§5214235900235913123423632234§;
   import alternativa.osgi.service.console.Console;
   import alternativa.osgi.service.console.ConsoleLogTarget;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.osgi.service.logging.§dynamic use try§;
   import alternativa.osgi.service.network.INetworkService;
   import alternativa.osgi.service.network.NetworkService;
   import alternativa.startup.§5214233502233515123423632234§;
   import alternativa.startup.ConnectionParameters;
   import §default while§.CommandServiceImpl;
   import §default while§.DefaultCommands;
   import §dynamic catch true§.§case switch native§;
   import §dynamic catch true§.§for switch class§;
   import flash.display.DisplayObjectContainer;
   import flash.display.LoaderInfo;
   import flash.display.Stage;
   import flash.events.KeyboardEvent;
   
   public class ClientConfigurator implements §5214233502233515123423632234§
   {
      
      protected var osgi:OSGi;
      
      private var console:§5214235900235913123423632234§;
      
      private var §in const with§:KeyboardShortcut;
      
      private var §each var try§:KeyboardShortcut;
      
      private var §5214233864233877123423632234§:CommandServiceImpl;
      
      private var §5214234621234634123423632234§:LogService;
      
      public function ClientConfigurator()
      {
         super();
      }
      
      private function a6c12794(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean) : KeyboardShortcut
      {
         if(param1 == null)
         {
            return new KeyboardShortcut(param2,param3,param4,param5);
         }
         return new KeyboardShortcut(parseInt(param1),param1.indexOf("a") > -1,param1.indexOf("c") > -1,param1.indexOf("s") > -1);
      }
      
      public function start(param1:DisplayObjectContainer, param2:§5214233634233647123423632234§, param3:ConnectionParameters, param4:LoaderInfo) : void
      {
         this.osgi = OSGi.getInstance();
         this.§5214233864233877123423632234§ = new CommandServiceImpl();
         this.osgi.registerService(CommandService,this.§5214233864233877123423632234§);
         this.b543752f();
         this.b50823c3(param1.stage,param2);
         this.osgi.registerService(§5214233634233647123423632234§,param2);
         this.osgi.registerService(IDisplay,new Display(param1));
         this.osgi.registerService(INetworkService,new NetworkService(param3));
         this.registerCommand(this.osgi,this.§5214233864233877123423632234§);
         this.osgi.registerService(§for switch class§,new §case switch native§(param4));
      }
      
      private function a2479e8c(param1:Stage, param2:§5214235900235913123423632234§, param3:String) : void
      {
         var _loc7_:* = null;
         var _loc5_:Array = null;
         var _loc6_:Array = param3.split(",");
         var _loc4_:Object = {};
         for each(_loc7_ in _loc6_)
         {
            _loc5_ = _loc7_.split(":");
            _loc4_[_loc5_[0]] = _loc5_[1];
         }
         if(_loc4_["show"] != null)
         {
            param2.show();
         }
         if(_loc4_["ha"] != null)
         {
            param2.horizontalAlignment = int(_loc4_["ha"]);
         }
         if(_loc4_["va"] != null)
         {
            param2.vericalAlignment = int(_loc4_["va"]);
         }
         if(_loc4_["w"] != null)
         {
            param2.width = int(_loc4_["w"]);
         }
         if(_loc4_["h"] != null)
         {
            param2.height = int(_loc4_["h"]);
         }
         if(_loc4_["alpha"] != null)
         {
            param2.executeCommand("con_alpha " + _loc4_["alpha"]);
         }
         this.§in const with§ = this.a6c12794(_loc4_["hsw"],37,false,true,true);
         this.§each var try§ = this.a6c12794(_loc4_["vsw"],38,false,true,true);
         param1.addEventListener("keyDown",this.a48ef3d9,true);
      }
      
      private function a48ef3d9(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case this.§in const with§.keyCode:
               if(this.§in const with§.altKey == param1.altKey && this.§in const with§.shiftKey == param1.shiftKey && this.§in const with§.ctrlKey == param1.ctrlKey)
               {
                  if(this.console.horizontalAlignment == 1)
                  {
                     this.console.horizontalAlignment = 2;
                     break;
                  }
                  this.console.horizontalAlignment = 1;
               }
               break;
            case this.§each var try§.keyCode:
               if(this.§each var try§.altKey == param1.altKey && this.§each var try§.shiftKey == param1.shiftKey && this.§each var try§.ctrlKey == param1.ctrlKey)
               {
                  if(this.console.vericalAlignment == 1)
                  {
                     this.console.vericalAlignment = 2;
                     break;
                  }
                  this.console.vericalAlignment = 1;
               }
         }
      }
      
      private function b543752f() : void
      {
         this.§5214234621234634123423632234§ = LogService(this.osgi.getService(LogService));
         this.osgi.registerService(IClientLog,new ClientLog(this.§5214234621234634123423632234§));
         OSGi.§try set return§ = new DeprecatedClientLogWrapper(this.§5214234621234634123423632234§);
      }
      
      protected function createConsole(param1:Stage) : §5214235900235913123423632234§
      {
         return new Console(this.§5214233864233877123423632234§,param1,50,100,1,1);
      }
      
      private function registerCommand(param1:OSGi, param2:CommandService) : void
      {
         new DefaultCommands(param2);
      }
      
      private function b50823c3(param1:Stage, param2:§5214233634233647123423632234§) : void
      {
         if(this.console)
         {
            return;
         }
         this.console = this.createConsole(param1);
         this.osgi.registerService(§5214235900235913123423632234§,this.console);
         this.§5214234621234634123423632234§.addLogTarget(new ConsoleLogTarget(this.§5214233864233877123423632234§,this.console,param2));
         this.a2479e8c(param1,this.console,"show,ha,va,w,h,alpha");
      }
      
      private function c33c1eb0(param1:Vector.<String>) : void
      {
         var _loc2_:* = null;
         var _loc3_:LogService = LogService(this.osgi.getService(LogService));
         var _loc4_:§dynamic use try§ = _loc3_.getLogger("startup");
         for each(_loc2_ in param1)
         {
            _loc4_.info(_loc2_);
         }
      }
   }
}

class KeyboardShortcut
{
   
   public var keyCode:int;
   
   public var altKey:Boolean;
   
   public var ctrlKey:Boolean;
   
   public var shiftKey:Boolean;
   
   public function KeyboardShortcut(param1:int, param2:Boolean, param3:Boolean, param4:Boolean)
   {
      super();
      this.keyCode = param1;
      this.altKey = param2;
      this.ctrlKey = param3;
      this.shiftKey = param4;
   }
}
