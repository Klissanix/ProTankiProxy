package scpacker.networking.protocol.codec.custom
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §5214237881237894123423632234§.§521423111932311206123423632234§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codect348a32 implements §5214239886239899123423632234§
   {
      
      private var §super package try§:§5214239886239899123423632234§;
      
      private var §var set do§:§5214239886239899123423632234§;
      
      private var §521423136972313710123423632234§:§5214239886239899123423632234§;
      
      private var §dynamic package§:§521423111932311206123423632234§ = new §521423111932311206123423632234§();
      
      private var §continue class§:§5214239886239899123423632234§;
      
      public function Codect348a32(param1:§import catch else§)
      {
         super();
         this.§super package try§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecc5d6ej3");
         this.§var set do§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecc5d6ej3");
         this.§521423136972313710123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecc5d6ej3");
         this.§continue class§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecc5d6ej3");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§521423111932311206123423632234§ = this.§dynamic package§;
         _loc2_.§get var dynamic§ = this.§super package try§.decode(param1) as §52142320823221123423632234§;
         _loc2_.§521423105032310516123423632234§ = param1.readByte();
         _loc2_.§521423129982313011123423632234§ = this.§var set do§.decode(param1) as §52142320823221123423632234§;
         _loc2_.§try switch true§ = this.§521423136972313710123423632234§.decode(param1) as §52142320823221123423632234§;
         _loc2_.§dynamic final§ = this.§continue class§.decode(param1) as §52142320823221123423632234§;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§521423111932311206123423632234§ = §521423111932311206123423632234§(param2);
         this.§super package try§.encode(param1,_loc3_.§get var dynamic§);
         param1.writeByte(_loc3_.§521423105032310516123423632234§);
         this.§var set do§.encode(param1,_loc3_.§521423129982313011123423632234§);
         this.§521423136972313710123423632234§.encode(param1,_loc3_.§try switch true§);
         this.§continue class§.encode(param1,_loc3_.§dynamic final§);
      }
   }
}

