package alternativa.gfx.core
{
   import alternativa.gfx.alternativagfx;
   import flash.display3D.Context3D;
   import flash.display3D.VertexBuffer3D;
   
   use namespace alternativagfx;
   
   public class VertexBufferResource extends Resource
   {
      
      alternativagfx var buffer:VertexBuffer3D;
      
      protected var _vertices:Vector.<Number>;
      
      protected var _numVertices:int;
      
      protected var _data32PerVertex:int;
      
      public function VertexBufferResource(param1:Vector.<Number>, param2:int)
      {
         super();
         this._vertices = param1;
         this._data32PerVertex = param2;
         this._numVertices = this._vertices.length / this._data32PerVertex;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.buffer != null)
         {
            this.buffer.dispose();
            this.buffer = null;
         }
         this._vertices = null;
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
         return this._vertices != null;
      }
      
      override alternativagfx function create(param1:Context3D) : void
      {
         super.alternativagfx::create(param1);
         this.buffer = param1.createVertexBuffer(this._numVertices,this._data32PerVertex);
      }
      
      override alternativagfx function upload() : void
      {
         super.alternativagfx::upload();
         this.buffer.uploadFromVector(this._vertices,0,this._numVertices);
      }
   }
}

