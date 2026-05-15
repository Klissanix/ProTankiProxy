package alternativa.startup
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.system.Capabilities;
   import flash.utils.ByteArray;
   import flash.utils.getDefinitionByName;
   
   public class CacheURLLoader extends URLLoader
   {
      
      private var url:String;
      
      private var §include catch in§:String;
      
      private var §521423138692313882123423632234§:Object;
      
      private var §final const dynamic§:Class;
      
      private var §null catch if§:Class;
      
      public function CacheURLLoader()
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
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = new this.§final const dynamic§(this.§521423138692313882123423632234§.resolvePath(this.§include catch in§).nativePath);
         var _loc3_:Object = new this.§null catch if§();
         try
         {
            _loc3_.open(_loc2_,"write");
            _loc3_.writeBytes(URLLoader(param1.target).data as ByteArray);
            _loc3_.close();
         }
         catch(e:Error)
         {
            throw new IOErrorEvent("CacheURLLoader error! " + e.message);
         }
      }
      
      private function e747b5fb(param1:Event) : void
      {
         this.a3d9c758(new URLRequest(this.url));
      }
      
      private function a3d9c758(param1:URLRequest) : void
      {
         this.dataFormat = "binary";
         this.addEventListener("complete",this.onComplete,false,0,true);
         super.load(param1);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc3_:StartupSettings = StartupSettings;
         if(!(flash.system.Capabilities.playerType == "Desktop" || flash.system.Capabilities.playerType == "External"))
         {
            super.load(param1);
            return;
         }
         this.url = param1.url;
         this.§include catch in§ = §5214233816233829123423632234§.encode(this.url);
         var _loc2_:Object = this.§521423138692313882123423632234§.resolvePath(this.§include catch in§);
         if(_loc2_.exists)
         {
            super.addEventListener("ioError",this.e747b5fb,false,0,true);
            super.addEventListener("securityError",this.e747b5fb,false,0,true);
            param1.url = _loc2_.url;
            super.load(param1);
            return;
         }
         this.a3d9c758(param1);
      }
   }
}

