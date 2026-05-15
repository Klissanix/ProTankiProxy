package §521423130632313076123423632234§
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.sfx.§5214232204232217123423632234§;
   import §var set var§.§521423132492313262123423632234§;
   
   public class NuclearLightEffect extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      private var light:Sprite3D = new Sprite3D(5000,5000);
      
      private var container:§switch var final§ = null;
      
      private var time:Number = 0;
      
      private var §get switch implements§:Vector3 = new Vector3();
      
      private var §5214237924237937123423632234§:Vector3 = new Vector3();
      
      private const §import include§:Number = 1550;
      
      public function NuclearLightEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function init(param1:Vector3, param2:TextureMaterial) : void
      {
         this.§get switch implements§.copy(param1);
         this.light.material = param2;
         this.light.useLight = false;
         this.light.useShadowMap = false;
         this.light.blendMode = "add";
         this.light.softAttenuation = 400;
         this.time = 0;
      }
      
      public function destroy() : void
      {
         if(this.container != null)
         {
            this.container.§5214231752231765123423632234§(this.light);
            this.container = null;
         }
         this.light.material = null;
         §521423117092311722123423632234§();
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         var _loc3_:Number = param1 / 1000;
         this.time += _loc3_;
         this.§5214237924237937123423632234§.x = param2.x - this.§get switch implements§.x;
         this.§5214237924237937123423632234§.y = param2.y - this.§get switch implements§.y;
         this.§5214237924237937123423632234§.z = param2.z - this.§get switch implements§.z - 1065;
         this.§5214237924237937123423632234§.normalize();
         this.light.x = this.§get switch implements§.x + this.§5214237924237937123423632234§.x * 1550;
         this.light.y = this.§get switch implements§.y + this.§5214237924237937123423632234§.y * 1550;
         this.light.z = this.§get switch implements§.z + this.§5214237924237937123423632234§.z * 1550 + 1065;
         var _loc4_:Number = 0.05555555555555555;
         if(this.time <= _loc4_)
         {
            this.light.alpha = this.time / _loc4_;
            this.light.visible = true;
         }
         else if(this.time <= 2)
         {
            this.light.alpha = 1 - (this.time - _loc4_) / (2 - _loc4_);
            this.light.visible = true;
         }
         else
         {
            this.light.visible = false;
         }
         return this.light.visible;
      }
      
      public function kill() : void
      {
         this.destroy();
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.container = param1;
         param1.§5214237128237141123423632234§(this.light);
      }
   }
}

