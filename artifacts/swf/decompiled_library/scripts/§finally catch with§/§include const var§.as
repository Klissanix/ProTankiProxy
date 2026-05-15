package §finally catch with§
{
   import flash.utils.ByteArray;
   
   public class §include const var§ implements §override package set§
   {
      
      private static var §521423131112313124123423632234§:ByteArray = new ByteArray();
      
      private var §case const break§:int;
      
      private var §5214232428232441123423632234§:int;
      
      private var §5214238317238330123423632234§:int;
      
      public function §include const var§(param1:Number)
      {
         super();
         this.§case const break§ = Math.random() * 4294967295;
         §521423131112313124123423632234§.position = 0;
         §521423131112313124123423632234§.writeDouble(param1);
         §521423131112313124123423632234§.position = 0;
         this.§5214232428232441123423632234§ = §521423131112313124123423632234§.readInt() ^ this.§case const break§;
         this.§5214238317238330123423632234§ = §521423131112313124123423632234§.readInt() ^ this.§case const break§;
      }
      
      public function §521423137562313769123423632234§(param1:Number) : void
      {
      }
      
      public function §function const super§() : Number
      {
         §521423131112313124123423632234§.position = 0;
         §521423131112313124123423632234§.writeInt(this.§5214232428232441123423632234§ ^ this.§case const break§);
         §521423131112313124123423632234§.writeInt(this.§5214238317238330123423632234§ ^ this.§case const break§);
         §521423131112313124123423632234§.position = 0;
         return §521423131112313124123423632234§.readDouble();
      }
   }
}

