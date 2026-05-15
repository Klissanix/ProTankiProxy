package alternativa.tanks.sfx
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import §var set var§.§521423132492313262123423632234§;
   
   public class MuzzlePositionProvider extends §final switch return§ implements §class use return§
   {
      
      private static const §5214239146239159123423632234§:Matrix4 = new Matrix4();
      
      private static const §5214232190232203123423632234§:Vector3 = new Vector3();
      
      private var §catch use continue§:Object3D;
      
      private var §in set finally§:Vector3 = new Vector3();
      
      public function MuzzlePositionProvider(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function updateObjectPosition(param1:Object3D, param2:§521423132492313262123423632234§, param3:int) : void
      {
         §5214239146239159123423632234§.setMatrix(this.§catch use continue§.x,this.§catch use continue§.y,this.§catch use continue§.z,this.§catch use continue§.rotationX,this.§catch use continue§.rotationY,this.§catch use continue§.rotationZ);
         §5214239146239159123423632234§.transformVector(this.§in set finally§,§5214232190232203123423632234§);
         param1.x = §5214232190232203123423632234§.x;
         param1.y = §5214232190232203123423632234§.y;
         param1.z = §5214232190232203123423632234§.z;
      }
      
      public function initPosition(param1:Object3D) : void
      {
      }
      
      public function destroy() : void
      {
         this.§catch use continue§ = null;
         §521423117092311722123423632234§();
      }
      
      public function init(param1:Object3D, param2:Vector3, param3:Number = 0) : void
      {
         this.§catch use continue§ = param1;
         this.§in set finally§.copy(param2);
         this.§in set finally§.y += param3;
      }
   }
}

