package alternativa.tanks.battle.events
{
   import flash.utils.Dictionary;
   
   public class BattleEventDispatcherImpl implements BattleEventDispatcher
   {
      
      private var §override package package§:int;
      
      private var §set catch for§:Dictionary;
      
      private var §521423109002310913123423632234§:Dictionary;
      
      private var §dynamic const break§:Dictionary;
      
      private var §5214239615239628123423632234§:Dictionary;
      
      public function BattleEventDispatcherImpl()
      {
         super();
         this.§set catch for§ = new Dictionary();
         this.§521423109002310913123423632234§ = new Dictionary();
         this.§dynamic const break§ = new Dictionary();
         this.§5214239615239628123423632234§ = new Dictionary();
      }
      
      private static function addListener(param1:Dictionary, param2:Class, param3:§if use default§) : void
      {
         var _loc4_:Vector.<§if use default§> = param1[param2];
         if(_loc4_ == null)
         {
            _loc4_ = new Vector.<§if use default§>();
            param1[param2] = _loc4_;
         }
         if(_loc4_.indexOf(param3) < 0)
         {
            _loc4_.push(param3);
         }
      }
      
      private static function removeListener(param1:Dictionary, param2:Class, param3:§if use default§) : void
      {
         var _loc5_:int = 0;
         var _loc4_:Vector.<§if use default§> = param1[param2];
         if(_loc4_ != null)
         {
            _loc5_ = _loc4_.indexOf(param3);
            if(_loc5_ >= 0)
            {
               if(_loc4_.length == 1)
               {
                  delete param1[param2];
               }
               else
               {
                  _loc4_.removeAt(_loc5_);
               }
            }
         }
      }
      
      public function clearDispatchedOnce() : void
      {
         this.§5214239615239628123423632234§ = new Dictionary();
      }
      
      private function fced654() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc3_:Vector.<§if use default§> = null;
         if(this.§override package package§ > 0)
         {
            return;
         }
         for(_loc5_ in this.§dynamic const break§)
         {
            _loc3_ = this.§dynamic const break§[_loc5_];
            delete this.§dynamic const break§[_loc5_];
            _loc4_ = int(_loc3_.length);
            _loc2_ = 0;
            while(_loc2_ < _loc4_)
            {
               removeListener(this.§set catch for§,_loc5_,_loc3_[_loc2_]);
               _loc2_++;
            }
         }
         for(_loc5_ in this.§521423109002310913123423632234§)
         {
            _loc3_ = this.§521423109002310913123423632234§[_loc5_];
            delete this.§521423109002310913123423632234§[_loc5_];
            _loc4_ = int(_loc3_.length);
            _loc2_ = 0;
            while(_loc2_ < _loc4_)
            {
               addListener(this.§set catch for§,_loc5_,_loc3_[_loc2_]);
               _loc2_++;
            }
         }
      }
      
      public function removeBattleEventListener(param1:Class, param2:§if use default§) : void
      {
         if(this.§override package package§ > 0)
         {
            removeListener(this.§521423109002310913123423632234§,param1,param2);
            addListener(this.§dynamic const break§,param1,param2);
         }
         else
         {
            removeListener(this.§set catch for§,param1,param2);
         }
      }
      
      public function dispatchEventOnce(param1:Object) : void
      {
         if(!this.§5214239615239628123423632234§[param1.constructor])
         {
            this.§5214239615239628123423632234§[param1.constructor] = true;
            this.dispatchEvent(param1);
         }
      }
      
      public function addBattleEventListener(param1:Class, param2:§if use default§) : void
      {
         if(this.§override package package§ > 0)
         {
            removeListener(this.§dynamic const break§,param1,param2);
            addListener(this.§521423109002310913123423632234§,param1,param2);
         }
         else
         {
            addListener(this.§set catch for§,param1,param2);
         }
      }
      
      public function dispatchEvent(param1:Object) : void
      {
         var _loc3_:§if use default§ = null;
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         ++this.§override package package§;
         var _loc5_:Vector.<§if use default§> = this.§set catch for§[param1.constructor];
         if(_loc5_ != null)
         {
            _loc2_ = int(_loc5_.length);
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               _loc3_ = §if use default§(_loc5_[_loc4_]);
               _loc3_.handleBattleEvent(param1);
               _loc4_++;
            }
         }
         --this.§override package package§;
         this.fced654();
      }
   }
}

