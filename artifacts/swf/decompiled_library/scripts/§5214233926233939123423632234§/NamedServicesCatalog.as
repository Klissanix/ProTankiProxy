package §5214233926233939123423632234§
{
   import flash.utils.Dictionary;
   
   public class NamedServicesCatalog
   {
      
      private var §5214239341239354123423632234§:Dictionary;
      
      private var §false var catch§:Class;
      
      public function NamedServicesCatalog(param1:Class)
      {
         super();
         this.§false var catch§ = param1;
         this.§5214239341239354123423632234§ = new Dictionary();
      }
      
      public function getService(param1:String) : Object
      {
         if(param1 == null)
         {
            throw new ArgumentError("name can\'t be null");
         }
         return this.§5214239341239354123423632234§[param1];
      }
      
      public function addService(param1:String, param2:Object) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("name can\'t be null");
         }
         var _loc3_:Object = this.§5214239341239354123423632234§[param1];
         if(_loc3_ != null && _loc3_ != param2)
         {
            throw new ArgumentError("Service " + this.§false var catch§ + "with name \'" + param1 + "\' is already registered");
         }
         this.§5214239341239354123423632234§[param1] = param2;
      }
      
      public function getServicesInfo() : Vector.<ServiceInfo>
      {
         var _loc1_:Vector.<ServiceInfo> = new Vector.<ServiceInfo>();
         for(var _loc2_ in this.§5214239341239354123423632234§)
         {
            _loc1_[_loc1_.length] = new ServiceInfo(this.§5214239341239354123423632234§[_loc2_],new <ServiceParam>[new ServiceParam("name",_loc2_)]);
         }
         return _loc1_;
      }
      
      public function get serviceList() : Vector.<Object>
      {
         var _loc2_:Vector.<Object> = new Vector.<Object>();
         for each(var _loc1_ in this.§5214239341239354123423632234§)
         {
            _loc2_[_loc2_.length] = _loc1_;
         }
         return _loc2_;
      }
      
      public function removeService(param1:String) : Object
      {
         if(param1 == null)
         {
            throw new ArgumentError("name can\'t be null");
         }
         var _loc2_:Object = this.§5214239341239354123423632234§[param1];
         delete this.§5214239341239354123423632234§[param1];
         return _loc2_;
      }
   }
}

