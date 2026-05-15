package scpacker.networking.protocol.codec.custom
{
   import flash.utils.ByteArray;
   import §override finally set§.§5214235342235355123423632234§;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codect3cfda9 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §5214235342235355123423632234§;
      
      private var §521423139542313967123423632234§:§5214239886239899123423632234§;
      
      private var §if const case§:§5214239886239899123423632234§;
      
      private var §null package with§:§5214239886239899123423632234§;
      
      public function Codect3cfda9(param1:§import catch else§)
      {
         super();
         this.§521423139542313967123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§if const case§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§null package with§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§5214235342235355123423632234§ = new §5214235342235355123423632234§();
         _loc2_.§each for static§ = this.§521423139542313967123423632234§.decode(param1) as String;
         _loc2_.§if const implements§ = this.§if const case§.decode(param1) as String;
         _loc2_.§5214231429231442123423632234§ = this.§null package with§.decode(param1) as String;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§5214235342235355123423632234§ = §5214235342235355123423632234§(param2);
         this.§521423139542313967123423632234§.encode(param1,_loc3_.§each for static§);
         this.§if const case§.encode(param1,_loc3_.§if const implements§);
         this.§null package with§.encode(param1,_loc3_.§5214231429231442123423632234§);
      }
   }
}

