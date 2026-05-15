package §5214239345239358123423632234§
{
   import flash.utils.Dictionary;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class MultiGameObjectDictionary
   {
      
      private var §521423120842312097123423632234§:Dictionary;
      
      public function MultiGameObjectDictionary()
      {
         super();
         this.§521423120842312097123423632234§ = new Dictionary(true);
      }
      
      public function remove(param1:§521423120252312038123423632234§, param2:§521423120252312038123423632234§) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Vector.<§521423120252312038123423632234§> = null;
         if(param1 in this.§521423120842312097123423632234§)
         {
            _loc3_ = this.§521423120842312097123423632234§[param1];
            _loc4_ = _loc3_.indexOf(param2);
            if(_loc4_ != -1)
            {
               _loc3_.removeAt(_loc4_);
            }
         }
      }
      
      public function put(param1:§521423120252312038123423632234§, param2:§521423120252312038123423632234§) : void
      {
         var _loc3_:Vector.<§521423120252312038123423632234§> = null;
         if(param1 in this.§521423120842312097123423632234§)
         {
            this.§521423120842312097123423632234§[param1].push(param2);
         }
         else
         {
            _loc3_ = new Vector.<§521423120252312038123423632234§>();
            _loc3_.push(param2);
            this.§521423120842312097123423632234§[param1] = _loc3_;
         }
      }
      
      public function getValues(param1:§521423120252312038123423632234§) : Vector.<§521423120252312038123423632234§>
      {
         if(param1 in this.§521423120842312097123423632234§)
         {
            return this.§521423120842312097123423632234§[param1];
         }
         return new Vector.<§521423120252312038123423632234§>();
      }
      
      public function clear() : void
      {
         this.§521423120842312097123423632234§ = new Dictionary();
      }
   }
}

