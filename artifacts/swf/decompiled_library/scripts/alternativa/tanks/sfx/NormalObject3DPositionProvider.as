package alternativa.tanks.sfx
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import §var set var§.§521423132492313262123423632234§;
   
   public class NormalObject3DPositionProvider extends §final switch return§ implements §class use return§
   {
      
      private var normal:Vector3 = new Vector3();
      
      private var position:Vector3 = new Vector3();
      
      private var distance:Number;
      
      private var §521423104222310435123423632234§:Vector3 = new Vector3();
      
      public function NormalObject3DPositionProvider(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      private function b39ed379() : void
      {
         this.§521423104222310435123423632234§.copy(this.normal);
         this.§521423104222310435123423632234§.scale(this.distance);
         this.§521423104222310435123423632234§.add(this.position);
      }
      
      public function init(param1:Vector3, param2:Vector3, param3:Number) : void
      {
         this.position.copy(param1);
         this.normal.copy(param2);
         this.distance = param3;
         this.normal.normalize();
         this.b39ed379();
      }
      
      public function initPosition(param1:Object3D) : void
      {
         param1.x = this.§521423104222310435123423632234§.x;
         param1.y = this.§521423104222310435123423632234§.y;
         param1.z = this.§521423104222310435123423632234§.z;
      }
      
      public function updateObjectPosition(param1:Object3D, param2:§521423132492313262123423632234§, param3:int) : void
      {
         this.initPosition(param1);
      }
      
      public function destroy() : void
      {
         §521423117092311722123423632234§();
      }
   }
}

