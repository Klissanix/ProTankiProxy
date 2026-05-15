package §52142328223295123423632234§
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.tanks.sfx.§5214232204232217123423632234§;
   import §var set var§.§521423132492313262123423632234§;
   
   public class §521423112402311253123423632234§ extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      private static const §5214236664236677123423632234§:Number = 0.006;
      
      private static const §5214235154235167123423632234§:Number = 0.007;
      
      private var §catch switch function§:§switch var final§;
      
      private var sprite:Sprite3D;
      
      public function §521423112402311253123423632234§(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.sprite = new Sprite3D(60,60);
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         this.sprite.scaleX -= 0.006;
         this.sprite.scaleY -= 0.006;
         this.sprite.scaleZ -= 0.006;
         this.sprite.alpha -= 0.007;
         if(this.sprite.alpha <= 0.05)
         {
            this.§catch switch function§.§5214231752231765123423632234§(this.sprite);
            return false;
         }
         return true;
      }
      
      public function destroy() : void
      {
         if(this.§catch switch function§)
         {
            this.§catch switch function§.§5214231752231765123423632234§(this.sprite);
         }
         this.§catch switch function§ = null;
         this.sprite.material = null;
         §521423117092311722123423632234§();
      }
      
      public function init(param1:Mesh, param2:TextureMaterial) : void
      {
         this.sprite.material = param2;
         this.sprite.rotation = Math.random() * 3.141592653589793 * 2;
         this.sprite.scaleX = 1;
         this.sprite.scaleY = 1;
         this.sprite.scaleZ = 1;
         this.sprite.alpha = 1;
         this.sprite.x = param1.x;
         this.sprite.y = param1.y;
         this.sprite.z = param1.z;
      }
      
      public function kill() : void
      {
         this.sprite.alpha = 0;
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.§catch switch function§ = param1;
         param1.§5214237128237141123423632234§(this.sprite);
      }
   }
}

