package §native set continue§
{
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.math.Vector3;
   
   public class §static switch if§ extends Sprite3D
   {
      
      private var §5214236311236324123423632234§:Number;
      
      private var §5214237593237606123423632234§:Vector3;
      
      private var §class null§:Number;
      
      private var §5214237586237599123423632234§:Number;
      
      public function §static switch if§(param1:TextureMaterial, param2:Number, param3:Number)
      {
         super(20,20,param1);
         softAttenuation = 80;
         useLight = false;
         useShadowMap = false;
         this.§class null§ = param2;
         this.§5214237586237599123423632234§ = param3;
         var _loc5_:Number = (Math.random() * 2 - 1) * 0.2;
         var _loc4_:Number = (Math.random() * 2 - 1) * 0.2;
         §5214237593237606123423632234§ = new Vector3(_loc5_,_loc4_,-1);
         §5214237593237606123423632234§.normalize();
         rotationZ = Math.random() * 3.141592653589793 * 2;
         this.§5214236311236324123423632234§ = Math.max(0.3,Math.random()) * 0.35;
      }
      
      public function §521423120402312053123423632234§(param1:int, param2:Camera3D) : void
      {
         var _loc3_:Number = §5214236311236324123423632234§ * param1;
         x += §5214237593237606123423632234§.x * _loc3_;
         y += §5214237593237606123423632234§.y * _loc3_;
         z += §5214237593237606123423632234§.z * _loc3_;
         if(z < param2.z - §class null§ / 1.6)
         {
            reset(param2);
         }
         rotationZ += 0.006;
      }
      
      public function reset(param1:Camera3D) : void
      {
         x = param1.x + (Math.random() * 2 - 1) * §class null§;
         y = param1.y + (Math.random() * 2 - 1) * §class null§;
         z = param1.z + Math.random() * §5214237586237599123423632234§;
      }
   }
}

