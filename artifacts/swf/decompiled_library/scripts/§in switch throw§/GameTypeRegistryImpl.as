package §in switch throw§
{
   import flash.utils.Dictionary;
   import §override catch default§.Long;
   import platform.client.fp10.core.registry.§override for break§;
   import platform.client.fp10.core.type.§5214232060232073123423632234§;
   import platform.client.fp10.core.type.impl.GameClass;
   
   public class GameTypeRegistryImpl implements §override for break§
   {
      
      private var §521423132772313290123423632234§:Dictionary;
      
      public function GameTypeRegistryImpl()
      {
         super();
         this.§521423132772313290123423632234§ = new Dictionary();
      }
      
      public function getClass(param1:Long) : §5214232060232073123423632234§
      {
         return this.§521423132772313290123423632234§[param1];
      }
      
      public function get classes() : Dictionary
      {
         return this.§521423132772313290123423632234§;
      }
      
      public function destroyClass(param1:Long) : void
      {
         this.§521423132772313290123423632234§[param1] = null;
      }
      
      public function createClass(param1:Long, param2:Vector.<Long>) : GameClass
      {
         var _loc3_:GameClass = new GameClass(param1,param2);
         this.§521423132772313290123423632234§[param1] = _loc3_;
         return _loc3_;
      }
   }
}

