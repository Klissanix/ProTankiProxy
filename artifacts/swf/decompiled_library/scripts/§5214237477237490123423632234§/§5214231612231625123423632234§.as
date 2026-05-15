package §5214237477237490123423632234§
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.tanks.engine3d.TextureAnimation;
   import alternativa.tanks.engine3d.UVFrame;
   import alternativa.tanks.sfx.§521423134542313467123423632234§;
   import alternativa.tanks.sfx.§5214232204232217123423632234§;
   import §var set var§.§521423132492313262123423632234§;
   
   public class §5214231612231625123423632234§ extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      private static const §5214232190232203123423632234§:Vector3 = new Vector3();
      
      private static const §521423119502311963123423632234§:Matrix4 = new Matrix4();
      
      protected var sprite:Sprite3D;
      
      private var §5214231240231253123423632234§:Number;
      
      private var §521423114522311465123423632234§:Number;
      
      private var §while set extends§:Vector.<UVFrame>;
      
      private var §get set var§:int;
      
      private var §521423124072312420123423632234§:Vector3 = new Vector3();
      
      private var §catch use continue§:Object3D;
      
      private var §5214234460234473123423632234§:§521423134542313467123423632234§;
      
      private var §catch switch function§:§switch var final§;
      
      public function §5214231612231625123423632234§(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.sprite = new Sprite3D(1,1);
         this.sprite.useShadowMap = false;
         this.sprite.useLight = false;
      }
      
      public function kill() : void
      {
         this.§521423114522311465123423632234§ = this.§get set var§ + 1;
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         if(this.§521423114522311465123423632234§ >= this.§get set var§)
         {
            return false;
         }
         §521423119502311963123423632234§.setMatrix(this.§catch use continue§.x,this.§catch use continue§.y,this.§catch use continue§.z,this.§catch use continue§.rotationX,this.§catch use continue§.rotationY,this.§catch use continue§.rotationZ);
         §521423119502311963123423632234§.transformVector(this.§521423124072312420123423632234§,§5214232190232203123423632234§);
         this.sprite.x = §5214232190232203123423632234§.x;
         this.sprite.y = §5214232190232203123423632234§.y;
         this.sprite.z = §5214232190232203123423632234§.z;
         this.§5214237382237395123423632234§(this.§while set extends§[int(this.§521423114522311465123423632234§)]);
         this.§521423114522311465123423632234§ += this.§5214231240231253123423632234§ * param1;
         return true;
      }
      
      public function destroy() : void
      {
         this.§5214234460234473123423632234§.onGraphicsEffectDestroyed(this);
         this.§5214234460234473123423632234§ = null;
         this.§catch switch function§.§5214231752231765123423632234§(this.sprite);
         this.sprite.material = null;
         this.§while set extends§ = null;
         §521423117092311722123423632234§();
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.§catch switch function§ = param1;
         param1.§5214237128237141123423632234§(this.sprite);
      }
      
      public function init(param1:Number, param2:Number, param3:TextureAnimation, param4:Vector3, param5:Object3D, param6:Number, param7:Number, param8:§521423134542313467123423632234§) : void
      {
         this.§return var try§(param1,param2,param6,param3.material);
         this.§while set extends§ = param3.§while set extends§;
         this.§5214231240231253123423632234§ = 0.001 * param7;
         this.§521423124072312420123423632234§.copy(param4);
         this.§521423124072312420123423632234§.y += 11;
         this.§catch use continue§ = param5;
         this.§5214234460234473123423632234§ = param8;
         this.§get set var§ = this.§while set extends§.length;
         this.§521423114522311465123423632234§ = 0;
      }
      
      private function §return var try§(param1:Number, param2:Number, param3:Number, param4:TextureMaterial) : void
      {
         this.sprite.width = param1;
         this.sprite.height = param2;
         this.sprite.rotation = param3;
         this.sprite.material = param4;
      }
      
      private function §5214237382237395123423632234§(param1:UVFrame) : void
      {
         this.sprite.topLeftU = param1.topLeftU;
         this.sprite.topLeftV = param1.topLeftV;
         this.sprite.bottomRightU = param1.bottomRightU;
         this.sprite.bottomRightV = param1.bottomRightV;
      }
   }
}

