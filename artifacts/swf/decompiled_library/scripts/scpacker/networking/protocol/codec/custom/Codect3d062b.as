package scpacker.networking.protocol.codec.custom
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §521423121002312113123423632234§.§5214233000233013123423632234§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codect3d062b implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §5214233000233013123423632234§;
      
      private var §null catch break§:§5214239886239899123423632234§;
      
      private var §5214236402236415123423632234§:§5214239886239899123423632234§;
      
      private var §5214236535236548123423632234§:§5214239886239899123423632234§;
      
      private var §continue class§:§5214239886239899123423632234§;
      
      public function Codect3d062b(param1:§import catch else§)
      {
         super();
         this.§null catch break§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§5214236402236415123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§5214236535236548123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§continue class§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecc5d6ej3");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§5214233000233013123423632234§ = new §5214233000233013123423632234§();
         _loc2_.§switch package package§ = true;
         _loc2_.§5214236427236440123423632234§ = this.§5214236402236415123423632234§.decode(param1) as String;
         _loc2_.§5214236536236549123423632234§ = this.§5214236535236548123423632234§.decode(param1) as String;
         _loc2_.§dynamic final§ = this.§continue class§.decode(param1) as §52142320823221123423632234§;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§5214233000233013123423632234§ = §5214233000233013123423632234§(param2);
         this.§null catch break§.encode(param1,_loc3_.§switch package package§);
         this.§5214236402236415123423632234§.encode(param1,_loc3_.§5214236427236440123423632234§);
         this.§5214236535236548123423632234§.encode(param1,_loc3_.§5214236536236549123423632234§);
         this.§continue class§.encode(param1,_loc3_.§dynamic final§);
      }
   }
}

