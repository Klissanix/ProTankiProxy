package projects.tanks.clients.fp10.TanksLauncher
{
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import projects.tanks.clients.fp10.TanksLauncher.service.LocaleService;
   
   public class SmartErrorHandler extends Sprite
   {
      
      public static const OVERLOADED_ERROR:String = "overloaded";
      
      public static const NOTAVAILABLE_ERROR:String = "notavailable";
      
      private var errorMessage:String;
      
      private var errorCode:String;
      
      private var tanksErrorMessage:*;
      
      private var urlLoader:URLLoader;
      
      private var data:ByteArray;
      
      public function SmartErrorHandler(param1:String, param2:String)
      {
         super();
         this.errorMessage = param1;
         this.errorCode = param2;
      }
      
      private function showSimpleMessage(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         _loc2_.wordWrap = true;
         _loc2_.multiline = true;
         _loc2_.width = 600;
         _loc2_.autoSize = "left";
         _loc2_.defaultTextFormat = new TextFormat("Tahoma",16,16777215);
         _loc2_.text = param1;
         stage.addChild(_loc2_);
         _loc2_.x = stage.stageWidth - _loc2_.width >> 1;
         _loc2_.y = stage.stageHeight - _loc2_.height >> 1;
      }
      
      public function loadErrorScreenBytes() : void
      {
         this.urlLoader = new URLLoader();
         this.urlLoader.dataFormat = "binary";
         this.urlLoader.addEventListener("complete",this.onLoadingComplete);
         this.urlLoader.load(new URLRequest("http://146.59.110.103/TanksErrorScreen.swf"));
      }
      
      private function onLoadingComplete(param1:Event) : void
      {
         this.data = this.urlLoader.data;
         handleLoadingError();
      }
      
      public function handleLoadingError() : void
      {
         var _loc2_:LoaderContext = null;
         var _loc1_:Loader = null;
         var _loc3_:LoaderInfo = null;
         if(this.forceShowDetailedError || this.isDebugMode)
         {
            this.showSimpleMessage(this.errorMessage);
         }
         else
         {
            _loc2_ = new LoaderContext(false,ApplicationDomain.currentDomain);
            _loc2_.allowCodeImport = true;
            _loc1_ = new Loader();
            _loc3_ = _loc1_.contentLoaderInfo;
            _loc1_.loadBytes(this.data,_loc2_);
            _loc3_.addEventListener("complete",this.onLoadingErrorMessageComplete);
            _loc3_.addEventListener("ioError",this.onFailedLoadingTanksErrorMessageClass);
            _loc3_.addEventListener("securityError",this.onFailedLoadingTanksErrorMessageClass);
         }
      }
      
      private function onFailedLoadingTanksErrorMessageClass(param1:Event) : void
      {
         this.showSimpleMessage(this.errorMessage);
      }
      
      private function onLoadingErrorMessageComplete(param1:Event) : void
      {
         this.tanksErrorMessage = param1.currentTarget.content;
         this.tanksErrorMessage.init(this.errorCode,this.isTestServer,LocaleService.anotherGameServerUrl,LocaleService.currentLocale);
         stage.addChild(this.tanksErrorMessage);
         this.tanksErrorMessage.redraw(stage.stageWidth,stage.stageHeight);
         stage.addEventListener("resize",this.draw);
      }
      
      private function draw(param1:Event) : void
      {
         this.tanksErrorMessage.redraw(stage.stageWidth,stage.stageHeight);
      }
      
      private function get isDebugMode() : Boolean
      {
         return loaderInfo.parameters["debug"];
      }
      
      private function get isTestServer() : Boolean
      {
         return Boolean(loaderInfo.parameters["test_server"]);
      }
      
      private function get forceShowDetailedError() : Boolean
      {
         return Boolean(loaderInfo.parameters["show_detailed_error"]);
      }
   }
}

