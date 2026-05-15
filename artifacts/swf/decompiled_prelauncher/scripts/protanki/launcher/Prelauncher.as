package protanki.launcher
{
   import flash.desktop.NativeApplication;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.NativeWindow;
   import flash.display.NativeWindowInitOptions;
   import flash.display.Screen;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageDisplayState;
   import flash.display.StageQuality;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.NativeWindowBoundsEvent;
   import flash.events.NativeWindowDisplayStateEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.Capabilities;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import protanki.launcher.controls.LocalizedControl;
   import protanki.launcher.controls.background.Background;
   import protanki.launcher.controls.bottompanel.BottomPanel;
   import protanki.launcher.controls.buttons.ExitButton;
   import protanki.launcher.controls.buttons.StartButton;
   import protanki.launcher.controls.logo.Logo;
   import protanki.launcher.controls.selector.LocaleSelectionEvent;
   import protanki.launcher.controls.selector.LocalizationSelector;
   import protanki.launcher.controls.snow.Snow;
   import protanki.launcher.controls.toppanel.TopPanel;
   import protanki.launcher.locales.Locales;
   import protanki.launcher.storage.DisplayState;
   import protanki.launcher.storage.Storage;
   
   public class Prelauncher extends Sprite
   {
      
      private var guiLayer:Sprite;
      
      private var tanksLauncherLoader:Loader;
      
      private var selector:LocalizationSelector;
      
      private var airParameters:Object;
      
      private var swf:String;
      
      private var library:String;
      
      private var resources:String;
      
      private var configUrl:String;
      
      private var defaultLocale:Locale;
      
      private var displayStateTimeout:int = 0;
      
      private var window:NativeWindow;
      
      private var configLoader:URLLoader;
      
      public function Prelauncher()
      {
         super();
         this.defaultLocale = LocalesFactory.getLocale(loaderInfo.parameters["lang"] || Locales.RU);
         this.swf = loaderInfo.parameters["swf"] || "http://146.59.110.103/Loader.swf";
         this.library = loaderInfo.parameters["library"] || "http://146.59.110.103/library.swf";
         this.resources = loaderInfo.parameters["resources"] || "http://146.59.110.103";
         this.configUrl = loaderInfo.parameters["config"] || "http://146.59.110.103/config.xml";
         addEventListener(Event.ADDED_TO_STAGE,this.init);
      }
      
      private static function pointIsVisibleOnScreens(param1:Point, param2:Array) : Boolean
      {
         var _loc3_:Screen = null;
         for each(_loc3_ in param2)
         {
            if(param1.x + 100 < _loc3_.bounds.x + _loc3_.bounds.width && param1.y + 100 < _loc3_.bounds.y + _loc3_.bounds.height)
            {
               return true;
            }
         }
         return false;
      }
      
      private function init(param1:Event = null) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
         stage.addEventListener(MouseEvent.CLICK,this.mouseClick);
         if(Capabilities.os.indexOf("Mac") >= 0)
         {
            NativeApplication.nativeApplication.menu.removeAllItems();
         }
         Locale.current = Storage.getLastSessionLocale(this.defaultLocale);
         this.configureStage();
         this.createGUI();
      }
      
      private function setCenterPosition() : void
      {
         var _loc1_:Rectangle = stage.nativeWindow.bounds;
         var _loc2_:Screen = Screen.getScreensForRectangle(_loc1_)[0];
         stage.stageWidth = 1000;
         stage.stageHeight = 600;
         stage.nativeWindow.maxSize = new Point(stage.nativeWindow.width,stage.nativeWindow.height);
         stage.nativeWindow.minSize = new Point(stage.nativeWindow.width,stage.nativeWindow.height);
         stage.nativeWindow.x = (_loc2_.bounds.width - stage.nativeWindow.width) / 2;
         stage.nativeWindow.y = (_loc2_.bounds.height - stage.nativeWindow.height) / 2;
      }
      
      private function configureStage() : void
      {
         stage.align = StageAlign.TOP_LEFT;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.quality = StageQuality.BEST;
         stage.displayState = StageDisplayState.NORMAL;
         stage.stageWidth = 1000;
         stage.stageHeight = 600;
         this.setCenterPosition();
      }
      
      private function createGUI() : void
      {
         this.guiLayer = new Sprite();
         var _loc1_:StartButton = new StartButton(this.startPressed);
         var _loc2_:ExitButton = new ExitButton();
         var _loc3_:Logo = new Logo();
         var _loc4_:Background = new Background();
         var _loc5_:TopPanel = new TopPanel();
         var _loc6_:BottomPanel = new BottomPanel();
         this.selector = new LocalizationSelector();
         this.guiLayer.addEventListener(LocaleSelectionEvent.SELECTION,this.switchLocale,false,0,true);
         this.guiLayer.addChild(_loc4_);
         this.guiLayer.addChild(new Snow(10));
         this.guiLayer.addChild(_loc3_);
         this.guiLayer.addChild(_loc2_);
         this.guiLayer.addChild(_loc1_);
         this.guiLayer.addChild(_loc5_);
         this.guiLayer.addChild(_loc6_);
         addChild(this.guiLayer);
         _loc5_.addAlignRight(this.selector);
         var _loc7_:LocaleSelectionEvent = new LocaleSelectionEvent(LocaleSelectionEvent.SELECTION,false,false);
         _loc7_.locale = Locale.current;
         this.switchLocale(_loc7_);
      }
      
      private function switchLocale(param1:LocaleSelectionEvent) : void
      {
         var _loc3_:DisplayObject = null;
         Locale.current = param1.locale;
         var _loc2_:int = 0;
         while(_loc2_ < this.guiLayer.numChildren)
         {
            _loc3_ = this.guiLayer.getChildAt(_loc2_);
            if(_loc3_ is LocalizedControl)
            {
               LocalizedControl(_loc3_).switchLocale(param1.locale);
            }
            _loc2_++;
         }
      }
      
      public function get version() : String
      {
         return "1.0";
      }
      
      private function startPressed(param1:MouseEvent = null) : void
      {
         stage.nativeWindow.visible = false;
         Storage.lastSessionLocale = Locales.list.indexOf(Locale.current.name);
         this.airParameters = {};
         this.airParameters["resources"] = this.resources;
         this.airParameters["swf"] = this.library;
         this.airParameters["lang"] = Locale.current.name;
         this.airParameters["config"] = this.configUrl;
         this.configLoader = new URLLoader();
         this.configLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.configLoader.addEventListener(Event.COMPLETE,this.onConfigLoadingComplete);
         this.configLoader.load(new URLRequest(this.configUrl + "?rand=" + Math.random()));
      }
      
      private function onConfigLoadingComplete(param1:Event = null) : void
      {
         var _loc2_:XML = XML(this.configLoader.data);
         var _loc3_:Namespace = _loc2_.namespace();
         this.airParameters["ip"] = String(_loc2_._loc3_::server.@address);
         this.airParameters["port"] = String(_loc2_._loc3_::server._loc3_::port);
         var _loc4_:URLRequest = new URLRequest(this.swf + "?rand=" + Math.random());
         var _loc5_:URLLoader = new URLLoader();
         _loc5_.dataFormat = URLLoaderDataFormat.BINARY;
         _loc5_.addEventListener(Event.COMPLETE,this.byteArrayLoadComplete);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.onLoadingError);
         _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoadingError);
         _loc5_.load(_loc4_);
      }
      
      private function onConnectError(param1:Event = null) : void
      {
         Alert.showMessage("Can not connect to server!");
         stage.nativeWindow.visible = true;
      }
      
      private function onLoadingError(param1:Event) : void
      {
         Alert.showMessage("Connection error!" + param1.target);
         stage.nativeWindow.visible = true;
      }
      
      private function byteArrayLoadComplete(param1:Event) : void
      {
         var _loc2_:ByteArray = URLLoader(param1.target).data as ByteArray;
         this.tanksLauncherLoader = new Loader();
         var _loc3_:LoaderContext = new LoaderContext(false,new ApplicationDomain(ApplicationDomain.currentDomain));
         _loc3_.parameters = this.airParameters;
         var _loc4_:LoaderInfo = this.tanksLauncherLoader.contentLoaderInfo;
         _loc4_.addEventListener(Event.COMPLETE,this.onLauncherLoadingComplete,false,0,true);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onLoadingError,false,0,true);
         _loc4_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoadingError,false,0,true);
         _loc3_.allowCodeImport = true;
         this.tanksLauncherLoader.loadBytes(_loc2_,_loc3_);
      }
      
      private function mouseClick(param1:MouseEvent) : void
      {
         if(!(param1.target == this.selector || param1.target.parent != null && param1.target.parent == this.selector))
         {
            this.selector.closeList();
         }
      }
      
      private function onLauncherLoadingComplete(param1:Event) : void
      {
         var _loc2_:NativeWindowInitOptions = new NativeWindowInitOptions();
         while(this.guiLayer.numChildren > 0)
         {
            this.guiLayer.removeChildAt(0);
         }
         _loc2_.renderMode = "direct";
         _loc2_.maximizable = true;
         this.window = new NativeWindow(_loc2_);
         this.window.minSize = new Point(1024,768);
         this.window.maxSize = new Point(4095,2880);
         this.window.stage.addChild(new LauncherContainer(this.tanksLauncherLoader,this));
         this.window.stage.stageWidth = 1024;
         this.window.stage.stageHeight = 768;
         this.window.addEventListener(Event.CLOSING,this.onClosing);
         this.window.addEventListener(NativeWindowBoundsEvent.MOVE,this.saveDisplayStateDelayed);
         this.window.addEventListener(NativeWindowBoundsEvent.RESIZE,this.saveDisplayStateDelayed);
         this.window.addEventListener(NativeWindowDisplayStateEvent.DISPLAY_STATE_CHANGE,this.saveDisplayStateDelayed);
         this.loadDisplayState();
      }
      
      private function onClosing(param1:Event) : void
      {
         NativeApplication.nativeApplication.exit();
      }
      
      private function saveDisplayStateDelayed(param1:Event) : void
      {
         if(this.displayStateTimeout != 0)
         {
            clearTimeout(this.displayStateTimeout);
         }
         this.displayStateTimeout = setTimeout(this.saveDisplayState,100);
      }
      
      private function loadDisplayState() : void
      {
         this.displayStateTimeout = 0;
         var _loc1_:DisplayState = Storage.getDisplayState();
         var _loc2_:Point = new Point(_loc1_.x,_loc1_.y);
         var _loc3_:Point = new Point(_loc1_.width,_loc1_.height);
         var _loc4_:Boolean = _loc1_.fullscreen;
         if(pointIsVisibleOnScreens(_loc2_,Screen.screens))
         {
            this.window.y = _loc2_.y;
            this.window.x = _loc2_.x;
            if(_loc4_)
            {
               this.setDefaultWindowSize();
               this.window.stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
            }
            else
            {
               this.window.width = _loc3_.x;
               this.window.height = _loc3_.y;
            }
         }
         else
         {
            this.setDefaultWindowSize();
         }
         this.window.visible = true;
      }
      
      private function setDefaultWindowSize() : void
      {
         this.window.x = this.window.y = 100;
         this.window.width = 1024;
         this.window.height = 768;
      }
      
      private function saveDisplayState() : void
      {
         this.displayStateTimeout = 0;
         Storage.setDisplayState(this.window.x,this.window.y,this.window.width,this.window.height,this.window.stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE);
      }
      
      public function closeLauncher() : void
      {
         NativeApplication.nativeApplication.exit();
      }
   }
}

