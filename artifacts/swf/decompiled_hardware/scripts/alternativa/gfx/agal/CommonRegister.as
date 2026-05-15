package alternativa.gfx.agal
{
   public class CommonRegister extends Register
   {
      
      protected static const X:int = 0;
      
      protected static const Y:int = 1;
      
      protected static const Z:int = 2;
      
      protected static const W:int = 3;
      
      public var x:Register;
      
      public var y:Register;
      
      public var z:Register;
      
      public var w:Register;
      
      public var xyz:Register;
      
      public var xy:Register;
      
      public var xw:Register;
      
      public var xz:Register;
      
      public var zw:Register;
      
      public function CommonRegister(param1:int, param2:int)
      {
         super();
         this.index = param1;
         this.emitCode = param2;
         this.x = Register.get(getSwizzle(0,0,0,0),getDestMask(true,false,false,false),this);
         this.y = Register.get(getSwizzle(1,1,1,1),getDestMask(false,true,false,false),this);
         this.z = Register.get(getSwizzle(2,2,2,2),getDestMask(false,false,true,false),this);
         this.w = Register.get(getSwizzle(3,3,3,3),getDestMask(false,false,false,true),this);
         this.xyz = Register.get(getSwizzle(0,1,2,2),getDestMask(true,true,true,false),this);
         this.xy = Register.get(getSwizzle(0,1,1,1),getDestMask(true,true,false,false),this);
         this.xz = Register.get(getSwizzle(0,2,2,2),getDestMask(true,false,true,false),this);
         this.xw = Register.get(getSwizzle(0,3,3,3),getDestMask(true,false,false,true),this);
         this.zw = Register.get(getSwizzle(2,3,3,3),getDestMask(false,false,true,true),this);
      }
   }
}

