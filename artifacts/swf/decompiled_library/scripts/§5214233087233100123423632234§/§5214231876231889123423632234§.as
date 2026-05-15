package §5214233087233100123423632234§
{
   import §521423129512312964123423632234§.*;
   import alternativa.osgi.OSGi;
   import alternativa.startup.StartupSettings;
   import alternativa.utils.Properties;
   import flash.display.Loader;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.Capabilities;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import §in switch throw§.ResourceRegistryImpl;
   import §native package final§.BundleDescriptor;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.service.localstorage.IResourceLocalStorage;
   
   public class §5214231876231889123423632234§ extends §include catch each§ implements §class for continue§
   {
      
      public static var §5214239595239608123423632234§:IResourceLocalStorage;
      
      public static var §for continue§:ResourceRegistry;
      
      private static const §static var else§:String = "library";
      
      private var §static use static§:§dynamic use override§;
      
      private var §true use var§:Loader;
      
      private var §5214237891237904123423632234§:ResourceRegistryImpl;
      
      private var §break package with§:Properties;
      
      private var data:ByteArray;
      
      public function §5214231876231889123423632234§(param1:§52142373423747123423632234§)
      {
         super(param1);
         this.§5214237891237904123423632234§ = §for continue§ as ResourceRegistryImpl;
      }
      
      override protected function §function switch try§() : void
      {
         this.§static use static§.close();
         this.§else catch include§();
      }
      
      private function §5214234812234825123423632234§(param1:Event) : void
      {
         §52142375423767123423632234§();
         this.data = this.§static use static§.data;
         this.§var set native§();
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeBytes(this.data,this.data.position,this.data.bytesAvailable);
         this.§static use static§ = null;
         this.§if catch set§(_loc2_);
      }
      
      private function §if catch set§(param1:ByteArray) : void
      {
         this.§true use var§ = new Loader();
         this.§true use var§.contentLoaderInfo.addEventListener("complete",this.§with for false§);
         var _loc2_:LoaderContext = new LoaderContext(false,ApplicationDomain.currentDomain);
         var _loc3_:StartupSettings = StartupSettings;
         if(flash.system.Capabilities.playerType == "Desktop" || flash.system.Capabilities.playerType == "External")
         {
            _loc2_.allowCodeImport = true;
         }
         this.§true use var§.loadBytes(param1,_loc2_);
      }
      
      override public function get §var catch import§() : String
      {
         return "Library";
      }
      
      override public function §5214236682236695123423632234§(param1:ByteArray, param2:§5214238033238046123423632234§) : Boolean
      {
         §get set with§.debug("SWFLibraryResource::loadBytes() id: %1",[this.§5214239618239631123423632234§.id]);
         this.§5214234460234473123423632234§ = param2;
         this.§if catch set§(param1);
         return true;
      }
      
      private function §set switch function§(param1:Event) : void
      {
         §implements use super§();
         §5214234460234473123423632234§.onResourceLoadingStart(this);
      }
      
      private function §5214233007233020123423632234§() : String
      {
         var _loc1_:String = ".bin";
         return "library" + _loc1_;
      }
      
      override protected function §else catch class§() : void
      {
         super.§else catch class§();
         if(§extends for each§(2) || !§5214239595239608123423632234§.enabled)
         {
            this.data = null;
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = null;
         if(this.§break package with§ != null)
         {
            _loc1_ = this.§break package with§.getProperty("Bundle-Name");
         }
         return "[" + super.toString() + ", name = " + _loc1_ + "]";
      }
      
      override public function get §in const default§() : String
      {
         return "-r";
      }
      
      private function §5214237731237744123423632234§(param1:ProgressEvent) : void
      {
         §implements use super§();
      }
      
      private function §true use override§() : void
      {
         OSGi.getInstance().installBundle(new BundleDescriptor(this.§break package with§));
      }
      
      protected function §else catch include§() : void
      {
         var _loc1_:String = §super switch switch§ + this.§5214233007233020123423632234§() + §52142361323626123423632234§();
         this.§static use static§ = new §dynamic use override§();
         this.§static use static§.dataFormat = "binary";
         this.§static use static§.addEventListener("open",this.§set switch function§);
         this.§static use static§.addEventListener("progress",this.§5214237731237744123423632234§);
         this.§static use static§.addEventListener("ioError",this.§in switch extends§);
         this.§static use static§.addEventListener("securityError",this.§in switch extends§);
         this.§static use static§.addEventListener("complete",this.§5214234812234825123423632234§);
         this.§static use static§.load(new URLRequest(_loc1_));
         §521423127412312754123423632234§ = "Data requested";
         §5214237993238006123423632234§();
      }
      
      private function §with for false§(param1:Event) : void
      {
         try
         {
            this.§true use override§();
            if(!this.§5214237891237904123423632234§.isLocked())
            {
               this.§else catch class§();
            }
            else
            {
               this.§5214237891237904123423632234§.addLockedResource(this);
            }
         }
         catch(err:Error)
         {
            §5214234460234473123423632234§.onResourceLoadingFatalError(this,err.getStackTrace() + ", message=" + err.message);
         }
      }
      
      public function §5214234452234465123423632234§() : void
      {
         this.§else catch class§();
      }
      
      private function §in switch extends§(param1:ErrorEvent) : void
      {
         §52142375423767123423632234§();
         §else var package§();
      }
      
      private function §var set native§() : void
      {
         var _loc2_:Array = null;
         var _loc1_:int = 0;
         var _loc3_:String = this.data.readUTF();
         this.§break package with§ = new Properties();
         if(_loc3_.length > 0)
         {
            _loc2_ = _loc3_.split(/[=&]/);
            while(_loc1_ < _loc2_.length)
            {
               this.§break package with§.setProperty(_loc2_[_loc1_],_loc2_[_loc1_ + 1]);
               _loc1_ += 2;
            }
         }
      }
      
      override public function §521423132912313304123423632234§(param1:§throw switch if§) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeBytes(this.data);
         param1.§do use each§(this,_loc2_);
         this.data = null;
      }
      
      override public function §5214236465236478123423632234§(param1:String, param2:§5214238033238046123423632234§) : void
      {
         super.§5214236465236478123423632234§(param1,param2);
         this.§else catch include§();
      }
   }
}

