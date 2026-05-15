package §set package in§
{
   import flash.utils.Dictionary;
   
   public class ClientObject
   {
      
      private var §null use break§:String;
      
      public var §521423138992313912123423632234§:Dictionary;
      
      public function ClientObject(param1:String)
      {
         super();
         this.§null use break§ = param1;
         this.§521423138992313912123423632234§ = new Dictionary();
      }
      
      public function removeParams(param1:Class) : Object
      {
         var _loc2_:Object = this.§521423138992313912123423632234§[param1];
         delete this.§521423138992313912123423632234§[param1];
         return _loc2_;
      }
      
      public function putParams(param1:Class, param2:Object) : void
      {
         this.§521423138992313912123423632234§[param1] = param2;
      }
      
      public function getParams(param1:Class) : Object
      {
         return this.§521423138992313912123423632234§[param1];
      }
      
      public function get id() : String
      {
         return this.§null use break§;
      }
      
      public function toString() : String
      {
         return "";
      }
   }
}

