package alternativa.tanks.sfx
{
   import §5214231366231379123423632234§.§default catch native§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import §for catch for§.§5214234380234393123423632234§;
   import §var set var§.§521423132492313262123423632234§;
   
   public class CollisionObject3DPositionProvider extends §final switch return§ implements §class use return§
   {
      
      private static const §throw set dynamic§:Number = 20;
      
      private static const §get use continue§:Number = 0.2;
      
      private static const §5214239146239159123423632234§:Matrix4 = new Matrix4();
      
      private static const §521423100222310035123423632234§:Vector3 = new Vector3();
      
      private static const direction:Vector3 = new Vector3();
      
      private static const §521423134042313417123423632234§:Vector3 = new Vector3();
      
      private static const §try var else§:Vector3 = new Vector3();
      
      private static const §5214238369238382123423632234§:§default catch native§ = new §default catch native§();
      
      private var maxDistance:Number;
      
      private var §dynamic use switch§:§5214234380234393123423632234§;
      
      private var §521423124072312420123423632234§:Vector3 = new Vector3();
      
      private var §catch use continue§:Object3D;
      
      private var §521423117202311733123423632234§:Number;
      
      private var §521423122722312285123423632234§:Number = 0;
      
      public function CollisionObject3DPositionProvider(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function updateObjectPosition(param1:Object3D, param2:§521423132492313262123423632234§, param3:int) : void
      {
         this.initPosition(param1);
      }
      
      public function init(param1:Object3D, param2:Vector3, param3:§5214234380234393123423632234§, param4:Number, param5:Number = 0.5) : void
      {
         this.§catch use continue§ = param1;
         this.§521423124072312420123423632234§ = param2;
         this.§dynamic use switch§ = param3;
         this.maxDistance = param4;
         this.§521423117202311733123423632234§ = param5;
         this.§521423122722312285123423632234§ = 0;
      }
      
      private function e4cd953() : void
      {
         §5214239146239159123423632234§.setMatrix(this.§catch use continue§.x,this.§catch use continue§.y,this.§catch use continue§.z,this.§catch use continue§.rotationX,this.§catch use continue§.rotationY,this.§catch use continue§.rotationZ);
         §521423134042313417123423632234§.x = §5214239146239159123423632234§.m00;
         §521423134042313417123423632234§.y = §5214239146239159123423632234§.§5214234411234424123423632234§;
         §521423134042313417123423632234§.z = §5214239146239159123423632234§.§521423135662313579123423632234§;
         direction.x = §5214239146239159123423632234§.§5214239800239813123423632234§;
         direction.y = §5214239146239159123423632234§.m11;
         direction.z = §5214239146239159123423632234§.§case set function§;
         §5214239146239159123423632234§.transformVector(this.§521423124072312420123423632234§,§try var else§);
         var _loc1_:Number = this.§521423124072312420123423632234§.y;
         §521423100222310035123423632234§.x = §try var else§.x - _loc1_ * direction.x;
         §521423100222310035123423632234§.y = §try var else§.y - _loc1_ * direction.y;
         §521423100222310035123423632234§.z = §try var else§.z - _loc1_ * direction.z;
      }
      
      public function initPosition(param1:Object3D) : void
      {
         this.e4cd953();
         var _loc2_:Number = this.maxDistance * this.§521423117202311733123423632234§;
         if(this.§dynamic use switch§.§set use for§(§521423100222310035123423632234§,direction,16,this.maxDistance,null,§5214238369238382123423632234§))
         {
            var _temp_1:* = §521423100222310035123423632234§;
            var _loc5_:Vector3 = §5214238369238382123423632234§.§dynamic final§;
            var _loc4_:Vector3 = _temp_1;
            var _loc6_:Number = _loc4_.x - _loc5_.x;
            var _loc7_:Number = _loc4_.y - _loc5_.y;
            var _loc8_:Number = _loc4_.z - _loc5_.z;
            _loc2_ = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_ + _loc8_ * _loc8_) * this.§521423117202311733123423632234§;
         }
         var _loc3_:Number = _loc2_ - this.§521423122722312285123423632234§;
         if(Math.abs(_loc3_) <= 20)
         {
            this.§521423122722312285123423632234§ = _loc2_;
         }
         else
         {
            this.§521423122722312285123423632234§ += _loc3_ * 0.2;
         }
         param1.x = §521423100222310035123423632234§.x + direction.x * this.§521423122722312285123423632234§;
         param1.y = §521423100222310035123423632234§.y + direction.y * this.§521423122722312285123423632234§;
         param1.z = §521423100222310035123423632234§.z + direction.z * this.§521423122722312285123423632234§;
      }
      
      public function destroy() : void
      {
         this.§catch use continue§ = null;
         this.§dynamic use switch§ = null;
         §521423117092311722123423632234§();
      }
   }
}

