package alternativa.gfx.core
{
   import alternativa.gfx.alternativagfx;
   import flash.display3D.Context3D;
   import flash.display3D.IndexBuffer3D;
   
   use namespace alternativagfx;
   
   public class IndexBufferResource extends Resource
   {
      
      alternativagfx var buffer:IndexBuffer3D;
      
      private var d56976c6:Vector.<uint>;
      
      private var c33aaa48:int;
      
      public function IndexBufferResource(param1:Vector.<uint>)
      {
         super();
         this.d56976c6 = param1;
         this.c33aaa48 = this.d56976c6.length;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.buffer != null)
         {
            this.buffer.dispose();
            this.buffer = null;
         }
         this.d56976c6 = null;
      }
      
      override public function reset() : void
      {
         super.reset();
         if(this.buffer != null)
         {
            this.buffer.dispose();
            this.buffer = null;
         }
      }
      
      override public function get available() : Boolean
      {
         return this.d56976c6 != null;
      }
      
      override alternativagfx function create(param1:Context3D) : void
      {
         super.alternativagfx::create(param1);
         this.buffer = param1.createIndexBuffer(this.c33aaa48);
      }
      
      override alternativagfx function upload() : void
      {
         super.alternativagfx::upload();
         this.buffer.uploadFromVector(this.d56976c6,0,this.c33aaa48);
      }
   }
}

