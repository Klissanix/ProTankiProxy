package scpacker.networking.protocol.codec.custom
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §521423120812312094123423632234§.§521423104352310448123423632234§;
   import §521423120812312094123423632234§.§5214234120234133123423632234§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class CodecD73dfdb implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §521423104352310448123423632234§;
      
      private var §5214233882233895123423632234§:§5214239886239899123423632234§;
      
      private var §get catch if§:§5214239886239899123423632234§;
      
      private var §continue class§:§5214239886239899123423632234§;
      
      private var §switch else§:§5214239886239899123423632234§;
      
      private var §for package use§:§5214239886239899123423632234§;
      
      private var §extends switch throw§:§5214239886239899123423632234§;
      
      private var §5214237499237512123423632234§:§5214239886239899123423632234§;
      
      public function CodecD73dfdb(param1:§import catch else§)
      {
         super();
         this.§5214233882233895123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§get catch if§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§continue class§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecc5d6ej3");
         this.§switch else§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.FloatCodec");
         this.§for package use§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.FloatCodec");
         this.§extends switch throw§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.CodecControlPointState");
         this.§5214237499237512123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.complex.VectorCodecString");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§521423104352310448123423632234§ = new §521423104352310448123423632234§();
         _loc2_.id = this.§5214233882233895123423632234§.decode(param1) as int;
         _loc2_.§extends set case§ = this.§get catch if§.decode(param1) as String;
         _loc2_.§dynamic final§ = this.§continue class§.decode(param1) as §52142320823221123423632234§;
         _loc2_.score = this.§switch else§.decode(param1) as Number;
         _loc2_.§function for extends§ = this.§for package use§.decode(param1) as Number;
         _loc2_.§implements catch catch§ = this.§extends switch throw§.decode(param1) as §5214234120234133123423632234§;
         _loc2_.§use package null§ = this.§5214237499237512123423632234§.decode(param1) as Vector.<String>;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§521423104352310448123423632234§ = §521423104352310448123423632234§(param2);
         this.§5214233882233895123423632234§.encode(param1,_loc3_.id);
         this.§get catch if§.encode(param1,_loc3_.§extends set case§);
         this.§continue class§.encode(param1,_loc3_.§dynamic final§);
         this.§switch else§.encode(param1,_loc3_.score);
         this.§for package use§.encode(param1,_loc3_.§function for extends§);
         this.§extends switch throw§.encode(param1,_loc3_.§implements catch catch§);
         this.§5214237499237512123423632234§.encode(param1,_loc3_.§use package null§);
      }
   }
}

