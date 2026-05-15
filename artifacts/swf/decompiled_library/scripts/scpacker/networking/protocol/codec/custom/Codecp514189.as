package scpacker.networking.protocol.codec.custom
{
   import §5214231817231830123423632234§.§5214233863233876123423632234§;
   import §5214233087233100123423632234§.§include catch with§;
   import flash.utils.ByteArray;
   import §native set final§.§5214231867231880123423632234§;
   import §native set final§.§5214238635238648123423632234§;
   import §native set final§.§native var override§;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codecp514189 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §5214238635238648123423632234§;
      
      private var §521423135062313519123423632234§:§5214239886239899123423632234§;
      
      private var §5214236511236524123423632234§:§5214239886239899123423632234§;
      
      private var §import switch do§:§5214239886239899123423632234§;
      
      private var §5214233366233379123423632234§:§5214239886239899123423632234§;
      
      private var §package catch break§:§5214239886239899123423632234§;
      
      private var §implements catch if§:§5214239886239899123423632234§;
      
      private var §return static§:§5214239886239899123423632234§;
      
      private var §521423115862311599123423632234§:§5214239886239899123423632234§;
      
      private var §521423113362311349123423632234§:§5214239886239899123423632234§;
      
      public function Codecp514189(param1:§import catch else§)
      {
         super();
         this.§521423135062313519123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecc19071g");
         this.§5214236511236524123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.ResourceGetterCodec");
         this.§import switch do§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.ResourceGetterCodec");
         this.§5214233366233379123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.ResourceGetterCodec");
         this.§package catch break§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecc19071g");
         this.§implements catch if§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.ResourceGetterCodec");
         this.§return static§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.ResourceGetterCodec");
         this.§521423115862311599123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.ResourceGetterCodec");
         this.§521423113362311349123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecz4h8c53");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§5214238635238648123423632234§ = §5214238635238648123423632234§(param2);
         this.§521423135062313519123423632234§.encode(param1,_loc3_.§for catch throw§);
         this.§5214236511236524123423632234§.encode(param1,_loc3_.§extends catch null§);
         this.§import switch do§.encode(param1,_loc3_.§521423111232311136123423632234§);
         this.§5214233366233379123423632234§.encode(param1,_loc3_.§5214235793235806123423632234§);
         this.§package catch break§.encode(param1,_loc3_.§521423133272313340123423632234§);
         this.§implements catch if§.encode(param1,_loc3_.§5214238456238469123423632234§);
         this.§return static§.encode(param1,_loc3_.§false catch super§);
         this.§521423115862311599123423632234§.encode(param1,_loc3_.§get use use§);
         this.§521423113362311349123423632234§.encode(param1,_loc3_.§5214235405235418123423632234§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§5214238635238648123423632234§ = new §5214238635238648123423632234§();
         _loc2_.§for catch throw§ = this.§521423135062313519123423632234§.decode(param1) as §native var override§;
         _loc2_.§521423111232311136123423632234§ = this.§import switch do§.decode(param1) as §include catch with§;
         _loc2_.§5214235793235806123423632234§ = this.§5214233366233379123423632234§.decode(param1) as §5214233863233876123423632234§;
         _loc2_.§521423133272313340123423632234§ = this.§package catch break§.decode(param1) as §native var override§;
         _loc2_.§false catch super§ = this.§return static§.decode(param1) as §include catch with§;
         _loc2_.§get use use§ = this.§521423115862311599123423632234§.decode(param1) as §5214233863233876123423632234§;
         _loc2_.§5214235405235418123423632234§ = this.§521423113362311349123423632234§.decode(param1) as §5214231867231880123423632234§;
         return _loc2_;
      }
   }
}

