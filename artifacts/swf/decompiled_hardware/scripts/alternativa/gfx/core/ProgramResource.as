package alternativa.gfx.core
{
   import alternativa.gfx.alternativagfx;
   import flash.display3D.Context3D;
   import flash.display3D.Program3D;
   import flash.utils.ByteArray;
   
   use namespace alternativagfx;
   
   public class ProgramResource extends Resource
   {
      
      alternativagfx var program:Program3D;
      
      private var a5316f9d:ByteArray;
      
      private var f23c15e6:ByteArray;
      
      public function ProgramResource(param1:ByteArray, param2:ByteArray)
      {
         super();
         this.a5316f9d = param1;
         this.f23c15e6 = param2;
      }
      
      public function get vertexProgram() : ByteArray
      {
         return this.a5316f9d;
      }
      
      public function get fragmentProgram() : ByteArray
      {
         return this.f23c15e6;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.program != null)
         {
            this.program.dispose();
            this.program = null;
         }
         this.a5316f9d = null;
         this.f23c15e6 = null;
      }
      
      override public function reset() : void
      {
         super.reset();
         if(this.program != null)
         {
            this.program.dispose();
            this.program = null;
         }
      }
      
      override public function get available() : Boolean
      {
         return this.a5316f9d != null && this.f23c15e6 != null;
      }
      
      override alternativagfx function create(param1:Context3D) : void
      {
         super.alternativagfx::create(param1);
         this.program = param1.createProgram();
      }
      
      override alternativagfx function upload() : void
      {
         super.alternativagfx::upload();
         this.program.upload(this.vertexProgram,this.fragmentProgram);
      }
   }
}

