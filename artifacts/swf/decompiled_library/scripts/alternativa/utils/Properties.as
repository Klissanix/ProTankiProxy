package alternativa.utils
{
   public class Properties
   {
      
      private var data:Object;
      
      public function Properties(param1:Object = null)
      {
         super();
         this.data = param1 || {};
      }
      
      public function getPropertyDef(param1:String, param2:String) : String
      {
         return String(this.data[param1]) || param2;
      }
      
      public function toString() : String
      {
         return "";
      }
      
      public function get propertyNames() : Vector.<String>
      {
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(var _loc2_ in this.data)
         {
            _loc1_[_loc1_.length] = _loc2_;
         }
         return _loc1_;
      }
      
      public function getProperty(param1:String) : String
      {
         return this.data[param1];
      }
      
      public function removeProperty(param1:String) : void
      {
         delete this.data[param1];
      }
      
      public function setProperty(param1:String, param2:String) : void
      {
         if(!param2)
         {
            throw new ArgumentError("Empty values are not allowed");
         }
         this.data[param1] = param2;
      }
   }
}

