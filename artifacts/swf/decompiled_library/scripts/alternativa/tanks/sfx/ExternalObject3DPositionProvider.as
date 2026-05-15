package alternativa.tanks.sfx
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import §var set var§.§521423132492313262123423632234§;
   
   public class ExternalObject3DPositionProvider extends §final switch return§ implements §class use return§
   {
      
      private var position:Vector3 = new Vector3();
      
      public function ExternalObject3DPositionProvider(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function setPosition(param1:Vector3) : void
      {
         this.position.copy(param1);
      }
      
      public function destroy() : void
      {
         §521423117092311722123423632234§();
      }
      
      public function updateObjectPosition(param1:Object3D, param2:§521423132492313262123423632234§, param3:int) : void
      {
         this.initPosition(param1);
      }
      
      public function initPosition(param1:Object3D) : void
      {
         param1.x = this.position.x;
         param1.y = this.position.y;
         param1.z = this.position.z;
      }
   }
}

