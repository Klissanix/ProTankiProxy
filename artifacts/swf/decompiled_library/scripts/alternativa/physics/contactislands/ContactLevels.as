package alternativa.physics.contactislands
{
   import §each var null§.§const throw§;
   import §each var null§.§do false§;
   
   public class ContactLevels
   {
      
      private const §set switch dynamic§:Vector.<§do false§> = new Vector.<§do false§>();
      
      public function ContactLevels()
      {
         super();
      }
      
      private function d501d32b(param1:§do false§, param2:Vector.<§const throw§>) : §const throw§
      {
         if(param2.indexOf(param1.§5214234954234967123423632234§) < 0)
         {
            return param1.§5214234954234967123423632234§;
         }
         return param1.§get var final§;
      }
      
      private function b5e39f99(param1:Vector.<§const throw§>, param2:§do false§) : Boolean
      {
         return param1.indexOf(param2.§5214234954234967123423632234§) >= 0 || param1.indexOf(param2.§get var final§) >= 0;
      }
      
      public function init(param1:Vector.<§do false§>) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = int(param1.length);
         this.§set switch dynamic§.length = _loc2_;
         while(_loc3_ < _loc2_)
         {
            this.§set switch dynamic§[_loc3_] = param1[_loc3_];
            _loc3_++;
         }
      }
      
      public function getNextLevel(param1:Vector.<§const throw§>, param2:Vector.<§do false§>, param3:Vector.<§const throw§>) : void
      {
         var _loc5_:int = 0;
         var _loc4_:§do false§ = null;
         _loc5_ = 0;
         while(_loc5_ < this.§set switch dynamic§.length)
         {
            _loc4_ = this.§set switch dynamic§[_loc5_];
            if(this.b5e39f99(param1,_loc4_))
            {
               param2[param2.length] = _loc4_;
               param3[param3.length] = this.d501d32b(_loc4_,param1);
               this.b6fe22c6(_loc5_);
               _loc5_--;
            }
            _loc5_++;
         }
         _loc5_ = 0;
         while(_loc5_ < this.§set switch dynamic§.length)
         {
            _loc4_ = this.§set switch dynamic§[_loc5_];
            if(param3.indexOf(_loc4_.§5214234954234967123423632234§) >= 0 && param3.indexOf(_loc4_.§get var final§) >= 0)
            {
               param2[param2.length] = _loc4_;
               this.b6fe22c6(_loc5_);
               _loc5_--;
            }
            _loc5_++;
         }
      }
      
      private function b6fe22c6(param1:int) : void
      {
         var _loc2_:int = this.§set switch dynamic§.length - 1;
         this.§set switch dynamic§[param1] = this.§set switch dynamic§[_loc2_];
         this.§set switch dynamic§.length = _loc2_;
      }
      
      private function aa998ef(param1:§do false§) : Boolean
      {
         return !(param1.§5214234954234967123423632234§.§set for implements§ && param1.§get var final§.§set for implements§);
      }
      
      public function hasContacts() : Boolean
      {
         return this.§set switch dynamic§.length > 0;
      }
      
      public function getStaticLevel(param1:Vector.<§do false§>, param2:Vector.<§const throw§>) : void
      {
         var _loc4_:int = 0;
         var _loc3_:§do false§ = null;
         _loc4_ = 0;
         while(_loc4_ < this.§set switch dynamic§.length)
         {
            _loc3_ = this.§set switch dynamic§[_loc4_];
            if(this.aa998ef(_loc3_))
            {
               param1[param1.length] = _loc3_;
               param2[param2.length] = this.d710873e(_loc3_);
               this.b6fe22c6(_loc4_);
               _loc4_--;
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§set switch dynamic§.length)
         {
            _loc3_ = this.§set switch dynamic§[_loc4_];
            if(param2.indexOf(_loc3_.§5214234954234967123423632234§) >= 0 && param2.indexOf(_loc3_.§get var final§) >= 0)
            {
               param1[param1.length] = _loc3_;
               this.b6fe22c6(_loc4_);
               _loc4_--;
            }
            _loc4_++;
         }
      }
      
      private function d710873e(param1:§do false§) : §const throw§
      {
         if(param1.§5214234954234967123423632234§.§set for implements§)
         {
            return param1.§5214234954234967123423632234§;
         }
         return param1.§get var final§;
      }
      
      public function clear() : void
      {
         this.§set switch dynamic§.length = 0;
      }
   }
}

