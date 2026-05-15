package §5214233926233939123423632234§
{
   import flash.utils.Dictionary;
   
   public class ServicesCatalog
   {
      
      protected var §5214239741239754123423632234§:Dictionary;
      
      protected var §default switch else§:Dictionary;
      
      public function ServicesCatalog()
      {
         super();
         this.§5214239741239754123423632234§ = new Dictionary();
         this.§default switch else§ = new Dictionary();
      }
      
      public function getNameByFilter(param1:String) : String
      {
         var _loc4_:String = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:RegExp = / /gi;
         param1 = param1.replace(_loc2_,"");
         var _loc3_:int = param1.indexOf("name=");
         if(_loc3_ != -1)
         {
            _loc4_ = param1.substr(_loc3_ + 5,param1.length - _loc3_ - 5);
            _loc3_ = _loc4_.indexOf(")");
            if(_loc3_ != -1)
            {
               return _loc4_.substr(0,_loc3_);
            }
            return _loc4_;
         }
         return null;
      }
      
      public function removeService(param1:Class, param2:Dictionary) : Object
      {
         var _loc5_:String = null;
         var _loc4_:NamedServicesCatalog = null;
         if(param2 != null)
         {
            _loc5_ = String(param2["name"]);
            if(_loc5_ != null)
            {
               _loc4_ = this.§5214239741239754123423632234§[param1];
               if(_loc4_ != null)
               {
                  return _loc4_.removeService(_loc5_);
               }
            }
            return null;
         }
         var _loc3_:Object = this.§default switch else§[param1];
         delete this.§default switch else§[param1];
         return _loc3_;
      }
      
      public function getService(param1:Class, param2:String) : Object
      {
         var _loc4_:String = null;
         var _loc3_:NamedServicesCatalog = null;
         if(param2)
         {
            _loc4_ = this.getNameByFilter(param2);
            if(_loc4_ != null)
            {
               _loc3_ = this.§5214239741239754123423632234§[param1];
               if(_loc3_ != null)
               {
                  return _loc3_.getService(_loc4_);
               }
            }
            return null;
         }
         return this.§default switch else§[param1];
      }
      
      public function get serviceList() : Vector.<Object>
      {
         var _loc3_:* = undefined;
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Vector.<Object> = new Vector.<Object>();
         for each(var _loc2_ in this.§default switch else§)
         {
            _loc5_[_loc5_.length] = _loc2_;
         }
         for each(var _loc6_ in this.§5214239741239754123423632234§)
         {
            _loc3_ = _loc6_.serviceList;
            _loc1_ = int(_loc3_.length);
            while(_loc4_ < _loc1_)
            {
               _loc2_ = _loc3_[_loc4_];
               if(_loc5_.indexOf(_loc2_) == -1)
               {
                  _loc5_[_loc5_.length] = _loc2_;
               }
               _loc4_++;
            }
         }
         return _loc5_;
      }
      
      public function getServicesInfo() : Vector.<ServiceInfo>
      {
         var _loc5_:* = undefined;
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:Vector.<ServiceInfo> = new Vector.<ServiceInfo>();
         for each(var _loc3_ in this.§default switch else§)
         {
            _loc1_[_loc1_.length] = new ServiceInfo(_loc3_,null);
         }
         for each(var _loc6_ in this.§5214239741239754123423632234§)
         {
            _loc5_ = _loc6_.getServicesInfo();
            _loc2_ = int(_loc5_.length);
            while(_loc4_ < _loc2_)
            {
               _loc1_[_loc1_.length] = _loc5_[_loc4_];
               _loc4_++;
            }
         }
         return _loc1_;
      }
      
      public function addService(param1:Class, param2:Object, param3:Dictionary) : void
      {
         var _loc5_:String = null;
         var _loc4_:NamedServicesCatalog = null;
         if(param3 == null)
         {
            if(this.§default switch else§[param1] != null)
            {
               throw new ArgumentError("Service " + param1 + " without parameters is already registered");
            }
            this.§default switch else§[param1] = param2;
         }
         else
         {
            _loc5_ = String(param3["name"]);
            if(_loc5_ == null)
            {
               throw new ArgumentError("Invalid params. You can only use the parameter \'name\'");
            }
            _loc4_ = this.§5214239741239754123423632234§[param1];
            if(_loc4_ == null)
            {
               _loc4_ = new NamedServicesCatalog(param1);
               this.§5214239741239754123423632234§[param1] = _loc4_;
            }
            _loc4_.addService(_loc5_,param2);
         }
      }
   }
}

