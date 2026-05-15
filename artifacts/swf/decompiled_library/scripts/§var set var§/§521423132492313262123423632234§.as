package §var set var§
{
   import alternativa.engine3d.core.Camera3D;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import §else switch default§.§default set class§;
   
   public class §521423132492313262123423632234§ extends Camera3D
   {
      
      private static const §try switch else§:Matrix3 = new Matrix3();
      
      public var §dynamic final§:Vector3 = new Vector3();
      
      public var §case set null§:Vector3 = new Vector3();
      
      public var §each catch for§:Vector3 = new Vector3();
      
      public var §true package dynamic§:Vector3 = new Vector3();
      
      public function §521423132492313262123423632234§()
      {
         super();
         nearClipping = 40;
         farClipping = 200000;
         z = 10000;
         rotationX = -0.01;
         diagramVerticalMargin = 35;
      }
      
      public function §5214233236233249123423632234§(param1:Vector3) : void
      {
         x = param1.x;
         y = param1.y;
         z = param1.z;
      }
      
      public function §5214236259236272123423632234§(param1:Vector3, param2:Vector3) : void
      {
         §try switch else§.setRotationMatrix(rotationX,rotationY,rotationZ);
         §try switch else§.transformVectorInverse(param1,param2);
      }
      
      public function §521423116832311696123423632234§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = Math.cos(rotationX);
         var _loc7_:Number = Math.sin(rotationX);
         var _loc8_:Number = Math.cos(rotationY);
         var _loc5_:Number = Math.sin(rotationY);
         _loc1_ = Math.cos(rotationZ);
         var _loc6_:Number = Math.sin(rotationZ);
         var _loc3_:Number = _loc1_ * _loc5_;
         var _loc4_:Number = _loc6_ * _loc5_;
         this.§case set null§.x = _loc1_ * _loc8_;
         this.§each catch for§.x = _loc3_ * _loc7_ - _loc6_ * _loc2_;
         this.§true package dynamic§.x = _loc3_ * _loc2_ + _loc6_ * _loc7_;
         this.§case set null§.y = _loc6_ * _loc8_;
         this.§each catch for§.y = _loc4_ * _loc7_ + _loc1_ * _loc2_;
         this.§true package dynamic§.y = _loc4_ * _loc2_ - _loc1_ * _loc7_;
         this.§case set null§.z = -_loc5_;
         this.§each catch for§.z = _loc8_ * _loc7_;
         this.§true package dynamic§.z = _loc8_ * _loc2_;
         this.§dynamic final§.x = x;
         this.§dynamic final§.y = y;
         this.§dynamic final§.z = z;
      }
      
      public function §52142348323496123423632234§(param1:Vector3, param2:Vector3) : void
      {
         §try switch else§.setRotationMatrix(rotationX,rotationY,rotationZ);
         §try switch else§.transformVector(param1,param2);
      }
      
      public function §5214232834232847123423632234§() : void
      {
         fov = §default set class§.§521423114942311507123423632234§(view.width,view.height);
      }
   }
}

