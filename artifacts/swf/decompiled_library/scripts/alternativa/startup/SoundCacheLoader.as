package alternativa.startup
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundLoaderContext;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.system.Capabilities;
   import flash.utils.ByteArray;
   import flash.utils.getDefinitionByName;
   
   public class SoundCacheLoader extends Sound
   {
      
      private var §include catch in§:String;
      
      private var §521423138692313882123423632234§:Object;
      
      private var context:SoundLoaderContext;
      
      private var §final const dynamic§:Class;
      
      private var §null catch if§:Class;
      
      public function SoundCacheLoader()
      {
         super();
         var _loc1_:StartupSettings = StartupSettings;
         if(flash.system.Capabilities.playerType == "Desktop" || flash.system.Capabilities.playerType == "External")
         {
            this.§final const dynamic§ = getDefinitionByName("flash.filesystem.File") as Class;
            this.§null catch if§ = getDefinitionByName("flash.filesystem.FileStream") as Class;
            this.§521423138692313882123423632234§ = this.§final const dynamic§.applicationStorageDirectory.resolvePath("cache");
            if(!this.§521423138692313882123423632234§.exists)
            {
               this.§521423138692313882123423632234§.createDirectory();
            }
            else if(!this.§521423138692313882123423632234§.isDirectory)
            {
               throw new Error("Cannot create directory." + this.§521423138692313882123423632234§.nativePath + " is already exists.");
            }
         }
      }
      
      private function b1bfcec6(param1:Event) : void
      {
         var _loc3_:ByteArray = URLLoader(param1.target).data as ByteArray;
         var _loc2_:Object = new this.§final const dynamic§(this.§521423138692313882123423632234§.resolvePath(this.§include catch in§).nativePath);
         var _loc4_:Object = new this.§null catch if§();
         try
         {
            _loc4_.open(_loc2_,"write");
            _loc4_.writeBytes(_loc3_);
            _loc4_.close();
         }
         catch(e:Error)
         {
            dispatchEvent(new IOErrorEvent("SoundCacheLoader error! " + e.message + "url: " + §include catch in§));
         }
         super.load(new URLRequest(_loc2_.url),this.context);
      }
      
      private function b5032d30(param1:Event) : void
      {
         dispatchEvent(new SecurityErrorEvent("SoundCacheLoader: Security error!"));
      }
      
      private function a5ae3203(param1:Event) : void
      {
         dispatchEvent(new IOErrorEvent("SoundCacheLoader: IOError!"));
      }
      
      override public function load(param1:URLRequest, param2:SoundLoaderContext = null) : void
      {
         var _loc5_:StartupSettings = StartupSettings;
         if(!(flash.system.Capabilities.playerType == "Desktop" || flash.system.Capabilities.playerType == "External") || param1 == null)
         {
            super.load(param1,param2);
            return;
         }
         this.context = param2;
         this.§include catch in§ = §5214233816233829123423632234§.encode(param1.url);
         var _loc3_:Object = this.§521423138692313882123423632234§.resolvePath(this.§include catch in§);
         if(_loc3_.exists)
         {
            param1.url = _loc3_.url;
            super.load(param1,param2);
            return;
         }
         var _loc4_:URLLoader = new URLLoader();
         _loc4_.dataFormat = "binary";
         _loc4_.addEventListener("complete",this.b1bfcec6,false,0,true);
         _loc4_.addEventListener("ioError",this.a5ae3203,false,0,true);
         _loc4_.addEventListener("securityError",this.b5032d30,false,0,true);
         _loc4_.load(param1);
      }
   }
}

