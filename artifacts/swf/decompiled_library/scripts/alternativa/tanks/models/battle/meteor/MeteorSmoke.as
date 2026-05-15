package alternativa.tanks.models.battle.meteor
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.sfx.§5214232204232217123423632234§;
   import §var set var§.§521423132492313262123423632234§;
   
   public class MeteorSmoke extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      private const §5214239724239737123423632234§:Number = 0.4;
      
      private const §5214236664236677123423632234§:Number = 0.04;
      
      private const §5214235154235167123423632234§:Number = 0.002;
      
      private const §521423131252313138123423632234§:Number = 50;
      
      private const §package switch import§:Number = 0.05;
      
      private const WIDTH:Number = 200;
      
      private const §return switch if§:Number = 200;
      
      private var sprite:Sprite3D;
      
      private var container:§switch var final§;
      
      public function MeteorSmoke(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.sprite = new Sprite3D(200,200);
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
      
      public function init(param1:Vector3, param2:Vector3, param3:TextureMaterial) : void
      {
         this.sprite.material = param3;
         this.sprite.rotation = Math.random() * 3.141592653589793 * 2;
         this.sprite.scaleX = 1;
         this.sprite.scaleY = 1;
         this.sprite.scaleZ = 1;
         this.sprite.alpha = 0.4;
         this.sprite.x = param1.x - param2.x * 40;
         this.sprite.y = param1.y - param2.y * 40;
         this.sprite.z = param1.z - param2.z * 40;
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.container = param1;
         this.container.§5214237128237141123423632234§(this.sprite);
      }
      
      public function kill() : void
      {
         this.sprite.alpha = 0;
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         var _loc3_:Number = 0.04 * 0.05 * param1;
         this.sprite.scaleX += _loc3_;
         this.sprite.scaleY += _loc3_;
         this.sprite.scaleZ += _loc3_;
         this.sprite.alpha -= 0.002 * 0.05 * param1;
         return this.sprite.alpha > 0;
      }
   }
}

