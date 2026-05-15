package §5214233926233939123423632234§
{
   import alternativa.osgi.service.§5214233010233023123423632234§;
   import flash.utils.Dictionary;
   
   public class ServiceListenersCatalog
   {
      
      private var §521423120842312097123423632234§:Dictionary;
      
      private var listeners:Vector.<§5214233010233023123423632234§>;
      
      public function ServiceListenersCatalog()
      {
         super();
         this.§521423120842312097123423632234§ = new Dictionary();
         this.listeners = new Vector.<§5214233010233023123423632234§>();
      }
      
      public function removeListener(param1:§5214233010233023123423632234§, param2:String) : void
      {
         var _loc4_:Vector.<String> = this.§521423120842312097123423632234§[param1];
         var _loc3_:Number = _loc4_.indexOf(param2);
         if(_loc3_ >= 0)
         {
            _loc4_.removeAt(_loc3_);
         }
         if(_loc4_.length == 0)
         {
            delete this.§521423120842312097123423632234§[param1];
            _loc3_ = this.listeners.indexOf(param1);
            this.listeners.removeAt(_loc3_);
         }
      }
      
      public function addListener(param1:§5214233010233023123423632234§, param2:String) : void
      {
         var _loc3_:Vector.<String> = this.§521423120842312097123423632234§[param1];
         if(_loc3_ == null)
         {
            _loc3_ = new Vector.<String>();
            this.§521423120842312097123423632234§[param1] = _loc3_;
         }
         if(_loc3_.indexOf(param2) == -1)
         {
            _loc3_[_loc3_.length] = param2;
         }
         if(this.listeners.indexOf(param1) == -1)
         {
            this.listeners[listeners.length] = param1;
         }
      }
      
      public function getFilters(param1:§5214233010233023123423632234§) : Vector.<String>
      {
         return this.§521423120842312097123423632234§[param1];
      }
      
      public function getListeners() : Vector.<§5214233010233023123423632234§>
      {
         return this.listeners.concat();
      }
   }
}

