package §class set do§
{
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   
   public class ObjectCache
   {
      
      private var size:int;
      
      private var objects:Vector.<Object>;
      
      public function ObjectCache()
      {
         super();
         this.objects = new Vector.<Object>();
      }
      
      public function get() : Object
      {
         if(this.isEmpty())
         {
            throw new Error();
         }
         --this.size;
         var _loc1_:Object = this.objects[this.size];
         this.objects[this.size] = null;
         return _loc1_;
      }
      
      public function put(param1:Object) : void
      {
         this.objects[this.size++] = param1;
      }
      
      public function clear() : void
      {
         for each(var _loc1_ in this.objects)
         {
            if(_loc1_ is §521423117662311779123423632234§)
            {
               §521423117662311779123423632234§(_loc1_).close();
            }
         }
         this.objects.length = 0;
         this.size = 0;
      }
      
      public function isEmpty() : Boolean
      {
         return this.size == 0;
      }
   }
}

