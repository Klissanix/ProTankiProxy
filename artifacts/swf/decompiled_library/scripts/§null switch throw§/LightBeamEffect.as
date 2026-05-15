package §null switch throw§
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.tanks.sfx.§5214232204232217123423632234§;
   import §var set var§.§521423132492313262123423632234§;
   
   public class LightBeamEffect extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      private static const §catch const for§:Number = 300;
      
      private var §switch package get§:LightBeam;
      
      private var delay:int;
      
      private var time:int;
      
      private var height:Number;
      
      private var §52142370123714123423632234§:Number;
      
      private var §5214237150237163123423632234§:Number;
      
      private var §5214236471236484123423632234§:Number;
      
      private var x:Number;
      
      private var y:Number;
      
      private var z:Number;
      
      private var §catch use continue§:Object3D;
      
      private var container:§switch var final§;
      
      public function LightBeamEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.§switch package get§ = new LightBeam(300);
         this.§switch package get§.blendMode = "add";
      }
      
      public function init(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Object3D, param11:TextureMaterial) : void
      {
         this.delay = param1;
         this.§switch package get§.scaleX = param2 / 300;
         this.height = param3;
         this.§52142370123714123423632234§ = param4;
         this.§5214237150237163123423632234§ = param5;
         this.§5214236471236484123423632234§ = param6;
         this.x = param7;
         this.y = param8;
         this.z = param9;
         this.§catch use continue§ = param10;
         this.§switch package get§.init(param11);
         this.§switch package get§.softAttenuation = 150;
         this.§switch package get§.depthMapAlphaThreshold = 2;
         this.§switch package get§.shadowMapAlphaThreshold = 2;
         this.§switch package get§.useShadowMap = false;
         this.§switch package get§.useLight = false;
         this.§switch package get§.alpha = 0;
         this.time = 0;
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         if(this.height >= this.§52142370123714123423632234§ && this.§switch package get§.alpha <= 0)
         {
            return false;
         }
         this.§switch package get§.x = this.§catch use continue§.x + this.x;
         this.§switch package get§.y = this.§catch use continue§.y + this.y;
         this.§switch package get§.z = this.§catch use continue§.z + this.z;
         this.§switch package get§.rotationZ = param2.rotationZ;
         this.time += param1;
         if(this.time >= this.delay)
         {
            if(this.height < this.§52142370123714123423632234§)
            {
               this.height += this.§52142370123714123423632234§ * this.§5214237150237163123423632234§ * param1 * 0.001;
               if(this.height >= this.§52142370123714123423632234§)
               {
                  this.height = this.§52142370123714123423632234§;
               }
               this.§switch package get§.scaleZ = this.height / 300;
               this.§switch package get§.alpha = this.height / this.§52142370123714123423632234§;
            }
            else
            {
               this.§switch package get§.alpha -= this.§5214236471236484123423632234§ * param1 * 0.001;
               if(this.§switch package get§.alpha < 0)
               {
                  this.§switch package get§.alpha = 0;
               }
            }
         }
         return true;
      }
      
      public function destroy() : void
      {
         this.container.§5214231752231765123423632234§(this.§switch package get§);
         this.container = null;
         this.§catch use continue§ = null;
         this.§switch package get§.clear();
         §521423117092311722123423632234§();
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.container = param1;
         param1.§5214237128237141123423632234§(this.§switch package get§);
      }
      
      public function kill() : void
      {
         this.height = this.§52142370123714123423632234§;
         this.§switch package get§.alpha = 0;
      }
   }
}

