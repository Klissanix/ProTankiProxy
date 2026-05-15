package §super set for§
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import alternativa.math.Vector3;
   import alternativa.tanks.engine3d.AnimatedSprite3D;
   import alternativa.tanks.engine3d.TextureAnimation;
   import alternativa.tanks.sfx.SFXUtils;
   
   public class §521423103402310353123423632234§ extends §static switch if§
   {
      
      private var §521423131232313136123423632234§:Number;
      
      private var §5214239179239192123423632234§:Number;
      
      private var §override switch default§:AnimatedSprite3D = new AnimatedSprite3D(1,1);
      
      public function §521423103402310353123423632234§(param1:§5214236270236283123423632234§)
      {
         super(param1);
         SFXUtils.setEffectParams(this.§override switch default§);
      }
      
      public function get §const package super§() : Number
      {
         return this.§5214239179239192123423632234§;
      }
      
      public function get §else use extends§() : Number
      {
         return this.§521423131232313136123423632234§;
      }
      
      public function init(param1:Number, param2:Vector3, param3:Number, param4:TextureAnimation) : void
      {
         this.§override switch default§.width = param1;
         this.§override switch default§.height = param1;
         this.§override switch default§.setAnimationData(param4);
         this.§override switch default§.x = param2.x;
         this.§override switch default§.y = param2.y;
         this.§override switch default§.z = param2.z;
         this.§override switch default§.rotation = param3;
         this.§521423131232313136123423632234§ = param3;
         this.§5214239179239192123423632234§ = param2.z;
      }
      
      public function get sprite() : AnimatedSprite3D
      {
         return this.§override switch default§;
      }
   }
}

