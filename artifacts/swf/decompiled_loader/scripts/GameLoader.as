package
{
   import alternativa.ILauncherListener;
   import alternativa.types.DummyListener;
   import alternativa.types.LogOutput;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.system.ApplicationDomain;
   import flash.system.Capabilities;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import flash.utils.setInterval;
   import projects.tanks.clients.fp10.TanksLauncher.DebugProgressBar;
   import projects.tanks.clients.fp10.TanksLauncher.SmartErrorHandler;
   import projects.tanks.clients.fp10.TanksLauncher.background.Background;
   import projects.tanks.clients.fp10.TanksLauncher.service.LocaleService;
   
   public class GameLoader extends Sprite implements ILauncherListener
   {
      
      private static const ENTRANCE_MODEL_OBJECT_LOADED_EVENT:String = "EntranceModel.objectLoaded";
      
      private const SERVER_STATUS_OVERLOADED:String = "overloaded";
      
      private const SERVER_STATUS_UNAVAILABLE:String = "unavailable";
      
      private var locale:String;
      
      private var logOutput:LogOutput;
      
      private var _background:Background;
      
      private var configLoader:URLLoader;
      
      private var _debugProgressBar:DebugProgressBar;
      
      private var listener:ILauncherListener;
      
      private var engineLoaded:Boolean;
      
      public function GameLoader()
      {
         super();
         addEventListener("addedToStage",this.init);
      }
      
      public static function findClass(param1:String) : Class
      {
         return Class(ApplicationDomain.currentDomain.getDefinition(param1));
      }
      
      private function createDebugProgressBar() : void
      {
         this._debugProgressBar = new DebugProgressBar();
         stage.addChild(this._debugProgressBar);
         this._debugProgressBar.align();
         this._debugProgressBar.visible = Boolean(loaderInfo.parameters["debug"]);
      }
      
      private function init(param1:Event = null) : void
      {
         removeEventListener("addedToStage",init);
         new IncludedLibrary();
         this.configureStage();
         this.createBackground();
         createDebugProgressBar();
         LocaleService.updateCurrentLocale(loaderInfo.parameters["lang"]);
         if(loaderInfo.parameters["debug"])
         {
            this.logOutput = new LogOutput();
            stage.addChild(this.logOutput);
         }
         this.listener = loaderInfo.parameters["debug"] ? new DummyListener(this.logOutput) : this;
         log("test");
         try
         {
            this.startLoadServerConfiguration();
         }
         catch(err:Error)
         {
         }
      }
      
      public function log(param1:String) : void
      {
         if(loaderInfo.parameters["debug"])
         {
            this.logOutput.addLine(param1);
         }
      }
      
      private function configureStage() : void
      {
         stage.align = "TL";
         stage.scaleMode = "noScale";
         stage.quality = "low";
         stage.stageFocusRect = false;
         mouseEnabled = false;
         tabEnabled = false;
         stage.addEventListener("EntranceModel.objectLoaded",this.onEntranceModelObjectLoaded);
      }
      
      public function onLibrariesLoadingStart() : void
      {
         this._debugProgressBar.text = "Base libs: ";
      }
      
      public function onLibrariesInitialized() : void
      {
      }
      
      public function onLibrariesLoadingComplete() : void
      {
      }
      
      private function createBackground() : void
      {
         this._background = new Background();
         stage.addChild(this._background);
      }
      
      private function progressBarFinished() : void
      {
         this.removeFromStageBackground();
      }
      
      private function removeFromStageBackground() : void
      {
         if(stage.contains(this._background))
         {
            stage.removeChild(this._background);
         }
      }
      
      private function onEntranceModelObjectLoaded(param1:Event) : void
      {
         stage.removeEventListener("EntranceModel.objectLoaded",this.onEntranceModelObjectLoaded);
         removeFromStageBackground();
      }
      
      public function onConfigLoadingStart() : void
      {
         this._debugProgressBar.text = "Config: ";
      }
      
      public function onConfigLoadingComplete() : void
      {
         log("complete");
         this._debugProgressBar.text = null;
      }
      
      public function onServerConfigLoadingProgress(param1:ProgressEvent) : void
      {
         listener.onConfigLoadingProgress(param1.bytesLoaded,param1.bytesTotal);
      }
      
      public function onLibrariesLoadingProgress(param1:ProgressEvent) : void
      {
         _debugProgressBar.setProgress(param1.bytesLoaded,param1.bytesTotal);
      }
      
      public function onConfigLoadingProgress(param1:uint, param2:uint) : void
      {
         this._debugProgressBar.setProgress(param1,param2);
      }
      
      private function loadLibrary() : void
      {
         listener.onLibrariesLoadingStart();
         var _loc2_:URLVariables = new URLVariables();
         _loc2_["locale"] = loaderInfo.parameters["lang"];
         _loc2_["rnd"] = Math.random();
         var _loc1_:URLRequest = new URLRequest(loaderInfo.parameters["swf"]);
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.dataFormat = "binary";
         _loc3_.addEventListener("complete",this.byteArrayLoadComplete);
         _loc3_.addEventListener("ioError",this.onLibrariesLoadingError);
         _loc3_.addEventListener("securityError",this.onLibrariesLoadingError);
         _loc3_.load(_loc1_);
      }
      
      private function isGpuEnabled() : Boolean
      {
         return GPUCapabilities.gpuEnabled || loaderInfo.parameters["force_gpu"];
      }
      
      private function loadAlternativa3D(param1:Event = null) : void
      {
         listener.onLibrariesLoadingStart();
         var _loc2_:String = isGpuEnabled() ? "hardware.swf" : "software.swf";
         var _loc3_:URLRequest = new URLRequest(loaderInfo.parameters["resources"] + "/" + _loc2_);
         var _loc4_:URLLoader = new URLLoader();
         _loc4_.dataFormat = "binary";
         _loc4_.addEventListener("complete",this.byteArrayLoadComplete);
         _loc4_.addEventListener("ioError",this.onLibrariesLoadingError);
         _loc4_.addEventListener("securityError",this.onLibrariesLoadingError);
         _loc4_.load(_loc3_);
      }
      
      private function startLoadServerConfiguration() : void
      {
         this.configLoader = new URLLoader();
         this.configLoader.addEventListener("complete",this.onServerConfigLoadingComplete);
         this.configLoader.addEventListener("ioError",this.onServerConfigLoadingError);
         this.configLoader.addEventListener("securityError",this.onServerConfigLoadingError);
         this.configLoader.addEventListener("progress",this.onServerConfigLoadingProgress);
         this.configLoader.load(new URLRequest(loaderInfo.parameters["config"] + "?rand=" + Math.random()));
         listener.onConfigLoadingStart();
      }
      
      private function onServerConfigLoadingComplete(param1:Event) : void
      {
         var _loc5_:GPUCapabilities = null;
         listener.onConfigLoadingComplete();
         var _loc4_:XML = XML(this.configLoader.data);
         this.configLoader = null;
         var _loc3_:Namespace = _loc4_.namespace();
         var _loc2_:String = _loc4_._loc3_::status.toString();
         switch(_loc2_)
         {
            case "overloaded":
               this.onServerOverloaded();
               return;
            case "unavailable":
               this.onServerUnavailable();
               return;
            default:
               _loc5_ = new GPUCapabilities(stage);
               _loc5_.addEventListener("complete",this.loadAlternativa3D,false,0,true);
               _loc5_.detect();
               return;
         }
      }
      
      public function onServerConfigLoadingError(param1:String) : void
      {
         listener.onConfigLoadingError(param1);
      }
      
      public function onConfigLoadingError(param1:String) : void
      {
         this.handleLoadingError("Server configuration loading error: " + param1,"notavailable");
      }
      
      public function onLibrariesLoadingError(param1:ErrorEvent) : void
      {
         log("error");
         listener.onLibraryLoadingError("error " + param1.text);
      }
      
      public function onLibraryLoadingError(param1:String) : void
      {
         this.handleLoadingError("Library loading error: " + param1,"notavailable");
      }
      
      public function onServerUnavailable() : void
      {
         this.handleLoadingError("Server is unavailable","notavailable");
      }
      
      public function onServerOverloaded() : void
      {
         this.handleLoadingError("Server is overloaded","overloaded");
      }
      
      private function byteArrayLoadComplete(param1:Event) : void
      {
         var loader:Loader;
         var loaderInfo:LoaderInfo;
         var loaderContext:LoaderContext;
         var event:Event = param1;
         var bytes:ByteArray = URLLoader(event.target).data as ByteArray;
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeBytes(bytes,bytes.position,bytes.bytesAvailable);
         loader = new Loader();
         log("byte");
         log(Capabilities.playerType);
         loaderInfo = loader.contentLoaderInfo;
         loaderInfo.addEventListener("complete",onComplete);
         loaderInfo.addEventListener("ioError",onLibrariesLoadingError);
         loaderInfo.addEventListener("securityError",onLibrariesLoadingError);
         loaderInfo.addEventListener("progress",this.onLibrariesLoadingProgress);
         loaderContext = new LoaderContext(false,ApplicationDomain.currentDomain);
         if(engineLoaded)
         {
            loaderContext.parameters = {
               "gpuEnabled":String(isGpuEnabled()),
               "constrained":String(GPUCapabilities.constrained)
            };
         }
         log("1");
         loaderContext.allowCodeImport = true;
         log("2");
         loader.loadBytes(_loc3_,loaderContext);
         log("3");
         setInterval(function():void
         {
            log("loader content " + loader.content + "  " + loader.toString());
         },1000);
      }
      
      public function logEvent(param1:String) : void
      {
         trace(param1);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:Class = null;
         var _loc2_:* = undefined;
         if(loaderInfo.parameters["debug"])
         {
            log("complete");
         }
         else if(engineLoaded)
         {
            _loc3_ = Class(ApplicationDomain.currentDomain.getDefinition("Game"));
            _loc2_ = new _loc3_();
            addChild(_loc2_);
            _loc2_.SUPER(stage,this,loaderInfo);
            listener.onLibrariesInitialized();
         }
         else
         {
            loadLibrary();
            engineLoaded = true;
         }
      }
      
      private function handleLoadingError(param1:String, param2:String) : void
      {
         var _loc3_:SmartErrorHandler = new SmartErrorHandler(param1,param2);
         stage.addChild(_loc3_);
         _loc3_.loadErrorScreenBytes();
      }
   }
}

