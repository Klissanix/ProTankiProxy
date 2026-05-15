package alternativa.tanks.sfx
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.math.Vector3;
   import alternativa.tanks.engine3d.TextureAnimation;
   import §var set var§.§521423132492313262123423632234§;
   
   public class AnimatedPlaneEffect extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      private static const §catch const for§:Number = 100;
      
      private var §5214237055237068123423632234§:Number;
      
      protected var scale:Number;
      
      private var §dynamic var try§:Number;
      
      protected var §5214238195238208123423632234§:SquareAnimatedPlane;
      
      private var currentTime:int;
      
      private var §case var import§:int;
      
      private var container:§switch var final§;
      
      public function AnimatedPlaneEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.§5214238195238208123423632234§ = new SquareAnimatedPlane(100);
         this.§5214238195238208123423632234§.useShadowMap = false;
         this.§5214238195238208123423632234§.useLight = false;
         this.§5214238195238208123423632234§.shadowMapAlphaThreshold = 2;
         this.§5214238195238208123423632234§.depthMapAlphaThreshold = 2;
         this.§5214238195238208123423632234§.softAttenuation = 0;
      }
      
      public function destroy() : void
      {
         this.container.§5214231752231765123423632234§(this.§5214238195238208123423632234§);
         this.container = null;
         this.§5214238195238208123423632234§.clear();
         §521423117092311722123423632234§();
      }
      
      public function kill() : void
      {
         this.currentTime = this.§case var import§;
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         if(this.currentTime >= this.§case var import§)
         {
            return false;
         }
         this.§5214238195238208123423632234§.setTime(this.currentTime);
         this.currentTime += param1;
         this.§5214238195238208123423632234§.scaleX = this.scale;
         this.§5214238195238208123423632234§.scaleY = this.scale;
         this.scale = this.§dynamic var try§ + this.§dynamic var try§ * this.§5214237055237068123423632234§ * this.currentTime;
         return true;
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.container = param1;
         param1.§5214237128237141123423632234§(this.§5214238195238208123423632234§);
      }
      
      public function init(param1:Number, param2:Vector3, param3:Vector3, param4:TextureAnimation, param5:Number) : void
      {
         this.§5214238195238208123423632234§.init(param4,0.001 * param4.fps);
         this.§case var import§ = this.§5214238195238208123423632234§.getOneLoopTime();
         this.currentTime = 0;
         this.§5214237055237068123423632234§ = 0.001 * param5;
         this.§dynamic var try§ = param1 / 100;
         this.scale = this.§dynamic var try§;
         this.§5214238195238208123423632234§.x = param2.x;
         this.§5214238195238208123423632234§.y = param2.y;
         this.§5214238195238208123423632234§.z = param2.z;
         this.§5214238195238208123423632234§.rotationX = param3.x;
         this.§5214238195238208123423632234§.rotationY = param3.y;
         this.§5214238195238208123423632234§.rotationZ = param3.z;
      }
   }
}

