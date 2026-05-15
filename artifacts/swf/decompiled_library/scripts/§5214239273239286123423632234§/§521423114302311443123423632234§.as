package §5214239273239286123423632234§
{
   import flash.utils.ByteArray;
   
   public class §521423114302311443123423632234§ implements §native finally switch§
   {
      
      private static const §do package false§:int = 8;
      
      private var §false catch true§:Vector.<int> = new Vector.<int>(8,true);
      
      private var §52142335923372123423632234§:Vector.<int> = new Vector.<int>(8,true);
      
      private var §5214231291231304123423632234§:int = 0;
      
      private var §default finally for§:int = 0;
      
      private var §5214235718235731123423632234§:int;
      
      public function §521423114302311443123423632234§(param1:Vector.<int>)
      {
         super();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            §5214235718235731123423632234§ ^= param1[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < 8)
         {
            §52142335923372123423632234§[_loc2_] = §5214235718235731123423632234§ ^ _loc2_ << 3;
            §false catch true§[_loc2_] = §5214235718235731123423632234§ ^ _loc2_ << 3 ^ 0x57;
            _loc2_++;
         }
      }
      
      public function §521423122562312269123423632234§(param1:ByteArray) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:int = int(param1.length);
         while(_loc3_ < _loc2_)
         {
            _loc4_ = int(param1[_loc3_]);
            param1[_loc3_] = _loc4_ ^ §false catch true§[§5214231291231304123423632234§];
            §false catch true§[§5214231291231304123423632234§] = _loc4_;
            §5214231291231304123423632234§ ^= _loc4_ & 7;
            _loc3_++;
         }
      }
      
      public function §52142378223795123423632234§(param1:ByteArray, param2:int) : void
      {
         var _loc4_:int = 0;
         var _loc3_:int = int(param1.length);
         while(_loc4_ < param2)
         {
            §52142335923372123423632234§[§default finally for§] = param1[_loc4_] ^ §52142335923372123423632234§[§default finally for§];
            param1[_loc4_] = §52142335923372123423632234§[§default finally for§];
            §default finally for§ ^= §52142335923372123423632234§[§default finally for§] & 7;
            _loc4_++;
         }
      }
   }
}

