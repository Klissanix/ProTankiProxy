package alternativa.osgi
{
   import §5214233926233939123423632234§.ServiceInfo;
   import §5214233926233939123423632234§.ServiceListenersCatalog;
   import §5214233926233939123423632234§.ServicesCatalog;
   import alternativa.osgi.service.§5214233010233023123423632234§;
   import alternativa.osgi.service.clientlog.§while false§;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.osgi.service.logging.§dynamic use try§;
   import alternativa.osgi.service.logging.impl.LogServiceImpl;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   import §native package final§.§5214238689238702123423632234§;
   import §native package final§.§throw var static§;
   
   public class OSGi
   {
      
      public static var §try set return§:§while false§;
      
      private static var instance:OSGi;
      
      private var §5214237093237106123423632234§:Object;
      
      private var services:ServicesCatalog;
      
      private var §else set if§:Dictionary;
      
      private var §5214239281239294123423632234§:Dictionary;
      
      private var §get set with§:§dynamic use try§;
      
      public function OSGi()
      {
         super();
         this.§5214237093237106123423632234§ = {};
         this.services = new ServicesCatalog();
         this.§else set if§ = new Dictionary();
         this.§5214239281239294123423632234§ = new Dictionary();
         if(instance == null)
         {
            instance = this;
            this.d5f6cf52();
            return;
         }
         throw new Error("Only one instance of OSGi class is allowed");
      }
      
      public static function getInstance() : OSGi
      {
         if(instance == null)
         {
            instance = new OSGi();
         }
         return instance;
      }
      
      private static function c4fa3380(param1:Class, param2:Object, param3:Vector.<ListenerInfo>) : void
      {
         var _loc6_:* = undefined;
         for each(var _loc4_ in param3)
         {
            _loc6_ = _loc4_.implementations;
            for each(var _loc5_ in _loc6_)
            {
               if(_loc5_ == param2)
               {
                  _loc4_.listener.serviceUnregistered(param1,param2);
                  break;
               }
            }
         }
      }
      
      public static function paramsToString(param1:Dictionary) : String
      {
         var _loc2_:String = "";
         for(var _loc3_ in param1)
         {
            _loc2_ += " (" + _loc3_ + " = " + param1[_loc3_] + ")";
         }
         return _loc2_;
      }
      
      private function b2470f10(param1:Class) : Vector.<ListenerInfo>
      {
         var _loc4_:* = undefined;
         var _loc8_:* = undefined;
         var _loc5_:ListenerInfo = null;
         var _loc6_:Object = null;
         var _loc9_:Vector.<ListenerInfo> = new Vector.<ListenerInfo>();
         var _loc3_:ServiceListenersCatalog = this.§5214239281239294123423632234§[param1];
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.getListeners();
            if(_loc4_ != null)
            {
               for each(var _loc7_ in _loc4_)
               {
                  _loc8_ = _loc3_.getFilters(_loc7_);
                  _loc5_ = new ListenerInfo(_loc7_);
                  for each(var _loc2_ in _loc8_)
                  {
                     _loc6_ = this.services.getService(param1,_loc2_);
                     if(_loc6_ != null)
                     {
                        _loc5_.addService(_loc6_);
                     }
                  }
                  _loc9_[_loc9_.length] = _loc5_;
               }
            }
         }
         return _loc9_;
      }
      
      public function registerService(param1:Class, param2:Object, param3:Dictionary = null) : void
      {
         this.services.addService(param1,param2,param3);
         this.d7501353(param1);
         this.d5bf65c0(param1,param2);
      }
      
      public function get serviceList() : Vector.<Object>
      {
         return this.services.serviceList;
      }
      
      private function d5bf65c0(param1:Class, param2:Object) : void
      {
         var _loc8_:* = undefined;
         var _loc6_:Object = null;
         var _loc4_:ServiceListenersCatalog = this.§5214239281239294123423632234§[param1];
         if(_loc4_ == null)
         {
            return;
         }
         var _loc5_:Vector.<§5214233010233023123423632234§> = _loc4_.getListeners();
         if(_loc5_ == null)
         {
            return;
         }
         for each(var _loc7_ in _loc5_)
         {
            _loc8_ = _loc4_.getFilters(_loc7_);
            for each(var _loc3_ in _loc8_)
            {
               _loc6_ = this.services.getService(param1,_loc3_);
               if(_loc6_ == param2)
               {
                  _loc7_.serviceRegistered(param1,param2);
                  break;
               }
            }
         }
      }
      
      public function uninstallBundle(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§throw var static§ = null;
         if(param1 == null)
         {
            throw new ArgumentError("Bundle name is null");
         }
         var _loc5_:§5214238689238702123423632234§ = this.§5214237093237106123423632234§[param1];
         if(_loc5_ == null)
         {
            throw new Error("Bundle " + param1 + " not found");
         }
         var _loc2_:Vector.<§throw var static§> = _loc5_.activators;
         if(_loc2_ != null)
         {
            while(_loc3_ < _loc2_.length)
            {
               _loc4_ = _loc2_[_loc3_];
               _loc4_.stop(this);
               _loc3_++;
            }
         }
         delete this.§5214237093237106123423632234§[param1];
      }
      
      private function d5f6cf52() : void
      {
         var _loc1_:LogServiceImpl = new LogServiceImpl();
         this.§get set with§ = _loc1_.getLogger("osgi");
         this.registerService(LogService,_loc1_);
      }
      
      private function d7501353(param1:Class) : void
      {
         var _loc2_:* = undefined;
         if(this.§else set if§[param1] != null)
         {
            _loc2_ = this.§else set if§[param1];
            for each(var _loc3_ in _loc2_)
            {
               _loc3_.injectFunction(this.services.getService(param1,_loc3_.filter));
            }
         }
      }
      
      public function injectService(param1:Class, param2:Function, param3:Function, param4:String = "") : void
      {
         if(!this.§else set if§[param1])
         {
            this.§else set if§[param1] = new <InjectPoint>[new InjectPoint(param2,param3,param4)];
         }
         else
         {
            this.§else set if§[param1].push(new InjectPoint(param2,param3,param4));
         }
         var _loc5_:Object = this.services.getService(param1,param4);
         param2(_loc5_);
      }
      
      public function getService(param1:Class, param2:String = "") : Object
      {
         return this.services.getService(param1,param2);
      }
      
      public function unregisterService(param1:Class, param2:Dictionary = null) : void
      {
         var _loc6_:int = 0;
         var _loc3_:InjectPoint = null;
         var _loc7_:Vector.<ListenerInfo> = this.b2470f10(param1);
         var _loc5_:Object = this.services.removeService(param1,param2);
         if(_loc5_ == null)
         {
            return;
         }
         var _loc4_:Vector.<InjectPoint> = this.§else set if§[param1];
         if(_loc4_ != null)
         {
            _loc6_ = _loc4_.length - 1;
            while(_loc6_ >= 0)
            {
               _loc3_ = _loc4_[_loc6_];
               if(_loc3_.valueReturnInjectFunction() == _loc5_)
               {
                  _loc3_.injectFunction(null);
               }
               _loc6_--;
            }
         }
         c4fa3380(param1,_loc5_,_loc7_);
      }
      
      public function removeServiceRegisterListener(param1:Class, param2:§5214233010233023123423632234§, param3:String = "") : void
      {
         var _loc4_:ServiceListenersCatalog = this.§5214239281239294123423632234§[param1];
         if(_loc4_ != null)
         {
            _loc4_.removeListener(param2,param3);
         }
      }
      
      public function installBundle(param1:§5214238689238702123423632234§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§throw var static§ = null;
         if(this.§5214237093237106123423632234§[param1.name])
         {
            throw new Error("Bundle " + param1.name + " is already installed");
         }
         this.§5214237093237106123423632234§[param1.name] = param1;
         var _loc2_:Vector.<§throw var static§> = param1.activators;
         if(_loc2_ != null)
         {
            while(_loc3_ < _loc2_.length)
            {
               _loc4_ = _loc2_[_loc3_];
               _loc4_.start(this);
               _loc3_++;
            }
         }
      }
      
      public function getServicesInfo() : Vector.<ServiceInfo>
      {
         return this.services.getServicesInfo();
      }
      
      public function registerServiceMulti(param1:Array, param2:Object, param3:Dictionary = null) : void
      {
         for each(var _loc4_ in param1)
         {
            this.registerService(_loc4_,param2,param3);
         }
      }
      
      public function createSharedObject(param1:String, param2:String = null, param3:Boolean = false) : SharedObject
      {
         return SharedObject.getLocal(param1,param2,param3);
      }
      
      public function get bundleList() : Vector.<§5214238689238702123423632234§>
      {
         var _loc1_:Vector.<§5214238689238702123423632234§> = new Vector.<§5214238689238702123423632234§>();
         for each(var _loc2_ in this.§5214237093237106123423632234§)
         {
            _loc1_[_loc1_.length] = _loc2_;
         }
         return _loc1_;
      }
      
      public function addServiceRegisterListener(param1:Class, param2:§5214233010233023123423632234§, param3:String = "") : void
      {
         var _loc4_:ServiceListenersCatalog = this.§5214239281239294123423632234§[param1];
         if(_loc4_ == null)
         {
            _loc4_ = new ServiceListenersCatalog();
            this.§5214239281239294123423632234§[param1] = _loc4_;
         }
         _loc4_.addListener(param2,param3);
      }
   }
}

import alternativa.osgi.service.§5214233010233023123423632234§;

class InjectPoint
{
   
   public var injectFunction:Function;
   
   public var valueReturnInjectFunction:Function;
   
   public var filter:String;
   
   public function InjectPoint(param1:Function, param2:Function, param3:String)
   {
      super();
      this.injectFunction = param1;
      this.valueReturnInjectFunction = param2;
      this.filter = param3;
   }
}

class ListenerInfo
{
   
   public var listener:§5214233010233023123423632234§;
   
   public var implementations:Vector.<Object> = new Vector.<Object>();
   
   public function ListenerInfo(param1:§5214233010233023123423632234§)
   {
      super();
      this.listener = param1;
   }
   
   public function addService(param1:Object) : void
   {
      if(this.implementations.indexOf(param1) == -1)
      {
         this.implementations[implementations.length] = param1;
      }
   }
}
