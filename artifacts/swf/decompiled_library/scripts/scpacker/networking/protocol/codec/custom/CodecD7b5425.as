package scpacker.networking.protocol.codec.custom
{
   import flash.utils.ByteArray;
   import projects.tanks.client.battleselect.model.info.BattleInfoUser;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class CodecD7b5425 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = BattleInfoUser;
      
      private var §extends extends§:§5214239886239899123423632234§;
      
      private var §switch else§:§5214239886239899123423632234§;
      
      private var §while const package§:§5214239886239899123423632234§;
      
      private var §5214235371235384123423632234§:§5214239886239899123423632234§;
      
      public function CodecD7b5425(param1:§import catch else§)
      {
         super();
         this.§extends extends§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§switch else§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§while const package§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§5214235371235384123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:BattleInfoUser = BattleInfoUser(param2);
         this.§extends extends§.encode(param1,_loc3_.kills);
         this.§switch else§.encode(param1,_loc3_.score);
         this.§while const package§.encode(param1,_loc3_.suspicious);
         this.§5214235371235384123423632234§.encode(param1,_loc3_.user);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:BattleInfoUser = new BattleInfoUser();
         _loc2_.kills = this.§extends extends§.decode(param1) as int;
         _loc2_.score = this.§switch else§.decode(param1) as int;
         _loc2_.suspicious = this.§while const package§.decode(param1) as Boolean;
         _loc2_.user = this.§5214235371235384123423632234§.decode(param1) as String;
         return _loc2_;
      }
   }
}

