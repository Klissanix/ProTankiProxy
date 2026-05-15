package §in switch throw§
{
   import §override catch default§.Long;
   import platform.client.fp10.core.registry.SpaceRegistry;
   import platform.client.fp10.core.type.§52142376523778123423632234§;
   
   public class SpaceRegistryImpl implements SpaceRegistry
   {
      
      private var §521423134362313449123423632234§:Vector.<§52142376523778123423632234§>;
      
      private var §in var true§:§52142376523778123423632234§;
      
      public function SpaceRegistryImpl()
      {
         super();
         this.§521423134362313449123423632234§ = new Vector.<§52142376523778123423632234§>();
      }
      
      public function get spaces() : Vector.<§52142376523778123423632234§>
      {
         return this.§521423134362313449123423632234§;
      }
      
      public function removeSpace(param1:§52142376523778123423632234§) : void
      {
         var _loc2_:int = this.§521423134362313449123423632234§.indexOf(param1);
         if(_loc2_ < 0)
         {
            throw new Error("Space not found: " + param1.id);
         }
         this.§521423134362313449123423632234§.removeAt(_loc2_);
         if(this.§in var true§ == param1)
         {
            this.§in var true§ = null;
         }
      }
      
      public function getSpace(param1:Long) : §52142376523778123423632234§
      {
         for each(var _loc2_ in this.§521423134362313449123423632234§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function set currentSpace(param1:§52142376523778123423632234§) : void
      {
         this.§in var true§ = param1;
      }
      
      public function get currentSpace() : §52142376523778123423632234§
      {
         return this.§in var true§;
      }
      
      public function addSpace(param1:§52142376523778123423632234§) : void
      {
         this.§521423134362313449123423632234§[§521423134362313449123423632234§.length] = param1;
      }
   }
}

