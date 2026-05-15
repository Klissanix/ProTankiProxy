package alternativa.tanks.sfx
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import §var set var§.§521423132492313262123423632234§;
   
   public class MovingObject3DPositionProvider extends §final switch return§ implements §class use return§
   {
      
      private var §if package const§:Vector3 = new Vector3();
      
      private var §native use function§:Vector3 = new Vector3();
      
      private var acceleration:Number;
      
      public function MovingObject3DPositionProvider(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function updateObjectPosition(param1:Object3D, param2:§521423132492313262123423632234§, param3:int) : void
      {
         var _loc5_:Number = NaN;
         _loc5_ = 0.001 * param3;
         param1.x += this.§native use function§.x * _loc5_;
         param1.y += this.§native use function§.y * _loc5_;
         param1.z += this.§native use function§.z * _loc5_;
         var _loc4_:Number = this.§native use function§.length();
         _loc4_ = _loc4_ + this.acceleration * _loc5_;
         if(_loc4_ <= 0)
         {
            this.§native use function§.reset();
         }
         else
         {
            this.§native use function§.normalize();
            this.§native use function§.scale(_loc4_);
         }
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
      }
      
      public function init(param1:Vector3, param2:Vector3, param3:Number) : void
      {
         this.§if package const§.copy(param1);
         this.§native use function§.copy(param2);
         this.acceleration = param3;
      }
   }
}

