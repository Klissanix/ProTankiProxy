package
{
   import flash.desktop.NativeApplication;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.Screen;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.events.TimerEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class StandaloneLoader extends Sprite
   {
      
      private static const LOADING_TIMEOUT:int = 7500;
      
      private var logo:Class = tank_png$27f36a22fb56187570ea1926464bc670753985413;
      
      private var gearWheel:Class = §mainGearWheel_png$9fceefdf7da898cd71533018afe1930f-1907335258§;
      
      private var miniGearWheel:Class = miniGearWheel_png$24928f4e98e058c4472eda467ae57b8f1776266560;
      
      private var guiLayer:Sprite;
      
      private var prelauncher:Loader;
      
      private var locale:String;
      
      protected var prelauncherSwf:String;
      
      protected var prelauncherSwfLinks:Vector.<String> = new <String>["http://146.59.110.103","http://194.67.196.216","http://s.pro-tanki.com","https://s.pro-tanki.com","http://tankiresources.com","https://tankiresources.com"];
      
      private var currentLink:int = 0;
      
      private var wheelRotateFunctionBig:Function;
      
      private var wheelRotateFunctionSmall:Function;
      
      private var timer:Timer = new Timer(1000);
      
      private var lastActivityTime:int;
      
      private var urlLoader:URLLoader;
      
      public function StandaloneLoader()
      {
         super();
         addEventListener("addedToStage",this.init);
      }
      
      private function init(param1:Event = null) : void
      {
         removeEventListener("addedToStage",this.init);
         stage.scaleMode = "noScale";
         this.locale = loaderInfo.parameters["locale"] || "ru";
         LocalizedTexts.setLocale(this.locale);
         this.configureStage();
         this.createGUI();
         this.timer.addEventListener("timer",this.onTimer);
         this.loadStandalone();
      }
      
      private function configureStage() : void
      {
         stage.align = "TL";
         stage.stageHeight = 256;
         stage.stageWidth = 256;
         stage.nativeWindow.maxSize = new Point(stage.nativeWindow.width,stage.nativeWindow.height);
         stage.nativeWindow.minSize = new Point(stage.nativeWindow.width,stage.nativeWindow.height);
         this.setCenterPosition();
      }
      
      private function createMainGearWheel() : void
      {
         var rotation:Number;
         var bitmapData:BitmapData = new this.gearWheel().bitmapData;
         var bitmap:Bitmap = new Bitmap(bitmapData);
         bitmap.x = 100;
         bitmap.y = 32;
         this.guiLayer.addChild(bitmap);
         rotation = 0;
         this.wheelRotateFunctionBig = function(param1:Event):void
         {
            var _loc3_:Matrix = new Matrix();
            _loc3_.translate(-bitmap.width / 2,-bitmap.height / 2);
            _loc3_.rotate(rotation--);
            _loc3_.translate(bitmap.height / 2,bitmap.width / 2);
            var _loc2_:BitmapData = new BitmapData(bitmap.width,bitmap.height,true,0);
            _loc2_.draw(bitmapData,_loc3_,null,"normal",null,true);
            bitmap.bitmapData = _loc2_;
         };
         addEventListener("enterFrame",this.wheelRotateFunctionBig);
      }
      
      private function createMiniGearWheel() : void
      {
         var rotation:Number;
         var bitmapData:BitmapData = new this.miniGearWheel().bitmapData;
         var bitmap:Bitmap = new Bitmap(bitmapData);
         bitmap.x = 50;
         bitmap.y = 105;
         this.guiLayer.addChild(bitmap);
         rotation = 0;
         this.wheelRotateFunctionSmall = function(param1:Event):void
         {
            var _loc3_:Matrix = new Matrix();
            _loc3_.translate(-bitmap.width / 2,-bitmap.height / 2);
            _loc3_.rotate(rotation++);
            _loc3_.translate(bitmap.height / 2,bitmap.width / 2);
            var _loc2_:BitmapData = new BitmapData(bitmap.width,bitmap.height,true,0);
            _loc2_.draw(bitmapData,_loc3_,null,"normal",null,true);
            bitmap.bitmapData = _loc2_;
         };
         addEventListener("enterFrame",this.wheelRotateFunctionSmall);
      }
      
      private function createGUI() : void
      {
         this.guiLayer = new Sprite();
         this.createMainGearWheel();
         this.createMiniGearWheel();
         this.guiLayer.addChild(new this.logo());
         stage.addChild(this.guiLayer);
      }
      
      private function removeGUI() : void
      {
         removeEventListener("enterFrame",this.wheelRotateFunctionBig);
         removeEventListener("enterFrame",this.wheelRotateFunctionSmall);
         stage.removeChild(this.guiLayer);
      }
      
      private function get version() : String
      {
         var _loc2_:XML = NativeApplication.nativeApplication.applicationDescriptor;
         var _loc1_:Namespace = _loc2_.namespace();
         return _loc2_._loc1_::versionNumber;
      }
      
      private function loadStandalone() : void
      {
         this.prelauncherSwf = this.prelauncherSwfLinks[this.currentLink] + "/Prelauncher.swf";
         if(this.prelauncherSwf.indexOf("file") < 0)
         {
            this.prelauncherSwf += "?rand=" + Math.random();
         }
         var _loc1_:URLRequest = new URLRequest(this.prelauncherSwf);
         urlLoader = new URLLoader();
         urlLoader.dataFormat = "binary";
         urlLoader.addEventListener("complete",this.byteArrayLoadComplete);
         urlLoader.addEventListener("ioError",this.onLoadingError);
         urlLoader.addEventListener("securityError",this.onLoadingError);
         urlLoader.addEventListener("progress",this.onProgress);
         urlLoader.load(_loc1_);
         this.lastActivityTime = getTimer();
         this.timer.start();
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         if(getTimer() - this.lastActivityTime > 7500)
         {
            urlLoader.close();
            this.onLoadingError(param1);
         }
      }
      
      private function onLoadingError(param1:Event) : void
      {
         this.timer.stop();
         ++this.currentLink;
         if(this.currentLink >= prelauncherSwfLinks.length)
         {
            Alert.showMessage(LocalizedTexts.CONNECTION_ERROR);
         }
         else
         {
            this.loadStandalone();
         }
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         this.lastActivityTime = getTimer();
      }
      
      private function isNewVersionAvailable(param1:String) : Boolean
      {
         if(this.version != param1)
         {
            Alert.showMessage(LocalizedTexts.NEW_VERSION_AVAILABLE(param1,this.version));
         }
         return this.version == param1;
      }
      
      private function byteArrayLoadComplete(param1:Event) : void
      {
         this.urlLoader = null;
         this.timer.stop();
         this.timer.removeEventListener("timer",this.onTimer);
         var _loc2_:ByteArray = URLLoader(param1.target).data as ByteArray;
         this.prelauncher = new Loader();
         var _loc3_:LoaderInfo = this.prelauncher.contentLoaderInfo;
         _loc3_.addEventListener("complete",this.onLauncherLoadingComplete);
         _loc3_.addEventListener("ioError",this.onLoadingError);
         _loc3_.addEventListener("securityError",this.onLoadingError);
         var _loc4_:LoaderContext = new LoaderContext(false,ApplicationDomain.currentDomain);
         _loc4_.allowCodeImport = true;
         _loc4_.parameters = {
            "locale":loaderInfo.parameters["locale"] || "ru",
            "swf":this.prelauncherSwfLinks[this.currentLink] + "/Loader.swf",
            "library":this.prelauncherSwfLinks[this.currentLink] + "/library.swf",
            "resources":this.prelauncherSwfLinks[this.currentLink],
            "config":this.prelauncherSwfLinks[this.currentLink] + "/config.xml"
         };
         this.prelauncher.loadBytes(_loc2_,_loc4_);
      }
      
      private function setCenterPosition() : void
      {
         var _loc1_:Rectangle = stage.nativeWindow.bounds;
         var _loc2_:Screen = Screen.getScreensForRectangle(_loc1_)[0];
         stage.nativeWindow.x = (_loc2_.bounds.width - stage.nativeWindow.width) / 2;
         stage.nativeWindow.y = (_loc2_.bounds.height - stage.nativeWindow.height) / 2;
      }
      
      private function onLauncherLoadingComplete(param1:Event) : void
      {
         this.removeGUI();
         if(this.isNewVersionAvailable(this.prelauncher.getChildAt(0)["version"]))
         {
            stage.nativeWindow.maxSize = new Point(1050,650);
            stage.nativeWindow.minSize = new Point(stage.nativeWindow.width,stage.nativeWindow.height);
            stage.nativeWindow.width = 1000;
            stage.nativeWindow.height = 600;
            addChild(this.prelauncher.getChildAt(0));
            stage.stageWidth = 1000;
            stage.stageHeight = 600;
            stage.nativeWindow.maxSize = new Point(stage.nativeWindow.width,stage.nativeWindow.height);
            stage.nativeWindow.minSize = new Point(stage.nativeWindow.width,stage.nativeWindow.height);
            this.setCenterPosition();
         }
      }
   }
}

