package scpacker.networking.protocol.codec.custom
{
   import §do switch dynamic§.SocialNetworkEntranceParams;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codecn7edj0a implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = SocialNetworkEntranceParams;
      
      private var §5214232500232513123423632234§:§5214239886239899123423632234§;
      
      private var §52142396423977123423632234§:§5214239886239899123423632234§;
      
      public function Codecn7edj0a(param1:§import catch else§)
      {
         super();
         this.§5214232500232513123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§52142396423977123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:SocialNetworkEntranceParams = SocialNetworkEntranceParams(param2);
         this.§5214232500232513123423632234§.encode(param1,_loc3_.§5214234337234350123423632234§);
         this.§52142396423977123423632234§.encode(param1,_loc3_.§5214235996236009123423632234§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:SocialNetworkEntranceParams = new SocialNetworkEntranceParams();
         _loc2_.§5214234337234350123423632234§ = this.§5214232500232513123423632234§.decode(param1) as String;
         _loc2_.§5214235996236009123423632234§ = this.§52142396423977123423632234§.decode(param1) as String;
         return _loc2_;
      }
   }
}

