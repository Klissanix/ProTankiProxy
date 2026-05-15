package scpacker.networking.protocol.codec.custom
{
   import §5214233087233100123423632234§.§include catch with§;
   import §5214237735237748123423632234§.§with package each§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codecu442d3i implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §with package each§;
      
      private var §var switch extends§:§5214239886239899123423632234§;
      
      private var §5214238131238144123423632234§:§5214239886239899123423632234§;
      
      private var §5214233025233038123423632234§:§5214239886239899123423632234§;
      
      public function Codecu442d3i(param1:§import catch else§)
      {
         super();
         this.§var switch extends§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§5214238131238144123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.ResourceGetterCodec");
         this.§5214233025233038123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§with package each§ = new §with package each§();
         _loc2_.§52142326723280123423632234§ = this.§var switch extends§.decode(param1) as String;
         _loc2_.§5214233309233322123423632234§ = this.§5214238131238144123423632234§.decode(param1) as §include catch with§;
         _loc2_.§break set in§ = this.§5214233025233038123423632234§.decode(param1) as String;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§with package each§ = §with package each§(param2);
         this.§var switch extends§.encode(param1,_loc3_.§52142326723280123423632234§);
         this.§5214238131238144123423632234§.encode(param1,_loc3_.§5214233309233322123423632234§);
         this.§5214233025233038123423632234§.encode(param1,_loc3_.§break set in§);
      }
   }
}

