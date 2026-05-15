package §521423129512312964123423632234§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.osgi.service.logging.§dynamic use try§;
   import alternativa.osgi.service.network.INetworkService;
   import alternativa.utils.§implements var get§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import platform.client.fp10.core.service.localstorage.IResourceLocalStorage;
   
   public class §while const throw§ implements §try for class§, §5214238033238046123423632234§, §throw switch if§
   {
      
      public static var §521423109342310947123423632234§:IResourceLocalStorage;
      
      public static var §class finally package§:INetworkService;
      
      private var §get set with§:§dynamic use try§;
      
      private var §5214235533235546123423632234§:§case set with§;
      
      private const §5214237583237596123423632234§:int = 5;
      
      private var §else for super§:int;
      
      private var §override package import§:PriorityQueue;
      
      private var §set use continue§:Dictionary;
      
      public function §while const throw§(param1:OSGi)
      {
         super();
         var _loc2_:LogService = LogService(param1.getService(LogService));
         this.§get set with§ = _loc2_.getLogger("resource");
         this.§override package import§ = new PriorityQueue();
         this.§set use continue§ = new Dictionary();
         this.§5214235533235546123423632234§ = §case set with§(param1.getService(§case set with§));
      }
      
      private function §include package try§(param1:§include catch each§) : void
      {
         var _loc5_:Long;
         var _loc4_:§include catch each§;
         var _loc2_:ByteArray = this.§5214235533235546123423632234§.§521423116342311647123423632234§(param1.§5214239618239631123423632234§.id,(_loc5_ = (_loc4_ = param1).§5214239618239631123423632234§.§5214231514231527123423632234§).b34eb168,param1.§in const default§);
         param1.§521423117982311811123423632234§(2);
         if(_loc2_ == null || !param1.§5214236682236695123423632234§(_loc2_,this))
         {
            this.§52142326323276123423632234§(param1);
         }
      }
      
      public function §class for for§(param1:§include catch each§, param2:§5214238033238046123423632234§) : void
      {
         var _loc3_:ResourceEntry = this.§set use continue§[param1];
         if(_loc3_ != null)
         {
            _loc3_.removeListener(param2);
         }
      }
      
      private function §52142326323276123423632234§(param1:§include catch each§) : void
      {
         param1.§521423134852313498123423632234§(2);
         var _loc2_:String = this.§case catch try§(param1);
         param1.§5214236465236478123423632234§(_loc2_,this);
      }
      
      public function onResourceLoadingError(param1:§include catch each§, param2:String) : void
      {
         param1.§521423117982311811123423632234§(4);
         var _loc3_:ResourceEntry = this.§package switch implements§(param1);
         try
         {
            for each(var _loc4_ in _loc3_.listeners)
            {
               _loc4_.onResourceLoadingError(param1,param2);
            }
         }
         catch(e:Error)
         {
            var _loc8_:§include catch each§;
            §get set with§.error("ResourceLoader::onResourceLoadingError() %1 %2",[e.getStackTrace(),(_loc8_ = param1).§5214239618239631123423632234§.id]);
         }
         this.§521423100052310018123423632234§();
      }
      
      public function onResourceLoadingStart(param1:§include catch each§) : void
      {
         var _loc2_:ResourceEntry = this.§set use continue§[param1];
         _loc2_.loadingStarted = true;
         for each(var _loc3_ in _loc2_.listeners)
         {
            _loc3_.onResourceLoadingStart(param1);
         }
      }
      
      public function §native set implements§(param1:§include catch each§, param2:§5214238033238046123423632234§) : void
      {
         var _loc3_:ResourceEntry = this.§set use continue§[param1];
         if(_loc3_ == null)
         {
            _loc3_ = new ResourceEntry(param1,param2);
            this.§set use continue§[param1] = _loc3_;
         }
         else
         {
            _loc3_.addListener(param2);
         }
      }
      
      private function §521423100052310018123423632234§() : void
      {
         var _loc1_:§include catch each§ = null;
         while(this.§override package import§.size > 0 && this.§else for super§ < 5)
         {
            _loc1_ = §include catch each§(this.§override package import§.getData());
            ++this.§else for super§;
            var _loc2_:§include catch each§ = _loc1_;
            if((_loc2_.§else for include§ & 1) != 0)
            {
               this.onResourceLoadingComplete(_loc1_);
            }
            else if(§521423109342310947123423632234§ != null && §521423109342310947123423632234§.enabled)
            {
               this.§include package try§(_loc1_);
            }
            else
            {
               this.§52142326323276123423632234§(_loc1_);
            }
         }
      }
      
      private function §5214234623234636123423632234§(param1:§include catch each§) : ResourceEntry
      {
         param1.§521423134852313498123423632234§(8);
         --this.§else for super§;
         var _loc2_:ResourceEntry = this.§set use continue§[param1];
         delete this.§set use continue§[param1];
         return _loc2_;
      }
      
      private function §finally use in§(param1:§include catch each§) : void
      {
         if(§521423109342310947123423632234§ != null && §521423109342310947123423632234§.enabled)
         {
            param1.§521423132912313304123423632234§(this);
         }
      }
      
      public function §break catch return§(param1:§include catch each§, param2:§5214238033238046123423632234§, param3:int) : void
      {
         this.§native set implements§(param1,param2);
         var _loc4_:§include catch each§ = param1;
         if((_loc4_.§else for include§ & 8) == 0)
         {
            param1.§521423117982311811123423632234§(8);
            param1.§521423127412312754123423632234§ = "Queued";
            this.§override package import§.putData(param1,param3);
            this.§521423100052310018123423632234§();
         }
      }
      
      private function §package switch implements§(param1:§include catch each§) : ResourceEntry
      {
         param1.§521423127412312754123423632234§ = "Loaded";
         var _loc2_:ResourceEntry = this.§5214234623234636123423632234§(param1);
         if(!param1.§5214233843233856123423632234§(2 | 4))
         {
            this.§finally use in§(param1);
         }
         return _loc2_;
      }
      
      protected function §case catch try§(param1:§include catch each§) : String
      {
         var _loc5_:Long;
         var _loc4_:§include catch each§;
         var _loc7_:Long;
         var _loc6_:§include catch each§;
         var _loc9_:Long;
         var _loc8_:§include catch each§;
         return §class finally package§.resourcesRootUrl + §implements var get§.getResourcePath(param1.§5214239618239631123423632234§.id.c3a10ab6,(_loc5_ = (_loc4_ = param1).§5214239618239631123423632234§.id).b34eb168,(_loc7_ = (_loc6_ = param1).§5214239618239631123423632234§.§5214231514231527123423632234§).c3a10ab6,(_loc9_ = (_loc8_ = param1).§5214239618239631123423632234§.§5214231514231527123423632234§).b34eb168);
      }
      
      public function onResourceLoadingFatalError(param1:§include catch each§, param2:String) : void
      {
         var _loc3_:ResourceEntry = this.§5214234623234636123423632234§(param1);
         this.§521423100052310018123423632234§();
         for each(var _loc4_ in _loc3_.listeners)
         {
            _loc4_.onResourceLoadingFatalError(param1,param2);
         }
      }
      
      public function §do use each§(param1:§include catch each§, param2:ByteArray) : void
      {
         var _loc5_:Long;
         var _loc4_:§include catch each§;
         this.§5214235533235546123423632234§.§521423101952310208123423632234§(param1.§5214239618239631123423632234§.id,(_loc5_ = (_loc4_ = param1).§5214239618239631123423632234§.§5214231514231527123423632234§).b34eb168,param2,param1.§var catch import§,param1.§in const default§);
      }
      
      public function onResourceLoadingComplete(param1:§include catch each§) : void
      {
         var _loc2_:ResourceEntry = this.§package switch implements§(param1);
         if(_loc2_ != null)
         {
            for each(var _loc3_ in _loc2_.listeners)
            {
               try
               {
                  _loc3_.onResourceLoadingComplete(param1);
               }
               catch(e:Error)
               {
                  §get set with§.error("ResourceLoader::onResourceLoadingComplete() loadingComplete listener invocation error: %1",[e.getStackTrace()]);
               }
            }
         }
         this.§521423100052310018123423632234§();
      }
   }
}

