package scpacker.networking.protocol.codec.custom
{
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with for§.§import use try§;
   import §with set static§.§import catch else§;
   
   public class Codecp6ffji6 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §import use try§;
      
      private var §521423128672312880123423632234§:§5214239886239899123423632234§;
      
      private var §each const extends§:§5214239886239899123423632234§;
      
      private var §521423114082311421123423632234§:§5214239886239899123423632234§;
      
      private var §5214237970237983123423632234§:§5214239886239899123423632234§;
      
      private var §5214233882233895123423632234§:§5214239886239899123423632234§;
      
      private var §do for override§:§5214239886239899123423632234§;
      
      private var §5214235642235655123423632234§:§5214239886239899123423632234§;
      
      private var §521423125442312557123423632234§:§5214239886239899123423632234§;
      
      private var §else const try§:§5214239886239899123423632234§;
      
      private var §switch else§:§5214239886239899123423632234§;
      
      private var §super use§:§5214239886239899123423632234§;
      
      private var §5214233463233476123423632234§:§5214239886239899123423632234§;
      
      private var §521423102362310249123423632234§:§5214239886239899123423632234§;
      
      public function Codecp6ffji6(param1:§import catch else§)
      {
         super();
         this.§521423128672312880123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§each const extends§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§521423114082311421123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§5214237970237983123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§5214233882233895123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§do for override§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§5214235642235655123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§521423125442312557123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.ByteCodec");
         this.§else const try§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.FloatCodec");
         this.§switch else§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§super use§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§5214233463233476123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§521423102362310249123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§import use try§ = new §import use try§();
         _loc2_.§521423116802311693123423632234§ = this.§521423128672312880123423632234§.decode(param1) as int;
         _loc2_.§521423110572311070123423632234§ = this.§each const extends§.decode(param1) as int;
         _loc2_.§extends catch if§ = this.§521423114082311421123423632234§.decode(param1) as int;
         _loc2_.§continue var do§ = this.§5214237970237983123423632234§.decode(param1) as Boolean;
         _loc2_.§static for dynamic§ = this.§do for override§.decode(param1) as int;
         _loc2_.§false for import§ = this.§5214235642235655123423632234§.decode(param1) as int;
         _loc2_.§5214237240237253123423632234§ = this.§521423125442312557123423632234§.decode(param1) as int;
         _loc2_.§5214235259235272123423632234§ = this.§else const try§.decode(param1) as Number;
         _loc2_.score = this.§switch else§.decode(param1) as int;
         _loc2_.§5214235402235415123423632234§ = this.§super use§.decode(param1) as int;
         var _loc3_:String = this.§5214233463233476123423632234§.decode(param1) as String;
         _loc2_.id = _loc3_;
         _loc2_.uid = _loc3_;
         _loc2_.§dynamic use else§ = this.§521423102362310249123423632234§.decode(param1) as String;
         _loc2_.§false for import§ += 1;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§import use try§ = §import use try§(param2);
         this.§521423128672312880123423632234§.encode(param1,_loc3_.§521423116802311693123423632234§);
         this.§each const extends§.encode(param1,_loc3_.§521423110572311070123423632234§);
         this.§521423114082311421123423632234§.encode(param1,_loc3_.§extends catch if§);
         this.§5214237970237983123423632234§.encode(param1,_loc3_.§continue var do§);
         this.§do for override§.encode(param1,_loc3_.§static for dynamic§);
         this.§5214235642235655123423632234§.encode(param1,_loc3_.§false for import§);
         this.§521423125442312557123423632234§.encode(param1,_loc3_.§5214237240237253123423632234§);
         this.§else const try§.encode(param1,_loc3_.§5214235259235272123423632234§);
         this.§switch else§.encode(param1,_loc3_.score);
         this.§super use§.encode(param1,_loc3_.§5214235402235415123423632234§);
         this.§5214233463233476123423632234§.encode(param1,_loc3_.uid);
         this.§521423102362310249123423632234§.encode(param1,_loc3_.§dynamic use else§);
      }
   }
}

