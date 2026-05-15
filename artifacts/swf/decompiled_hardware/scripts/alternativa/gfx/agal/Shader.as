package alternativa.gfx.agal
{
   import flash.utils.ByteArray;
   
   public class Shader
   {
      
      protected static const MOV:int = 0;
      
      protected static const ADD:int = 1;
      
      protected static const SUB:int = 2;
      
      protected static const MUL:int = 3;
      
      protected static const DIV:int = 4;
      
      protected static const RCP:int = 5;
      
      protected static const MIN:int = 6;
      
      protected static const MAX:int = 7;
      
      protected static const FRC:int = 8;
      
      protected static const SQT:int = 9;
      
      protected static const RSQ:int = 10;
      
      protected static const POW:int = 11;
      
      protected static const LOG:int = 12;
      
      protected static const EXP:int = 13;
      
      protected static const NRM:int = 14;
      
      protected static const SIN:int = 15;
      
      protected static const COS:int = 16;
      
      protected static const CRS:int = 17;
      
      protected static const DP3:int = 18;
      
      protected static const DP4:int = 19;
      
      protected static const ABS:int = 20;
      
      protected static const NEG:int = 21;
      
      protected static const SAT:int = 22;
      
      protected static const M33:int = 23;
      
      protected static const M44:int = 24;
      
      protected static const M34:int = 25;
      
      protected static const DDX:int = 26;
      
      protected static const DDY:int = 27;
      
      protected static const IFE:int = 28;
      
      protected static const INE:int = 29;
      
      protected static const IFG:int = 30;
      
      protected static const IFL:int = 31;
      
      protected static const ELS:int = 32;
      
      protected static const EIF:int = 33;
      
      protected static const TED:int = 38;
      
      protected static const KIL:int = 39;
      
      protected static const TEX:int = 40;
      
      protected static const SGE:int = 41;
      
      protected static const SLT:int = 42;
      
      protected static const SGN:int = 43;
      
      protected static const SEQ:int = 44;
      
      protected static const SNE:int = 45;
      
      public static const v0:CommonRegister = new CommonRegister(0,4);
      
      public static const v1:CommonRegister = new CommonRegister(1,4);
      
      public static const v2:CommonRegister = new CommonRegister(2,4);
      
      public static const v3:CommonRegister = new CommonRegister(3,4);
      
      public static const v4:CommonRegister = new CommonRegister(4,4);
      
      public static const v5:CommonRegister = new CommonRegister(5,4);
      
      public static const v6:CommonRegister = new CommonRegister(6,4);
      
      public static const v7:CommonRegister = new CommonRegister(7,4);
      
      public static const cc:RelativeRegister = new RelativeRegister(0,1);
      
      protected var data:ByteArray;
      
      public function Shader()
      {
         super();
         this.data = new ByteArray();
         this.data.endian = "littleEndian";
         this.data.writeByte(160);
         this.data.writeUnsignedInt(1);
         this.data.writeByte(161);
      }
      
      public function mov(param1:Register, param2:Register) : void
      {
         this.op2(0,param1,param2);
      }
      
      public function add(param1:Register, param2:Register, param3:Register) : void
      {
         this.op3(1,param1,param2,param3);
      }
      
      public function sub(param1:Register, param2:Register, param3:Register) : void
      {
         this.op3(2,param1,param2,param3);
      }
      
      public function mul(param1:Register, param2:Register, param3:Register) : void
      {
         this.op3(3,param1,param2,param3);
      }
      
      public function div(param1:Register, param2:Register, param3:Register) : void
      {
         this.op3(4,param1,param2,param3);
      }
      
      public function rcp(param1:Register, param2:Register) : void
      {
         this.op2(5,param1,param2);
      }
      
      public function min(param1:Register, param2:Register, param3:Register) : void
      {
         this.op3(6,param1,param2,param3);
      }
      
      public function max(param1:Register, param2:Register, param3:Register) : void
      {
         this.op3(7,param1,param2,param3);
      }
      
      public function frc(param1:Register, param2:Register) : void
      {
         this.op2(8,param1,param2);
      }
      
      public function sqt(param1:Register, param2:Register) : void
      {
         this.op2(9,param1,param2);
      }
      
      public function rsq(param1:Register, param2:Register) : void
      {
         this.op2(10,param1,param2);
      }
      
      public function pow(param1:Register, param2:Register, param3:Register) : void
      {
         this.op3(11,param1,param2,param3);
      }
      
      public function log(param1:Register, param2:Register) : void
      {
         this.op2(12,param1,param2);
      }
      
      public function exp(param1:Register, param2:Register) : void
      {
         this.op2(13,param1,param2);
      }
      
      public function nrm(param1:Register, param2:Register) : void
      {
         this.op2(14,param1,param2);
      }
      
      public function sin(param1:Register, param2:Register) : void
      {
         this.op2(15,param1,param2);
      }
      
      public function cos(param1:Register, param2:Register) : void
      {
         this.op2(16,param1,param2);
      }
      
      public function crs(param1:Register, param2:Register, param3:Register) : void
      {
         this.op3(17,param1,param2,param3);
      }
      
      public function dp3(param1:Register, param2:Register, param3:Register) : void
      {
         this.op3(18,param1,param2,param3);
      }
      
      public function dp4(param1:Register, param2:Register, param3:Register) : void
      {
         this.op3(19,param1,param2,param3);
      }
      
      public function abs(param1:Register, param2:Register) : void
      {
         this.op2(20,param1,param2);
      }
      
      public function neg(param1:Register, param2:Register) : void
      {
         this.op2(21,param1,param2);
      }
      
      public function sat(param1:Register, param2:Register) : void
      {
         this.op2(22,param1,param2);
      }
      
      public function m33(param1:Register, param2:Register, param3:Register) : void
      {
         this.op3(23,param1,param2,param3);
      }
      
      public function m44(param1:Register, param2:Register, param3:Register) : void
      {
         this.op3(24,param1,param2,param3);
      }
      
      public function m34(param1:Register, param2:Register, param3:Register) : void
      {
         this.op3(25,param1,param2,param3);
      }
      
      public function sge(param1:Register, param2:Register, param3:Register) : void
      {
         this.op3(41,param1,param2,param3);
      }
      
      public function slt(param1:Register, param2:Register, param3:Register) : void
      {
         this.op3(42,param1,param2,param3);
      }
      
      public function sgn(param1:Register, param2:Register, param3:Register) : void
      {
         this.op3(43,param1,param2,param3);
      }
      
      public function seq(param1:Register, param2:Register, param3:Register) : void
      {
         this.op3(44,param1,param2,param3);
      }
      
      public function sne(param1:Register, param2:Register, param3:Register) : void
      {
         this.op3(45,param1,param2,param3);
      }
      
      protected function op2(param1:int, param2:Register, param3:Register) : void
      {
         this.data.writeUnsignedInt(param1);
         param2.writeDest(this.data);
         param3.writeSource(this.data);
         this.data.writeUnsignedInt(0);
         this.data.writeUnsignedInt(0);
      }
      
      protected function op3(param1:int, param2:Register, param3:Register, param4:Register) : void
      {
         this.data.writeUnsignedInt(param1);
         param2.writeDest(this.data);
         param3.writeSource(this.data);
         param4.writeSource(this.data);
      }
      
      public function get agalcode() : ByteArray
      {
         return this.data;
      }
   }
}

