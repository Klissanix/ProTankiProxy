package scpacker.networking.protocol.codec.custom
{
   import §521423133832313396123423632234§.§class const package§;
   import §521423133832313396123423632234§.§continue case§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codecm2a28jd implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §continue case§;
      
      private var §use catch include§:§5214239886239899123423632234§;
      
      private var §5214235209235222123423632234§:§5214239886239899123423632234§;
      
      private var §function package in§:§5214239886239899123423632234§;
      
      private var §final package package§:§5214239886239899123423632234§;
      
      private var §for switch try§:§5214239886239899123423632234§;
      
      public function Codecm2a28jd(param1:§import catch else§)
      {
         super();
         this.§use catch include§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecl47gj41");
         this.§5214235209235222123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§function package in§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecl47gj41");
         this.§final package package§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§for switch try§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§continue case§ = §continue case§(param2);
         this.§use catch include§.encode(param1,_loc3_.§try package use§);
         this.§5214235209235222123423632234§.encode(param1,_loc3_.§521423134462313459123423632234§);
         this.§function package in§.encode(param1,_loc3_.§implements catch implements§);
         this.§final package package§.encode(param1,_loc3_.text);
         this.§for switch try§.encode(param1,_loc3_.§521423138792313892123423632234§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§continue case§ = new §continue case§();
         _loc2_.§try package use§ = this.§use catch include§.decode(param1) as §class const package§;
         _loc2_.§521423134462313459123423632234§ = this.§5214235209235222123423632234§.decode(param1) as Boolean;
         _loc2_.§implements catch implements§ = this.§function package in§.decode(param1) as §class const package§;
         _loc2_.text = this.§final package package§.decode(param1) as String;
         _loc2_.§521423138792313892123423632234§ = this.§for switch try§.decode(param1) as Boolean;
         return _loc2_;
      }
   }
}

