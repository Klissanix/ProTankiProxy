package alternativa.tanks.sfx
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import §var set var§.§521423132492313262123423632234§;
   
   public class ScalingObject3DPositionProvider extends §final switch return§ implements §class use return§
   {
      
      private var §if package const§:Vector3 = new Vector3();
      
      private var §native use function§:Vector3 = new Vector3();
      
      private var §521423138052313818123423632234§:Number;
      
      public function ScalingObject3DPositionProvider(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function updateObjectPosition(param1:Object3D, param2:§521423132492313262123423632234§, param3:int) : void
      {
         var _loc4_:Number = 0.001 * param3;
         param1.x += this.§native use function§.x * _loc4_;
         param1.y += this.§native use function§.y * _loc4_;
         param1.z += this.§native use function§.z * _loc4_;
         param1.scaleX += this.§521423138052313818123423632234§;
         param1.scaleY += this.§521423138052313818123423632234§;
         param1.scaleZ += this.§521423138052313818123423632234§;
      }
      
      public function destroy() : void
      {
         §521423117092311722123423632234§();
      }
      
      public function initPosition(param1:Object3D) : void
      {
         param1.x = this.§if package const§.x;
         param1.y = this.§if package const§.y;
         param1.z = this.§if package const§.z;
         param1.scaleX = 1;
         param1.scaleY = 1;
         param1.scaleZ = 1;
      }
      
      public function init(param1:Vector3, param2:Vector3, param3:Number) : void
      {
         this.§if package const§.copy(param1);
         this.§native use function§.copy(param2);
         this.§521423138052313818123423632234§ = param3;
      }
   }
}

