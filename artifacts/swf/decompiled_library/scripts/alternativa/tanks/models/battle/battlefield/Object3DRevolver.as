package alternativa.tanks.models.battle.battlefield
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Quaternion;
   import alternativa.math.Vector3;
   import §else switch default§.§override for default§;
   
   public class Object3DRevolver implements §override for default§
   {
      
      private static const §static catch finally§:Vector3 = new Vector3();
      
      private var object:Object3D;
      
      private var §try use each§:Vector3;
      
      private var §5214234563234576123423632234§:Number;
      
      private var orientation:Quaternion;
      
      public function Object3DRevolver(param1:Object3D, param2:Vector3, param3:Number)
      {
         super();
         this.orientation = new Quaternion();
         this.object = param1;
         this.§try use each§ = param2.clone().normalize();
         this.§5214234563234576123423632234§ = param3 / 1000;
         this.orientation.setFromEulerAnglesXYZ(param1.rotationX,param1.rotationY,param1.rotationZ);
      }
      
      public function setAngularSpeed(param1:Number) : void
      {
         this.§5214234563234576123423632234§ = param1 / 1000;
      }
      
      public function render(param1:int, param2:int) : void
      {
         if(this.§5214234563234576123423632234§ != 0)
         {
            this.orientation.addScaledVector(this.§try use each§,this.§5214234563234576123423632234§ * param2);
            this.orientation.getEulerAngles(§static catch finally§);
            this.object.rotationX = §static catch finally§.x;
            this.object.rotationY = §static catch finally§.y;
            this.object.rotationZ = §static catch finally§.z;
         }
      }
      
      public function setAxis(param1:Number, param2:Number, param3:Number) : void
      {
         this.§try use each§.reset(param1,param2,param3).normalize();
      }
   }
}

