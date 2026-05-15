package §null switch throw§
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.sfx.§5214232204232217123423632234§;
   import §var set var§.§521423132492313262123423632234§;
   
   public class LightWaveEffect extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      private static const §521423128092312822123423632234§:Vector3 = new Vector3();
      
      private var §finally var true§:Sprite3D;
      
      private var delay:int;
      
      private var time:int;
      
      private var §5214239337239350123423632234§:Number;
      
      private var direction:Boolean;
      
      private var §catch use continue§:Object3D;
      
      private var state:int;
      
      private var container:§switch var final§;
      
      public function LightWaveEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.§finally var true§ = new Sprite3D(10,10);
         this.§finally var true§.blendMode = "add";
      }
      
      public function kill() : void
      {
         this.state = 2;
         this.§finally var true§.alpha = 0;
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         var _loc8_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.state == 2)
         {
            return false;
         }
         var _loc7_:Number = 3.5;
         var _loc6_:Number = _loc7_ / 3;
         var _loc3_:Number = 0.2;
         var _loc5_:Number = 300;
         §521423128092312822123423632234§.x = param2.x - this.§catch use continue§.x;
         §521423128092312822123423632234§.y = param2.y - this.§catch use continue§.y;
         §521423128092312822123423632234§.z = param2.z - this.§catch use continue§.z;
         §521423128092312822123423632234§.normalize();
         §521423128092312822123423632234§.scale(_loc5_);
         this.§finally var true§.x = this.§catch use continue§.x + §521423128092312822123423632234§.x;
         this.§finally var true§.y = this.§catch use continue§.y + §521423128092312822123423632234§.y;
         this.§finally var true§.z = this.§catch use continue§.z + §521423128092312822123423632234§.z + 30;
         this.time += param1;
         if(this.time >= this.delay)
         {
            if(this.direction)
            {
               this.§finally var true§.rotation += _loc3_ * param1 * 0.001;
            }
            else
            {
               this.§finally var true§.rotation -= _loc3_ * param1 * 0.001;
            }
            if(this.state == 0)
            {
               _loc8_ = _loc7_ * param1 * 0.001;
               this.§finally var true§.scaleX += _loc8_;
               this.§finally var true§.scaleY += _loc8_;
               this.§finally var true§.scaleZ += _loc8_;
               if(this.§finally var true§.scaleX > this.§5214239337239350123423632234§)
               {
                  this.§finally var true§.scaleX = this.§5214239337239350123423632234§;
                  this.§finally var true§.scaleY = this.§5214239337239350123423632234§;
                  this.§finally var true§.scaleZ = this.§5214239337239350123423632234§;
                  this.state = 1;
               }
               this.§finally var true§.alpha = (this.§finally var true§.scaleX - 1) / (this.§5214239337239350123423632234§ - 1);
            }
            else if(this.state == 1)
            {
               _loc4_ = _loc6_ * param1 * 0.001;
               this.§finally var true§.scaleX -= _loc4_;
               this.§finally var true§.scaleY -= _loc4_;
               this.§finally var true§.scaleZ -= _loc4_;
               if(this.§finally var true§.scaleX < 1)
               {
                  this.§finally var true§.scaleX = 1;
                  this.§finally var true§.scaleY = 1;
                  this.§finally var true§.scaleZ = 1;
                  this.state = 2;
               }
               this.§finally var true§.alpha = (this.§finally var true§.scaleX - 1) / (this.§5214239337239350123423632234§ - 1) - 0.1;
            }
         }
         return true;
      }
      
      public function init(param1:int, param2:Number, param3:Number, param4:Boolean, param5:Object3D, param6:TextureMaterial) : void
      {
         this.delay = param1;
         this.§finally var true§.width = param2;
         this.§finally var true§.height = param2;
         this.§finally var true§.calculateBounds();
         this.§5214239337239350123423632234§ = param3;
         this.direction = param4;
         this.§catch use continue§ = param5;
         param6.resolution = 5;
         this.§finally var true§.material = param6;
         this.§finally var true§.scaleX = 1;
         this.§finally var true§.scaleY = 1;
         this.§finally var true§.scaleZ = 1;
         this.§finally var true§.rotation = 0;
         this.§finally var true§.alpha = 0;
         this.state = 0;
         this.§finally var true§.softAttenuation = 150;
         this.§finally var true§.depthMapAlphaThreshold = 2;
         this.§finally var true§.shadowMapAlphaThreshold = 2;
         this.§finally var true§.useShadowMap = false;
         this.§finally var true§.useLight = false;
         this.time = 0;
      }
      
      public function destroy() : void
      {
         this.container.§5214231752231765123423632234§(this.§finally var true§);
         this.container = null;
         this.§finally var true§.material = null;
         §521423117092311722123423632234§();
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.container = param1;
         param1.§5214237128237141123423632234§(this.§finally var true§);
      }
   }
}

