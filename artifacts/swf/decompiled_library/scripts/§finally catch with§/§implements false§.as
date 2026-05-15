package §finally catch with§
{
   public class §implements false§
   {
      
      private var §5214233255233268123423632234§:Vector.<int>;
      
      public function §implements false§(param1:uint)
      {
         super();
         this.§5214233255233268123423632234§ = new Vector.<int>(param1 >> 5,true);
      }
      
      public function §5214233272233285123423632234§(param1:int) : void
      {
         var _loc2_:int = param1 >> 5;
         this.§5214233255233268123423632234§[_loc2_] |= 1 << (param1 & 0x1F);
      }
      
      public function §false set final§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§5214233255233268123423632234§.length)
         {
            this.§5214233255233268123423632234§[_loc1_] = 0;
            _loc1_++;
         }
      }
      
      public function §521423106322310645123423632234§(param1:int) : void
      {
         var _loc2_:int = param1 >> 5;
         this.§5214233255233268123423632234§[_loc2_] &= ~(1 << (param1 & 0x1F));
      }
      
      public function §521423112502311263123423632234§(param1:int) : int
      {
         var _loc2_:int = param1 >> 5;
         return this.§5214233255233268123423632234§[_loc2_] >> (param1 & 0x1F) & 1;
      }
   }
}

