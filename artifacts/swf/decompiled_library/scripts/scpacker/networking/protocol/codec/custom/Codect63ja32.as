package scpacker.networking.protocol.codec.custom
{
   import §5214236853236866123423632234§.§super catch override§;
   import §const use implements§.§dynamic include§;
   import §const use implements§.§var use native§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codect63ja32 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §super catch override§;
      
      private var §use use case§:§5214239886239899123423632234§;
      
      private var §implements var catch§:§5214239886239899123423632234§;
      
      private var §override var continue§:§5214239886239899123423632234§;
      
      private var §switch class§:§5214239886239899123423632234§;
      
      private var §521423100852310098123423632234§:§5214239886239899123423632234§;
      
      private var §52142325023263123423632234§:§5214239886239899123423632234§;
      
      private var §while catch if§:§5214239886239899123423632234§;
      
      private var §super use§:§5214239886239899123423632234§;
      
      public function Codect63ja32(param1:§import catch else§)
      {
         super();
         this.§use use case§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§implements var catch§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§override var continue§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.CodecBattleMode");
         this.§switch class§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§521423100852310098123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§52142325023263123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codeco661999");
         this.§while catch if§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§super use§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§super catch override§ = new §super catch override§();
         _loc2_.§521423122262312239123423632234§ = this.§use use case§.decode(param1) as String;
         _loc2_.§return package for§ = this.§implements var catch§.decode(param1) as String;
         _loc2_.§try catch else§ = this.§override var continue§.decode(param1) as §dynamic include§;
         _loc2_.§52142386923882123423632234§ = this.§switch class§.decode(param1) as Boolean;
         _loc2_.§521423134322313445123423632234§ = this.§521423100852310098123423632234§.decode(param1) as Boolean;
         _loc2_.§false catch continue§ = this.§52142325023263123423632234§.decode(param1) as §var use native§;
         _loc2_.§5214235402235415123423632234§ = this.§super use§.decode(param1) as int;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§super catch override§ = §super catch override§(param2);
         this.§use use case§.encode(param1,_loc3_.§521423122262312239123423632234§);
         this.§implements var catch§.encode(param1,_loc3_.§return package for§);
         this.§override var continue§.encode(param1,_loc3_.§try catch else§);
         this.§switch class§.encode(param1,_loc3_.§52142386923882123423632234§);
         this.§521423100852310098123423632234§.encode(param1,_loc3_.§521423134322313445123423632234§);
         this.§52142325023263123423632234§.encode(param1,_loc3_.§false catch continue§);
         this.§super use§.encode(param1,_loc3_.§5214235402235415123423632234§);
      }
   }
}

