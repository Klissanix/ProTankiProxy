package scpacker.networking.protocol.codec.custom
{
   import §521423138062313819123423632234§.§if set class§;
   import §521423832396123423632234§.§5214234734234747123423632234§;
   import flash.utils.ByteArray;
   import §override catch default§.Long;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codech2hc4cj implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §if set class§;
      
      private var §521423135572313570123423632234§:§5214239886239899123423632234§;
      
      private var §521423137732313786123423632234§:§5214239886239899123423632234§;
      
      private var §with for set§:§5214239886239899123423632234§;
      
      private var §521423102002310213123423632234§:§5214239886239899123423632234§;
      
      private var §521423134012313414123423632234§:§5214239886239899123423632234§;
      
      private var §521423111282311141123423632234§:§5214239886239899123423632234§;
      
      private var §throw catch native§:§5214239886239899123423632234§;
      
      public function Codech2hc4cj(param1:§import catch else§)
      {
         super();
         this.§521423135572313570123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§521423137732313786123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§with for set§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§521423102002310213123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.LongCodec");
         this.§521423134012313414123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.CodecClanPermission");
         this.§521423111282311141123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§throw catch native§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§if set class§ = new §if set class§();
         _loc2_.§import switch set§ = this.§521423135572313570123423632234§.decode(param1) as int;
         _loc2_.deaths = this.§521423137732313786123423632234§.decode(param1) as int;
         _loc2_.kills = this.§with for set§.decode(param1) as int;
         _loc2_.§5214234268234281123423632234§ = this.§521423102002310213123423632234§.decode(param1) as Long;
         _loc2_.§default for package§ = this.§521423134012313414123423632234§.decode(param1) as §5214234734234747123423632234§;
         _loc2_.score = this.§521423111282311141123423632234§.decode(param1) as int;
         _loc2_.§each use get§ = this.§throw catch native§.decode(param1) as String;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
      }
   }
}