class ResourceEntry
{
   
   public var resource:§include catch each§;
   
   public var listeners:Vector.<§5214238033238046123423632234§>;
   
   public var loadingStarted:Boolean;
   
   public function ResourceEntry(param1:§include catch each§, param2:§5214238033238046123423632234§)
   {
      super();
      this.resource = param1;
      this.listeners = new Vector.<§5214238033238046123423632234§>(1);
      this.listeners[0] = param2;
   }
   
   public function addListener(param1:§5214238033238046123423632234§) : void
   {
      if(this.listeners.indexOf(param1) < 0)
      {
         this.listeners[listeners.length] = param1;
         if(this.loadingStarted)
         {
            param1.onResourceLoadingStart(this.resource);
         }
      }
   }
   
   public function removeListener(param1:§5214238033238046123423632234§) : void
   {
      var _loc2_:int = int(this.listeners.indexOf(param1));
      if(_loc2_ >= 0)
      {
         this.listeners.removeAt(_loc2_);
      }
   }
}

class QueueItem
{
   
   public var data:Object;
   
   public var priority:int;
   
   public var next:QueueItem;
   
   public var prev:QueueItem;
   
   public function QueueItem(param1:Object, param2:int)
   {
      super();
      this.data = param1;
      this.priority = param2;
   }
}

class PriorityQueue
{
   
   private var head:QueueItem;
   
   private var tail:QueueItem;
   
   private var _size:int;
   
   public function PriorityQueue()
   {
      super();
      this.head = new QueueItem(null,0);
      this.tail = new QueueItem(null,0);
      this.head.next = this.tail;
      this.tail.prev = this.head;
   }
   
   public function get size() : int
   {
      return this._size;
   }
   
   public function putData(param1:Object, param2:int) : void
   {
      var _loc3_:QueueItem = this.tail.prev;
      while(_loc3_ != this.head && _loc3_.priority < param2)
      {
         _loc3_ = _loc3_.prev;
      }
      var _loc4_:QueueItem = new QueueItem(param1,param2);
      _loc4_.next = _loc3_.next;
      _loc4_.prev = _loc3_;
      _loc4_.next.prev = _loc4_;
      _loc3_.next = _loc4_;
      ++this._size;
   }
   
   public function getData() : Object
   {
      if(this._size == 0)
      {
         return null;
      }
      var _loc1_:QueueItem = this.head.next;
      _loc1_.next.prev = _loc1_.prev;
      _loc1_.prev.next = _loc1_.next;
      _loc1_.next = null;
      _loc1_.prev = null;
      --this._size;
      return _loc1_.data;
   }
}
