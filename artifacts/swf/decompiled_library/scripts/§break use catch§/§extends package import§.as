package §break use catch§
{
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class §extends package import§
   {
      
      public static var §521423122322312245123423632234§:§import catch else§;
      
      public static const §5214235368235381123423632234§:int = 8;
      
      private static var §5214235559235572123423632234§:ByteArray = new ByteArray();
      
      private var §in set use§:int = 8;
      
      private var §5214238399238412123423632234§:Vector.<§5214239886239899123423632234§> = new Vector.<§5214239886239899123423632234§>();
      
      private var §include switch finally§:Vector.<Object>;
      
      public function §extends package import§()
      {
         super();
      }
      
      public function §true catch use§(param1:ByteArray) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         param1.position = 0;
         var _loc2_:int = int(this.§5214238399238412123423632234§.length);
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.§5214238399238412123423632234§[_loc3_].decode(param1);
            this.§if null§(_loc4_,_loc3_);
            _loc3_++;
         }
      }
      
      public function §else try§() : int
      {
         return 0;
      }
      
      public function §5214237951237964123423632234§(param1:ByteArray) : void
      {
         var _loc3_:int = 0;
         param1.position = 4;
         param1.writeInt(this.§else try§());
         var _loc2_:int = int(this.§5214238399238412123423632234§.length);
         while(_loc3_ < _loc2_)
         {
            this.§5214238399238412123423632234§[_loc3_].encode(§5214235559235572123423632234§,this.§include switch finally§[_loc3_]);
            _loc3_++;
         }
         §521423122322312245123423632234§.§override final§().§521423122562312269123423632234§(§5214235559235572123423632234§);
         param1.writeBytes(§5214235559235572123423632234§);
         this.§in set use§ = 8 + §5214235559235572123423632234§.length;
         §5214235559235572123423632234§.clear();
         param1.position = 0;
         param1.writeInt(§in set use§);
      }
      
      public function §if null§(param1:Object, param2:int) : void
      {
         throw new Error("Not implemented");
      }
      
      public function §52142384923862123423632234§(param1:String) : void
      {
         this.§5214238399238412123423632234§[§5214238399238412123423632234§.length] = §521423122322312245123423632234§.§with const if§(param1);
      }
      
      public function §5214235090235103123423632234§() : int
      {
         return 0;
      }
      
      public function toString() : String
      {
         return "";
      }
      
      public function §521423106882310701123423632234§() : §extends package import§
      {
         throw new Error("AbstractPacket::getReference must be overrided!");
      }
      
      public function §521423108932310906123423632234§() : int
      {
         return this.§in set use§;
      }
      
      public function §5214231095231108123423632234§(param1:Object) : void
      {
         if(§include switch finally§ == null)
         {
            §include switch finally§ = new Vector.<Object>();
         }
         this.§include switch finally§[§include switch finally§.length] = param1;
      }
   }
}

