package alternativa.physics.contactislands
{
   import §each var null§.§521423113812311394123423632234§;
   import §each var null§.§do false§;
   import §each var null§.§if var in§;
   
   public class IslandsGenerator
   {
      
      public const §for for var§:Vector.<ContactIsland> = new Vector.<ContactIsland>();
      
      private const §5214233654233667123423632234§:Vector.<ContactIsland> = new Vector.<ContactIsland>(60);
      
      private const §521423114642311477123423632234§:§521423113812311394123423632234§ = new §521423113812311394123423632234§();
      
      private var §5214234570234583123423632234§:§if var in§;
      
      public function IslandsGenerator(param1:§if var in§)
      {
         super();
         this.§5214234570234583123423632234§ = param1;
      }
      
      public function generate(param1:Vector.<§do false§>, param2:int) : void
      {
         this.b4b2029d(param1,param2);
         this.f65009b4(param1);
      }
      
      final private function b4b2029d(param1:Vector.<§do false§>, param2:int) : void
      {
         var _loc4_:int = 0;
         var _loc3_:§do false§ = null;
         this.§521423114642311477123423632234§.init(param2);
         var _loc5_:int = int(param1.length);
         while(_loc4_ < _loc5_)
         {
            _loc3_ = param1[_loc4_];
            if(_loc3_.§5214234954234967123423632234§.§set for implements§ && _loc3_.§get var final§.§set for implements§)
            {
               this.§521423114642311477123423632234§.§5214236701236714123423632234§(_loc3_.§5214234954234967123423632234§.id,_loc3_.§get var final§.id);
            }
            _loc4_++;
         }
      }
      
      final private function f65009b4(param1:Vector.<§do false§>) : void
      {
         var _loc5_:ContactIsland = null;
         var _loc6_:int = 0;
         var _loc2_:§do false§ = null;
         var _loc4_:int = 0;
         var _loc3_:int = int(param1.length);
         _loc6_ = 0;
         while(_loc6_ < _loc3_)
         {
            _loc2_ = param1[_loc6_];
            if(_loc2_.§5214234954234967123423632234§.§set for implements§)
            {
               _loc4_ = this.§521423114642311477123423632234§.§set false§(_loc2_.§5214234954234967123423632234§.id);
            }
            else
            {
               _loc4_ = this.§521423114642311477123423632234§.§set false§(_loc2_.§get var final§.id);
            }
            _loc5_ = this.§5214233654233667123423632234§[_loc4_];
            if(_loc5_ == null)
            {
               _loc5_ = ContactIsland.create();
               this.§for for var§[this.§for for var§.length] = _loc5_;
               this.§5214233654233667123423632234§[_loc4_] = _loc5_;
            }
            _loc5_.§521423109502310963123423632234§[_loc5_.§521423109502310963123423632234§.length] = _loc2_;
            _loc6_++;
         }
         _loc3_ = int(this.§for for var§.length);
         _loc6_ = 0;
         while(_loc6_ < _loc3_)
         {
            _loc5_ = this.§for for var§[_loc6_];
            _loc5_.init(this.§5214234570234583123423632234§);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < 60)
         {
            §5214233654233667123423632234§[_loc6_] = null;
            _loc6_++;
         }
      }
      
      public function clear() : void
      {
         var _loc2_:int = 0;
         var _loc3_:ContactIsland = null;
         var _loc1_:int = int(this.§for for var§.length);
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.§for for var§[_loc2_];
            _loc3_.dispose();
            _loc2_++;
         }
         this.§for for var§.length = 0;
      }
   }
}

