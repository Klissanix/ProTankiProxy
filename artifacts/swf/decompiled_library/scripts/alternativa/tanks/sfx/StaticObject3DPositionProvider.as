package alternativa.tanks.sfx
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import §var set var§.§521423132492313262123423632234§;
   
   public class StaticObject3DPositionProvider extends §final switch return§ implements §class use return§
   {
      
      private static const §var set dynamic§:Vector3 = new Vector3();
      
      private var position:Vector3 = new Vector3();
      
      private var §static var each§:Number;
      
      public function StaticObject3DPositionProvider(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function destroy() : void
      {
         §521423117092311722123423632234§();
      }
      
      public function init(param1:Vector3, param2:Number) : void
      {
         this.position.copy(param1);
         this.§static var each§ = param2;
      }
      
      public function updateObjectPosition(param1:Object3D, param2:§521423132492313262123423632234§, param3:int) : void
      {
         §var set dynamic§.x = param2.x - this.position.x;
         §var set dynamic§.y = param2.y - this.position.y;
         §var set dynamic§.z = param2.z - this.position.z;
         §var set dynamic§.normalize();
         param1.x = this.position.x + this.§static var each§ * §var set dynamic§.x;
         param1.y = this.position.y + this.§static var each§ * §var set dynamic§.y;
         param1.z = this.position.z + this.§static var each§ * §var set dynamic§.z;
      }
      
      public function initPosition(param1:Object3D) : void
      {
         param1.x = this.position.x;
         param1.y = this.position.y;
         param1.z = this.position.z;
      }
   }
}

