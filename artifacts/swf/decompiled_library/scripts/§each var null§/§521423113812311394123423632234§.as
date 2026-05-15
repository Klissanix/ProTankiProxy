package §each var null§
{
   public class §521423113812311394123423632234§
   {
      
      private var §continue package set§:Vector.<int>;
      
      private var §521423102842310297123423632234§:Vector.<int>;
      
      public function §521423113812311394123423632234§()
      {
         super();
         this.§continue package set§ = new Vector.<int>(1);
         this.§521423102842310297123423632234§ = new Vector.<int>(1);
      }
      
      public function §set false§(param1:int) : int
      {
         var _loc2_:int = param1;
         while(this.§continue package set§[_loc2_] != _loc2_)
         {
            _loc2_ = this.§continue package set§[_loc2_];
         }
         return _loc2_;
      }
      
      public function §5214236701236714123423632234§(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc6_:int = 0;
         var _loc5_:int = 0;
         var _temp_2:* = this;
         var _temp_1:* = param1;
         var _loc9_:int = param2;
         var _loc8_:int = _temp_1;
         var _loc7_:§521423113812311394123423632234§ = _temp_2;
         if(§§pop().§set false§(_loc8_) != _loc7_.§set false§(_loc9_))
         {
            _loc3_ = this.§set false§(param1);
            _loc4_ = this.§set false§(param2);
            _loc6_ = this.§521423102842310297123423632234§[_loc3_];
            _loc5_ = this.§521423102842310297123423632234§[_loc4_];
            if(_loc6_ > _loc5_)
            {
               this.§continue package set§[_loc4_] = _loc3_;
               this.§521423102842310297123423632234§[_loc3_] += _loc5_;
            }
            else
            {
               this.§continue package set§[_loc3_] = _loc4_;
               this.§521423102842310297123423632234§[_loc4_] += _loc6_;
            }
         }
      }
      
      final private function §5214239064239077123423632234§(param1:int, param2:int) : Boolean
      {
         return this.§set false§(param1) == this.§set false§(param2);
      }
      
      public function init(param1:int) : void
      {
         var _loc2_:int = 0;
         this.§continue package set§.length = param1;
         this.§521423102842310297123423632234§.length = param1;
         while(_loc2_ < param1)
         {
            this.§continue package set§[_loc2_] = _loc2_;
            this.§521423102842310297123423632234§[_loc2_] = 1;
            _loc2_++;
         }
      }
   }
}

