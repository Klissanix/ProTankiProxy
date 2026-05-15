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
   
   public class NuclearBangSprite extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      private const §5214239407239420123423632234§:Number = 90;
      
      private var sprite:Sprite3D;
      
      private var container:§switch var final§ = null;
      
      private var direction:Vector3 = new Vector3();
      
      private var w:Number = 0;
      
      private var time:Number = 0;
      
      public function NuclearBangSprite(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function destroy() : void
      {
         if(this.container != null)
         {
            this.container.§5214231752231765123423632234§(this.sprite);
            this.container = null;
         }
         this.sprite.material = null;
         §521423117092311722123423632234§();
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         var _loc4_:Number = param1 / 1000;
         this.time += _loc4_;
         var _loc5_:Boolean = false;
         var _loc3_:Number = 1;
         if(this.time <= 0.16666666666666666)
         {
            _loc3_ = this.time / 0.16666666666666666;
            _loc5_ = true;
         }
         else if(this.time <= 2)
         {
            _loc3_ = 1;
            _loc5_ = true;
         }
         else if(this.time <= 2.6666666666666665)
         {
            _loc3_ = 1 - (this.time - 2) / (2.6666666666666665 - 2);
            _loc5_ = true;
         }
         this.sprite.x += this.direction.x * _loc4_ * 90;
         this.sprite.y += this.direction.y * _loc4_ * 90;
         this.sprite.z += this.direction.z * _loc4_ * 90 * 2.4;
         this.sprite.rotation += this.w * _loc4_ * 0.3;
         this.sprite.alpha = _loc3_;
         return _loc5_ && _loc3_ <= 1;
      }
      
      public function kill() : void
      {
         this.destroy();
      }
      
      private function d51d05c(param1:Vector3, param2:Vector3, param3:Number) : void
      {
         this.sprite = new Sprite3D(550 * param3,550 * param3);
         this.sprite.rotation = -1.5707963267948966 + Math.random() * 3.141592653589793;
         this.sprite.x = param1.x + param2.x;
         this.sprite.y = param1.y + param2.y;
         this.sprite.z = param1.z + param2.z;
         this.sprite.useLight = false;
         this.sprite.useShadowMap = false;
         this.sprite.softAttenuation = 200;
         this.direction.copy(param2).normalize();
         this.w = Math.random() > 0.5 ? 1 : -1;
      }
      
      public function initSmoke(param1:Vector3, param2:Vector3, param3:Number, param4:TextureMaterial) : void
      {
         this.d51d05c(param1,param2,param3);
         this.sprite.material = param4;
         this.time = 0;
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.container = param1;
         param1.§5214237128237141123423632234§(this.sprite);
      }
      
      public function initFlame(param1:Vector3, param2:Vector3, param3:Number, param4:TextureMaterial) : void
      {
         this.d51d05c(param1,param2,param3);
         this.sprite.blendMode = "add";
         this.sprite.material = param4;
         this.time = 0;
      }
   }
}

