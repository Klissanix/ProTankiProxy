package §5214238916238929123423632234§
{
   import flash.utils.ByteArray;
   
   public class §for package var§ extends ByteArray
   {
      
      public function §for package var§(param1:String)
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super();
         var _loc3_:ByteArray = new ByteArray();
         _loc2_ = 0;
         while(_loc2_ < 16)
         {
            this.writeByte(0);
            _loc2_++;
         }
         _loc3_.writeUTFBytes(param1);
         _loc3_.position = 0;
         while(_loc3_.bytesAvailable)
         {
            _loc4_ = _loc3_.readByte();
            if(_loc4_ <= 127)
            {
               this.position = _loc4_ >> 3;
               _loc5_ = this.readByte();
               _loc5_ = _loc5_ | 1 << (_loc4_ & 7);
               this.position = _loc4_ >> 3;
               this.writeByte(_loc5_);
            }
         }
      }
      
      public function §finally var§(param1:String) : int
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:ByteArray = new ByteArray();
         _loc4_.writeUTFBytes(param1);
         _loc4_.position = 0;
         _loc2_ = _loc4_.readByte();
         if(_loc2_ & 0x80)
         {
            return 0;
         }
         if(_loc2_ < 31 || _loc2_ == 127)
         {
            return _loc2_;
         }
         this.position = _loc2_ >> 3;
         _loc3_ = this.readByte();
         if(_loc3_ & 1 << (_loc2_ & 7))
         {
            return _loc2_;
         }
         return 0;
      }
   }
}

