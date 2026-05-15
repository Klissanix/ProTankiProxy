package alternativa.gfx.agal
{
   import flash.utils.ByteArray;
   
   public class Register
   {
      
      protected var parent:Register;
      
      protected var swizzle:int = 228;
      
      protected var destMask:int = 15;
      
      protected var index:int;
      
      protected var emitCode:int;
      
      protected var relOffset:int;
      
      protected var relType:int;
      
      protected var relSel:uint;
      
      public function Register()
      {
         super();
      }
      
      public static function get(param1:int = 228, param2:int = 15, param3:Register = null) : Register
      {
         var _loc4_:Register = new Register();
         _loc4_.parent = param3;
         if(param3 != null)
         {
            _loc4_.index = param3.index;
            _loc4_.emitCode = param3.emitCode;
         }
         _loc4_.swizzle = param1;
         _loc4_.destMask = param2;
         return _loc4_;
      }
      
      protected static function getSwizzle(param1:int = 0, param2:int = 1, param3:int = 2, param4:int = 3) : int
      {
         return param1 | param2 << 2 | param3 << 4 | param4 << 6;
      }
      
      protected static function getDestMask(param1:Boolean, param2:Boolean, param3:Boolean, param4:Boolean) : int
      {
         var _loc5_:int = 0;
         if(param1)
         {
            _loc5_ |= 1;
         }
         if(param2)
         {
            _loc5_ |= 2;
         }
         if(param3)
         {
            _loc5_ |= 4;
         }
         if(param4)
         {
            _loc5_ |= 8;
         }
         return _loc5_;
      }
      
      public function writeDest(param1:ByteArray) : void
      {
         param1.writeShort(this.parent != null ? this.parent.index : this.index);
         param1.writeByte(this.destMask);
         param1.writeByte(this.parent != null ? this.parent.emitCode : this.emitCode);
      }
      
      public function writeSource(param1:ByteArray) : void
      {
         param1.writeShort(this.parent != null ? this.parent.index : this.index);
         param1.writeByte(this.parent != null ? this.parent.relOffset : this.relOffset);
         param1.writeByte(this.swizzle);
         param1.writeByte(this.parent != null ? this.parent.emitCode : this.emitCode);
         param1.writeByte(this.parent != null ? this.parent.relType : this.relType);
         param1.writeShort(this.parent != null ? this.parent.relSel : this.relSel);
      }
      
      protected function relate(param1:Register, param2:uint) : void
      {
         this.relType = param1.emitCode;
         this.index = param1.index;
         if((param1.destMask & param1.destMask - 1) != 0)
         {
            throw new Error("Register must has simple swizzle: .x, .y, .z, .w");
         }
         this.relSel = Math.log(param1.destMask) / 0.6931471805599453;
         this.relSel |= 32768;
         this.relOffset = param2;
      }
   }
}

