package §use package import§
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.sfx.§5214232204232217123423632234§;
   import alternativa.tanks.sfx.§class use return§;
   import alternativa.utils.TextureMaterialRegistry;
   import flash.utils.ByteArray;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   import §var set var§.§521423132492313262123423632234§;
   
   public class ChristmasTreeToyEffect extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      public static var §5214235868235881123423632234§:TextureMaterialRegistry;
      
      private static const SIZE:Number = 256;
      
      private static const §5214238228238241123423632234§:Number = 2;
      
      private static const §5214237687237700123423632234§:Number = 100;
      
      private static const §final const static§:Number = 300;
      
      private static const §set use break§:Number = 500;
      
      private static const §implements set in§:Number = 1000;
      
      private static const §case for const§:Number = 0.3;
      
      private static const §5214232137232150123423632234§:Number = 1.3;
      
      private static const §function try§:Number = 1.5707963267948966;
      
      private static const §super var false§:Number = 3;
      
      private static const §include var package§:Class = red_atf$3eb9965de1754a5a572e6b7154139a91842858902;
      
      private static const §override var use§:ByteArray = new §include var package§();
      
      private static const §final use null§:Class = green_atf$92ce0576b0d17ba9128939eb80dd9fa9707670084;
      
      private static const §521423115832311596123423632234§:ByteArray = new §final use null§();
      
      private static const §52142390323916123423632234§:Class = §blue_atf$f80764b03552fe1dc0f9e58bc07c49af-1832808717§;
      
      private static const §5214232286232299123423632234§:ByteArray = new §52142390323916123423632234§();
      
      private static const §function var throw§:Class = §orange_atf$f79d3a5c4d82fcd4db31f1e350231c51-630423417§;
      
      private const §try for each§:ByteArray = new §function var throw§();
      
      private var sprite:Sprite3D;
      
      private var omni:OmniLight = new OmniLight(0,0,0);
      
      private var container:§switch var final§;
      
      private var §if set in§:§class use return§;
      
      private var alive:Boolean;
      
      private var time:Number;
      
      public function ChristmasTreeToyEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function kill() : void
      {
         this.alive = false;
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.container = param1;
         param1.§5214237128237141123423632234§(this.sprite);
         var _loc2_:GPUCapabilities = GPUCapabilities;
         if(projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ && !projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§)
         {
            param1.§5214237128237141123423632234§(this.omni);
         }
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         if(!this.alive)
         {
            return false;
         }
         this.§if set in§.updateObjectPosition(this.sprite,param2,param1);
         var _loc3_:Number = param1 / 1000;
         this.time += _loc3_;
         this.time %= 3;
         var _loc5_:Number = Math.sin(3.141592653589793 * 2 * this.time / 3) * 0.5 + 0.5;
         var _loc4_:Number = 0.3 + (1.3 - 0.3) * _loc5_;
         this.sprite.scaleX = _loc4_;
         this.sprite.scaleY = _loc4_;
         this.sprite.scaleZ = _loc4_;
         this.sprite.rotation += 1.5707963267948966 * _loc3_ * _loc5_;
         this.omni.attenuationBegin = 100 + (300 - 100) * _loc5_;
         this.omni.attenuationEnd = 500 + (1000 - 500) * _loc5_;
         return true;
      }
      
      public function destroy() : void
      {
         this.container.§5214231752231765123423632234§(this.sprite);
         var _loc1_:GPUCapabilities = GPUCapabilities;
         if(projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ && !projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§)
         {
            this.container.§5214231752231765123423632234§(this.omni);
         }
         this.sprite = null;
         this.container = null;
         this.§if set in§.destroy();
         this.§if set in§ = null;
         §521423117092311722123423632234§();
      }
      
      public function init(param1:Sprite3D, param2:§class use return§, param3:Vector3) : void
      {
         this.sprite = param1;
         this.§if set in§ = param2;
         param1.width = 256;
         param1.height = 256;
         param1.originX = 0.5;
         param1.originY = 0.5;
         param1.softAttenuation = 50;
         param1.useLight = false;
         param1.useShadowMap = false;
         param1.shadowMapAlphaThreshold = 2;
         param1.depthMapAlphaThreshold = 2;
         param1.blendMode = "add";
         if(param1.name.indexOf("1") >= 0)
         {
            param1.material = §5214235868235881123423632234§.getMaterialFromAtf(§override var use§);
            this.omni.color = 16727074;
         }
         else if(param1.name.indexOf("2") >= 0)
         {
            param1.material = §5214235868235881123423632234§.getMaterialFromAtf(§521423115832311596123423632234§);
            this.omni.color = 6356736;
         }
         else if(param1.name.indexOf("3") >= 0)
         {
            param1.material = §5214235868235881123423632234§.getMaterialFromAtf(§5214232286232299123423632234§);
            this.omni.color = 34047;
         }
         else if(param1.name.indexOf("4") >= 0)
         {
            param1.material = §5214235868235881123423632234§.getMaterialFromAtf(§try for each§);
            this.omni.color = 16771584;
         }
         this.omni.intensity = 0.7;
         this.omni.attenuationBegin = 300;
         this.omni.attenuationEnd = 1000;
         this.omni.calculateBounds();
         var _loc4_:Number = 200;
         var _loc5_:Number = param1.x - param3.x;
         var _loc7_:Number = param1.y - param3.y;
         var _loc6_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc7_ * _loc7_);
         this.omni.x = param1.x + _loc5_ * _loc4_ / _loc6_;
         this.omni.y = param1.y + _loc7_ * _loc4_ / _loc6_;
         this.omni.z = param1.z + _loc4_ / 2;
         this.time = Math.random() * 3;
         this.alive = true;
      }
   }
}

