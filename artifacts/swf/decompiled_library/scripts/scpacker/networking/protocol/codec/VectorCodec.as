package scpacker.networking.protocol.codec
{
   import flash.utils.ByteArray;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   
   public class VectorCodec extends OptionalCodec implements §5214239886239899123423632234§
   {
      
      private static const §5214239067239080123423632234§:String = getQualifiedClassName(Vector);
      
      private var §5214232524232537123423632234§:§5214239886239899123423632234§;
      
      private var §override use null§:Boolean;
      
      private var §521423119082311921123423632234§:Class;
      
      public function VectorCodec(param1:§5214239886239899123423632234§, param2:Class, param3:Boolean = false)
      {
         super();
         this.§5214232524232537123423632234§ = param1;
         this.§override use null§ = param3;
         this.§521423119082311921123423632234§ = getDefinitionByName(§5214239067239080123423632234§ + ".<" + getQualifiedClassName(param2) + ">") as Class;
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc4_:int = 0;
         if(this.§override use null§ && getBool(param1))
         {
            return null;
         }
         var _loc3_:int = param1.readInt();
         var _loc2_:Class = new §521423119082311921123423632234§(_loc3_,true);
         while(_loc4_ < _loc3_)
         {
            _loc2_[_loc4_] = this.§5214232524232537123423632234§.decode(param1);
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         var _loc4_:int = 0;
         if(this.§override use null§ && addBool(param1,param2))
         {
            return;
         }
         var _loc3_:int = int(param2.length);
         param1.writeInt(_loc3_);
         while(_loc4_ < _loc3_)
         {
            this.§5214232524232537123423632234§.encode(param1,param2[_loc4_]);
            _loc4_++;
         }
      }
   }
}

