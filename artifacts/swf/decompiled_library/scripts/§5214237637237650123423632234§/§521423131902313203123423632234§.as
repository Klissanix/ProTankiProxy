package §5214237637237650123423632234§
{
   import §5214231337231350123423632234§.§5214232012232025123423632234§;
   import §5214231366231379123423632234§.§default catch native§;
   import §5214238062238075123423632234§.§const const const§;
   import §each var null§.§const throw§;
   
   public class §521423131902313203123423632234§
   {
      
      private var §521423131852313198123423632234§:§const const const§;
      
      private var §5214239310239323123423632234§:Number;
      
      public function §521423131902313203123423632234§(param1:§const const const§, param2:Number = 0)
      {
         super();
         this.§521423131852313198123423632234§ = param1;
         this.§5214239310239323123423632234§ = param2;
      }
      
      public function §override package dynamic§(param1:Number, param2:Vector.<§default catch native§>) : Number
      {
         var _loc4_:§default catch native§ = null;
         var _loc5_:Number = 1;
         var _loc3_:Number = 0;
         for each(_loc4_ in param2)
         {
            _loc3_ += this.§5214235595235608123423632234§(param1,_loc4_) * _loc5_;
            _loc5_ *= this.§5214239310239323123423632234§;
         }
         return _loc3_;
      }
      
      private function §var package for§(param1:§5214232012232025123423632234§, param2:Number) : Number
      {
         return this.§521423131852313198123423632234§.§if set continue§(param1.§521423110872311100123423632234§(),param1.§override var case§(),param2);
      }
      
      public function §5214236071236084123423632234§(param1:Number, param2:Vector.<§5214232012232025123423632234§>) : Number
      {
         var _loc4_:§5214232012232025123423632234§ = null;
         var _loc5_:Number = 0;
         var _loc3_:int = param2.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = param2[_loc3_];
            _loc5_ = Math.max(this.§var package for§(_loc4_,param1) + this.§5214239310239323123423632234§ * _loc5_,_loc5_);
            _loc3_--;
         }
         return _loc5_;
      }
      
      private function §5214235595235608123423632234§(param1:Number, param2:§default catch native§) : Number
      {
         var _loc3_:§const throw§ = param2.§521423105112310524123423632234§.§5214232783232796123423632234§;
         if(param2.§521423136442313657123423632234§)
         {
            return 0;
         }
         return this.§521423131852313198123423632234§.§if set continue§(_loc3_.§521423122212312234123423632234§,param2.§5214232932232945123423632234§,param1);
      }
   }
}

