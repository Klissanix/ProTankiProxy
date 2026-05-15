package alternativa.utils
{
   public class CircularStringBuffer implements §override catch var§
   {
      
      public var §5214239495239508123423632234§:Vector.<String>;
      
      public var §5214239255239268123423632234§:int;
      
      public var §set use each§:int;
      
      private var §5214236276236289123423632234§:int;
      
      public function CircularStringBuffer(param1:int)
      {
         super();
         this.§5214236276236289123423632234§ = param1;
         this.§5214239495239508123423632234§ = new Vector.<String>(this.§5214236276236289123423632234§ + 1);
      }
      
      public function clear() : void
      {
         var _loc2_:int = 0;
         this.§5214239255239268123423632234§ = 0;
         this.§set use each§ = 0;
         var _loc1_:int = int(this.§5214239495239508123423632234§.length);
         while(_loc2_ < _loc1_)
         {
            this.§5214239495239508123423632234§[_loc2_] = null;
            _loc2_++;
         }
      }
      
      public function add(param1:String) : void
      {
         this.§5214239495239508123423632234§[this.§set use each§] = param1;
         this.§set use each§ = this.c32e763d(this.§set use each§);
         if(this.§set use each§ == this.§5214239255239268123423632234§)
         {
            this.§5214239255239268123423632234§ = this.c32e763d(this.§5214239255239268123423632234§);
         }
      }
      
      private function c32e763d(param1:int) : int
      {
         return ++param1 >= this.§5214239495239508123423632234§.length ? 0 : param1;
      }
      
      public function getStrings() : Vector.<String>
      {
         var _loc2_:int = 0;
         var _loc1_:Vector.<String> = new Vector.<String>();
         _loc2_ = this.§5214239255239268123423632234§;
         while(_loc2_ != this.§set use each§)
         {
            _loc1_[_loc1_.length] = this.§5214239495239508123423632234§[_loc2_];
            _loc2_ = this.c32e763d(_loc2_);
         }
         return _loc1_;
      }
      
      public function get capacity() : int
      {
         return this.§5214236276236289123423632234§;
      }
      
      public function set capacity(param1:int) : void
      {
         throw new Error("Unimplemented");
      }
      
      public function get size() : int
      {
         var _loc1_:int = this.§set use each§ - this.§5214239255239268123423632234§;
         if(_loc1_ < 0)
         {
            _loc1_ += this.§5214239495239508123423632234§.length;
         }
         return _loc1_;
      }
      
      public function getIterator(param1:int) : §final package super§
      {
         return new Iterator(this,param1);
      }
   }
}

class Iterator implements §final package super§
{
   
   private var buffer:CircularStringBuffer;
   
   private var index:int;
   
   public function Iterator(param1:CircularStringBuffer, param2:int)
   {
      super();
      if(param2 < 0 || param2 > param1.size)
      {
         throw new Error("Index " + param2 + " is out of range [0, " + param1.size + "]");
      }
      this.buffer = param1;
      var _loc3_:uint = param1.§5214239495239508123423632234§.length;
      this.index = param1.§5214239255239268123423632234§ + param2 - 1;
      if(this.index < 0)
      {
         this.index = _loc3_ - 1;
      }
      if(this.index >= _loc3_)
      {
         this.index -= _loc3_;
      }
   }
   
   public function hasNext() : Boolean
   {
      return this.c32e763d(this.index) != this.buffer.§set use each§;
   }
   
   public function getNext() : String
   {
      this.index = this.c32e763d(this.index);
      if(this.index == this.buffer.§set use each§)
      {
         throw new Error("End of buffer");
      }
      return this.buffer.§5214239495239508123423632234§[this.index];
   }
   
   private function c32e763d(param1:int) : int
   {
      return ++param1 >= this.buffer.§5214239495239508123423632234§.length ? 0 : param1;
   }
}
