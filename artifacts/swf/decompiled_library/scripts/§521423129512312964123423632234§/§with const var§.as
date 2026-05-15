package §521423129512312964123423632234§
{
   import §521423129502312963123423632234§.SharedObjectUsNotAccessibleError;
   import §5214235655235668123423632234§.§5214233634233647123423632234§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.osgi.service.logging.§dynamic use try§;
   import alternativa.startup.StartupSettings;
   import flash.events.NetStatusEvent;
   import flash.net.SharedObject;
   import flash.system.Capabilities;
   import flash.utils.ByteArray;
   import §override catch default§.Long;
   import platform.client.fp10.core.service.errormessage.IErrorMessageService;
   import platform.client.fp10.core.service.localstorage.IResourceLocalStorage;
   
   public class §with const var§ implements IResourceLocalStorage, §case set with§
   {
      
      private var §get set with§:§dynamic use try§;
      
      private var §dynamic catch break§:Boolean;
      
      private var §extends catch set§:SharedObject;
      
      private var §5214232894232907123423632234§:ResourceIndex;
      
      private var §while package function§:Boolean;
      
      private var §5214235545235558123423632234§:Object;
      
      public function §with const var§(param1:OSGi)
      {
         super();
         var _loc3_:LogService = LogService(param1.getService(LogService));
         this.§get set with§ = _loc3_.getLogger("resource");
         this.§extends catch set§ = SharedObject.getLocal("localstorage","/");
         this.§5214232894232907123423632234§ = new ResourceIndex(this.§extends catch set§);
         var _loc2_:§5214233634233647123423632234§ = §5214233634233647123423632234§(param1.getService(§5214233634233647123423632234§));
         var _loc5_:StartupSettings = StartupSettings;
         var _loc4_:String = flash.system.Capabilities.playerType == "Desktop" || flash.system.Capabilities.playerType == "External" ? "0" : "1";
         if(_loc4_ == "1")
         {
            this.§false const continue§(true);
         }
         else if(_loc4_ == "0")
         {
            this.§dynamic catch break§ = false;
         }
         else
         {
            this.§dynamic catch break§ = this.§extends catch set§.data.enabled;
         }
      }
      
      public function §521423101952310208123423632234§(param1:Long, param2:int, param3:ByteArray, param4:String, param5:String) : void
      {
         if(!param5)
         {
            param5 = "default";
         }
         var _loc6_:ResourceObject = new ResourceObject(param1.toString(),param5);
         _loc6_.resourceVersion = param2;
         _loc6_.data = param3;
         _loc6_.flush();
         this.§5214232894232907123423632234§.addResourceData(_loc6_.resourceId,param5,param4);
      }
      
      public function clear() : void
      {
         var _loc1_:Vector.<String> = this.§5214232894232907123423632234§.getResourceIds();
         for each(var _loc2_ in _loc1_)
         {
            this.§5214239017239030123423632234§(_loc2_);
         }
      }
      
      private function §super var finally§(param1:NetStatusEvent) : void
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:int = 0;
         this.§extends catch set§.removeEventListener("netStatus",this.§super var finally§);
         if(param1.info.code == "SharedObject.Flush.Failed")
         {
            _loc2_ = Capabilities.os.indexOf("Windows");
            _loc4_ = Capabilities.os.indexOf("Linux");
            _loc3_ = Capabilities.os.indexOf("Mac");
            if(_loc2_ >= 0 || (_loc4_ >= 0 || _loc3_ >= 0) && this.§extends catch set§.flush(104857600) == "pending")
            {
               this.§throw switch case§(false);
            }
            else
            {
               this.§throw switch case§(true);
            }
         }
         else
         {
            this.§throw switch case§(true);
         }
      }
      
      public function §switch set null§(param1:Long) : void
      {
         this.§5214239017239030123423632234§(param1.toString());
      }
      
      private function §false const continue§(param1:Boolean) : void
      {
         var _loc3_:String = null;
         var _loc4_:SharedObjectUsNotAccessibleError = null;
         var _loc2_:IErrorMessageService = null;
         this.§while package function§ = param1;
         try
         {
            _loc3_ = this.§extends catch set§.flush(104857600);
         }
         catch(e:Error)
         {
            _loc4_ = new SharedObjectUsNotAccessibleError();
            §get set with§.warning(_loc4_.getMessage());
            _loc2_ = IErrorMessageService(OSGi.getInstance().getService(IErrorMessageService));
            _loc2_.showMessage(_loc4_);
         }
         switch(_loc3_)
         {
            case "flushed":
               this.§throw switch case§(true);
               break;
            case "pending":
               this.§extends catch set§.addEventListener("netStatus",this.§super var finally§);
         }
      }
      
      public function §5214239017239030123423632234§(param1:String) : void
      {
         var _loc2_:ResourceObject = null;
         var _loc3_:LocalResourceInfo = this.§5214232894232907123423632234§.getResourceInfo(param1);
         if(_loc3_.empty)
         {
            return;
         }
         for each(var _loc4_ in _loc3_.classifiers)
         {
            _loc2_ = new ResourceObject(param1,_loc4_);
            _loc2_.clear();
         }
         this.§5214232894232907123423632234§.removeResourceInfo(param1);
      }
      
      public function §finally set each§() : ResourceIndex
      {
         return this.§5214232894232907123423632234§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§dynamic catch break§;
      }
      
      public function §521423116342311647123423632234§(param1:Long, param2:int, param3:String) : ByteArray
      {
         var _loc4_:ResourceObject = new ResourceObject(param1.toString(),param3);
         if(_loc4_.resourceVersion == param2)
         {
            return _loc4_.data;
         }
         this.§5214232894232907123423632234§.removeResourceData(_loc4_.resourceId,param3);
         _loc4_.clear();
         return null;
      }
      
      public function §521423124782312491123423632234§() : void
      {
         this.§extends catch set§.flush();
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(param1)
         {
            this.§false const continue§(false);
         }
         else
         {
            this.§while package function§ = false;
            this.§throw switch case§(false);
         }
      }
      
      private function §throw switch case§(param1:Boolean) : void
      {
         if(!this.§while package function§)
         {
            this.§extends catch set§.data.enabled = param1;
         }
         this.§dynamic catch break§ = param1;
      }
   }
}

