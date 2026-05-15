package scpacker.networking.protocol.codec.custom
{
   import §521423122772312290123423632234§.§521423101862310199123423632234§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codecp50fgh4 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §521423101862310199123423632234§;
      
      private var §521423127872312800123423632234§:§5214239886239899123423632234§;
      
      private var §5214234238234251123423632234§:§5214239886239899123423632234§;
      
      public function Codecp50fgh4(param1:§import catch else§)
      {
         super();
         this.§521423127872312800123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§5214234238234251123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§521423101862310199123423632234§ = new §521423101862310199123423632234§();
         _loc2_.§return import§ = this.§521423127872312800123423632234§.decode(param1) as String;
         _loc2_.§521423138142313827123423632234§ = this.§5214234238234251123423632234§.decode(param1) as String;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§521423101862310199123423632234§ = §521423101862310199123423632234§(param2);
         this.§521423127872312800123423632234§.encode(param1,_loc3_.§return import§);
         this.§5214234238234251123423632234§.encode(param1,_loc3_.§521423138142313827123423632234§);
      }
   }
}

