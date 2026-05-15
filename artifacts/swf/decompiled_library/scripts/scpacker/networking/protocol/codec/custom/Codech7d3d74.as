package scpacker.networking.protocol.codec.custom
{
   import flash.utils.ByteArray;
   import §package finally switch§.§get switch super§;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codech7d3d74 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §get switch super§;
      
      private var §include const while§:§5214239886239899123423632234§;
      
      private var §5214237254237267123423632234§:§5214239886239899123423632234§;
      
      private var §5214235361235374123423632234§:§5214239886239899123423632234§;
      
      private var §5214234537234550123423632234§:§5214239886239899123423632234§;
      
      public function Codech7d3d74(param1:§import catch else§)
      {
         super();
         this.§include const while§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§5214237254237267123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§5214235361235374123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§5214234537234550123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§get switch super§ = §get switch super§(param2);
         this.§include const while§.encode(param1,_loc3_.newbiesAbonementBonusReward);
         this.§5214237254237267123423632234§.encode(param1,_loc3_.premiumBonusReward);
         this.§5214235361235374123423632234§.encode(param1,_loc3_.reward);
         this.§5214234537234550123423632234§.encode(param1,_loc3_.§each use get§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§get switch super§ = new §get switch super§();
         _loc2_.newbiesAbonementBonusReward = this.§include const while§.decode(param1) as int;
         _loc2_.premiumBonusReward = this.§5214237254237267123423632234§.decode(param1) as int;
         _loc2_.reward = this.§5214235361235374123423632234§.decode(param1) as int;
         _loc2_.§each use get§ = this.§5214234537234550123423632234§.decode(param1) as String;
         return _loc2_;
      }
   }
}