import flash.net.SharedObject;
import flash.utils.ByteArray;

class ResourceObject
{
   
   private var d51802cf:SharedObject;
   
   private var d6d45d0d:String;
   
   public function ResourceObject(param1:String, param2:String)
   {
      super();
      var _loc3_:String = param1 + "-" + param2;
      this.d51802cf = SharedObject.getLocal(_loc3_,"/");
      this.d6d45d0d = param1;
   }
   
   public function get resourceId() : String
   {
      return this.d6d45d0d;
   }
   
   public function get resourceVersion() : int
   {
      return this.d51802cf.data.version;
   }
   
   public function set resourceVersion(param1:int) : void
   {
      this.d51802cf.data.version = param1;
   }
   
   public function get data() : ByteArray
   {
      return this.d51802cf.data.data;
   }
   
   public function set data(param1:ByteArray) : void
   {
      this.d51802cf.data.data = param1;
   }
   
   public function flush() : void
   {
      this.d51802cf.flush();
   }
   
   public function clear() : void
   {
      this.d51802cf.clear();
   }
}

class ResourceIndex
{
   
   private var d51802cf:SharedObject;
   
   private var index:Object;
   
   public function ResourceIndex(param1:SharedObject)
   {
      super();
      this.d51802cf = param1;
      this.index = param1.data.index;
      if(this.index == null)
      {
         this.index = {};
         param1.data.index = this.index;
      }
   }
   
   public function getResourceInfo(param1:String) : LocalResourceInfo
   {
      return new LocalResourceInfo(this.index[param1]);
   }
   
   public function setResourceInfo(param1:String, param2:LocalResourceInfo) : void
   {
      if(param2 == null)
      {
         this.removeResourceInfo(param1);
      }
      else
      {
         this.index[param1] = param2.rawData;
      }
   }
   
   public function removeResourceInfo(param1:String) : void
   {
      delete this.index[param1];
   }
   
   public function addResourceData(param1:String, param2:String, param3:String) : void
   {
      var _loc5_:LocalResourceInfo = this.getResourceInfo(param1);
      _loc5_.description = param3;
      var _loc4_:Array = _loc5_.classifiers;
      if(_loc4_.indexOf(param2) < 0)
      {
         _loc4_[_loc4_.length] = param2;
      }
      this.setResourceInfo(param1,_loc5_);
   }
   
   public function removeResourceData(param1:String, param2:String) : void
   {
      var _loc5_:LocalResourceInfo = this.getResourceInfo(param1);
      if(_loc5_.empty)
      {
         return;
      }
      var _loc3_:Array = _loc5_.classifiers;
      var _loc4_:int = _loc3_.indexOf(param2);
      if(_loc4_ >= 0)
      {
         if(_loc3_.length == 1)
         {
            this.removeResourceInfo(param1);
         }
         else
         {
            _loc3_.removeAt(_loc4_);
            this.setResourceInfo(param1,_loc5_);
         }
      }
   }
   
   public function getResourceIds() : Vector.<String>
   {
      var _loc2_:String = null;
      var _loc1_:Vector.<String> = new Vector.<String>();
      for(_loc2_ in this.index)
      {
         _loc1_[_loc1_.length] = _loc2_;
      }
      return _loc1_;
   }
}

class LocalResourceInfo
{
   
   public var empty:Boolean;
   
   public var rawData:Object;
   
   public function LocalResourceInfo(param1:Object)
   {
      super();
      if(param1 == null)
      {
         this.empty = true;
         this.rawData = {};
      }
      else
      {
         this.rawData = param1;
      }
   }
   
   public function get description() : String
   {
      return this.rawData.description;
   }
   
   public function set description(param1:String) : void
   {
      this.rawData.description = param1;
   }
   
   public function get classifiers() : Array
   {
      var _loc1_:Array = this.rawData.classifiers;
      if(_loc1_ == null)
      {
         _loc1_ = [];
         this.rawData.classifiers = _loc1_;
      }
      return _loc1_;
   }
}
