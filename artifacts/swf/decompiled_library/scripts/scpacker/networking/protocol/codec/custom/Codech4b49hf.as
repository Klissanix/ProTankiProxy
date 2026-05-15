package scpacker.networking.protocol.codec.custom
{
   import §5214233087233100123423632234§.§include catch with§;
   import alternativa.osgi.OSGi;
   import §do package if§.ItemCategoryEnum;
   import §do package if§.ItemViewCategoryEnum;
   import §finally use true§.§do var set§;
   import flash.utils.ByteArray;
   import §override catch default§.Long;
   import platform.client.fp10.core.registry.SpaceRegistry;
   import platform.client.fp10.core.type.impl.GameObject;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codech4b49hf implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §do var set§;
      
      private var §case for class§:§5214239886239899123423632234§;
      
      private var §5214236459236472123423632234§:§5214239886239899123423632234§;
      
      private var §521423135452313558123423632234§:§5214239886239899123423632234§;
      
      private var §final finally use§:§5214239886239899123423632234§;
      
      private var §set if§:§5214239886239899123423632234§;
      
      private var §get catch if§:§5214239886239899123423632234§;
      
      private var §continue class§:§5214239886239899123423632234§;
      
      private var §5214238789238802123423632234§:§5214239886239899123423632234§;
      
      private var §5214239563239576123423632234§:§5214239886239899123423632234§;
      
      private var §return use case§:§5214239886239899123423632234§;
      
      public function Codech4b49hf(param1:§import catch else§)
      {
         super();
         this.§case for class§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.CodecItemCategoryEnum");
         this.§521423135452313558123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.CodecItemViewCategoryEnum");
         this.§final finally use§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§set if§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§get catch if§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§continue class§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§5214238789238802123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§5214239563239576123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.ResourceGetterCodec");
         this.§return use case§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§do var set§ = §do var set§(param2);
         this.§case for class§.encode(param1,_loc3_.§521423109832310996123423632234§);
         this.§5214236459236472123423632234§.encode(param1,_loc3_.§5214235052235065123423632234§);
         this.§521423135452313558123423632234§.encode(param1,_loc3_.§5214237515237528123423632234§);
         this.§final finally use§.encode(param1,_loc3_.§5214236424236437123423632234§);
         this.§set if§.encode(param1,_loc3_.§5214234431234444123423632234§);
         this.§get catch if§.encode(param1,_loc3_.§extends set case§);
         this.§continue class§.encode(param1,_loc3_.§dynamic final§);
         this.§5214238789238802123423632234§.encode(param1,_loc3_.§import const final§);
         this.§5214239563239576123423632234§.encode(param1,_loc3_.§5214233998234011123423632234§);
         this.§return use case§.encode(param1,_loc3_.§5214239823239836123423632234§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§do var set§ = new §do var set§();
         _loc2_.§521423109832310996123423632234§ = this.§case for class§.decode(param1) as ItemCategoryEnum;
         _loc2_.§5214237515237528123423632234§ = this.§521423135452313558123423632234§.decode(param1) as ItemViewCategoryEnum;
         _loc2_.§5214236424236437123423632234§ = this.§final finally use§.decode(param1) as int;
         _loc2_.§5214234431234444123423632234§ = this.§set if§.decode(param1) as Boolean;
         _loc2_.§extends set case§ = this.§get catch if§.decode(param1) as String;
         _loc2_.§dynamic final§ = this.§continue class§.decode(param1) as int;
         _loc2_.§import const final§ = this.§5214238789238802123423632234§.decode(param1) as Boolean;
         _loc2_.§5214233998234011123423632234§ = this.§5214239563239576123423632234§.decode(param1) as §include catch with§;
         _loc2_.§5214239823239836123423632234§ = this.§return use case§.decode(param1) as int;
         _loc2_.§5214235052235065123423632234§ = new GameObject(_loc2_.§5214233998234011123423632234§.§5214239618239631123423632234§.id,null,String(this.§get catch if§.decode(param1)),SpaceRegistry(OSGi.getInstance().getService(SpaceRegistry)).getSpace(Long.getLong(884380667,214)));
         return _loc2_;
      }
   }
}

