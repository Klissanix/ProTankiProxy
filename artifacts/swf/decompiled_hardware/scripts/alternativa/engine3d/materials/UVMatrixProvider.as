package alternativa.engine3d.materials
{
   import flash.geom.Matrix;
   
   public class UVMatrixProvider
   {
      
      private var bad52f4:Vector.<Number> = new Vector.<Number>(8);
      
      private var matrix:Matrix = new Matrix();
      
      public function UVMatrixProvider()
      {
         super();
      }
      
      public function getMatrix() : Matrix
      {
         return this.matrix;
      }
      
      public function getValues() : Vector.<Number>
      {
         var _loc1_:Matrix = this.getMatrix();
         this.bad52f4[0] = _loc1_.a;
         this.bad52f4[1] = _loc1_.b;
         this.bad52f4[2] = _loc1_.tx;
         this.bad52f4[3] = 0;
         this.bad52f4[4] = _loc1_.c;
         this.bad52f4[5] = _loc1_.d;
         this.bad52f4[6] = _loc1_.ty;
         this.bad52f4[7] = 0;
         return this.bad52f4;
      }
   }
}

