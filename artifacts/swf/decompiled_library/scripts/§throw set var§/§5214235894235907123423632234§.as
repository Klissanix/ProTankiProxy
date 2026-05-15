package §throw set var§
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   
   public class §5214235894235907123423632234§
   {
      
      private var §for package get§:Vector3;
      
      private var §try const throw§:Matrix4;
      
      public function §5214235894235907123423632234§(param1:Object3D)
      {
         super();
         this.§for package get§ = new Vector3(param1.boundMaxX - param1.boundMinX,param1.boundMaxY - param1.boundMinY,param1.boundMaxZ - param1.boundMinZ);
         this.§for package get§ = this.§for package get§.scale(0.5);
         this.§try const throw§ = new Matrix4();
         var _loc2_:Vector3 = new Vector3(param1.boundMaxX + param1.boundMinX,param1.boundMinY + param1.boundMaxY,param1.boundMinZ + param1.boundMaxZ);
         _loc2_.scale(0.5);
         this.§try const throw§.setMatrix(_loc2_.x + param1.x,_loc2_.y + param1.y,_loc2_.z + param1.z,param1.rotationX,param1.rotationY,param1.rotationZ);
      }
      
      public function §import for var§() : Matrix4
      {
         return this.§try const throw§;
      }
      
      public function §use case§() : Vector3
      {
         return this.§for package get§;
      }
   }
}

