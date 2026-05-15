package scpacker.networking.protocol.codec.custom
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §5214235503235516123423632234§.§5214235556235569123423632234§;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.services.tankregistry.TankUsersRegistry;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codece4i1iib implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §5214235556235569123423632234§;
      
      private var §do switch var§:TankUsersRegistry;
      
      private var §extends const dynamic§:§5214239886239899123423632234§;
      
      private var §5214234247234260123423632234§:§5214239886239899123423632234§;
      
      private var §5214237520237533123423632234§:§5214239886239899123423632234§;
      
      private var §else use if§:§5214239886239899123423632234§;
      
      public function Codece4i1iib(param1:§import catch else§)
      {
         super();
         this.§do switch var§ = TankUsersRegistry(OSGi.getInstance().getService(TankUsersRegistry));
         this.§extends const dynamic§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecc5d6ej3");
         this.§5214234247234260123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecc5d6ej3");
         this.§5214237520237533123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.ByteCodec");
         this.§else use if§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§5214235556235569123423632234§ = §5214235556235569123423632234§(param2);
         this.§extends const dynamic§.encode(param1,_loc3_.§5214239673239686123423632234§);
         this.§5214234247234260123423632234§.encode(param1,_loc3_.§521423108992310912123423632234§);
         this.§5214237520237533123423632234§.encode(param1,_loc3_.§break use const§);
         this.§else use if§.encode(param1,_loc3_.§5214235960235973123423632234§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§5214235556235569123423632234§ = new §5214235556235569123423632234§();
         _loc2_.§5214239673239686123423632234§ = this.§extends const dynamic§.decode(param1) as §52142320823221123423632234§;
         _loc2_.§521423108992310912123423632234§ = this.§5214234247234260123423632234§.decode(param1) as §52142320823221123423632234§;
         _loc2_.§break use const§ = this.§5214237520237533123423632234§.decode(param1) as int;
         _loc2_.§5214235960235973123423632234§ = this.§do switch var§.getUser(this.§else use if§.decode(param1) as String);
         return _loc2_;
      }
   }
}

