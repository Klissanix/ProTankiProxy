package alternativa.tanks.sfx
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import §var set var§.§521423132492313262123423632234§;
   
   public class PlaneMuzzleFlashEffect extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      private static const §521423100162310029123423632234§:Vector3 = new Vector3();
      
      private static const §try var else§:Vector3 = new Vector3();
      
      private static const §5214239146239159123423632234§:Matrix4 = new Matrix4();
      
      private var §5214238195238208123423632234§:SimplePlane;
      
      private var §5214238404238417123423632234§:int;
      
      private var §catch use continue§:Object3D;
      
      private var §521423124072312420123423632234§:Vector3 = new Vector3();
      
      private var container:§switch var final§;
      
      public function PlaneMuzzleFlashEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.§5214238195238208123423632234§ = new SimplePlane(1,1,0.5,0);
         this.§5214238195238208123423632234§.setUVs(0,0,0,1,1,1,1,0);
         this.§5214238195238208123423632234§.shadowMapAlphaThreshold = 2;
         this.§5214238195238208123423632234§.depthMapAlphaThreshold = 2;
         this.§5214238195238208123423632234§.useShadowMap = false;
         this.§5214238195238208123423632234§.useLight = false;
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.container = param1;
         param1.§5214237128237141123423632234§(this.§5214238195238208123423632234§);
      }
      
      public function destroy() : void
      {
         this.container.§5214231752231765123423632234§(this.§5214238195238208123423632234§);
         this.container = null;
         this.§catch use continue§ = null;
         §521423117092311722123423632234§();
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         if(this.§5214238404238417123423632234§ < 0)
         {
            return false;
         }
         this.§5214238404238417123423632234§ -= param1;
         §5214239146239159123423632234§.setMatrix(this.§catch use continue§.x,this.§catch use continue§.y,this.§catch use continue§.z,this.§catch use continue§.rotationX,this.§catch use continue§.rotationY,this.§catch use continue§.rotationZ);
         §5214239146239159123423632234§.transformVector(this.§521423124072312420123423632234§,§try var else§);
         §5214239146239159123423632234§.getAxis(1,§521423100162310029123423632234§);
         SFXUtils.alignObjectPlaneToView(this.§5214238195238208123423632234§,§try var else§,§521423100162310029123423632234§,param2.§dynamic final§);
         return true;
      }
      
      public function init(param1:Vector3, param2:Object3D, param3:TextureMaterial, param4:int, param5:Number, param6:Number) : void
      {
         this.§521423124072312420123423632234§.copy(param1);
         this.§catch use continue§ = param2;
         this.§5214238404238417123423632234§ = param4;
         this.§5214238195238208123423632234§.setMaterialToAllFaces(param3);
         this.§5214238195238208123423632234§.width = param5;
         this.§5214238195238208123423632234§.length = param6;
      }
      
      public function kill() : void
      {
         this.§5214238404238417123423632234§ = -1;
      }
   }
}

