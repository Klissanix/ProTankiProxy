package alternativa.engine3d.objects
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Vertex;
   
   use namespace alternativa3d;
   
   public class Decal extends Mesh
   {
      
      public var attenuation:Number = 1000000;
      
      public function Decal()
      {
         super();
         shadowMapAlphaThreshold = 100;
      }
      
      public function createGeometry(param1:Mesh, param2:Boolean = false) : void
      {
         if(!param2)
         {
            param1 = param1.clone() as Mesh;
         }
         faceList = param1.faceList;
         vertexList = param1.vertexList;
         param1.faceList = null;
         param1.vertexList = null;
         var _loc4_:Vertex = vertexList;
         while(_loc4_ != null)
         {
            _loc4_.transformId = 0;
            _loc4_.id = null;
            _loc4_ = _loc4_.next;
         }
         var _loc3_:Face = faceList;
         while(_loc3_ != null)
         {
            _loc3_.id = null;
            _loc3_ = _loc3_.next;
         }
         calculateBounds();
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:Decal = new Decal();
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override protected function clonePropertiesFrom(param1:Object3D) : void
      {
         super.clonePropertiesFrom(param1);
         var _loc2_:Decal = param1 as Decal;
         this.attenuation = _loc2_.attenuation;
      }
   }
}

