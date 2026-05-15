package §5214234283234296123423632234§
{
   import alternativa.tanks.engine3d.TextureAnimation;
   import alternativa.tanks.engine3d.UVFrame;
   import alternativa.tanks.sfx.SimplePlane;
   
   internal class §case var catch§ extends SimplePlane
   {
      
      private var §521423105572310570123423632234§:Vector.<UVFrame>;
      
      private var §get set var§:int;
      
      private var §521423114522311465123423632234§:Number;
      
      public function §case var catch§()
      {
         super(1,1,0.5,0);
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         useShadowMap = false;
         useLight = false;
      }
      
      public function §521423120402312053123423632234§(param1:Number, param2:Number) : void
      {
         this.§521423114522311465123423632234§ += param1 * param2;
         if(this.§521423114522311465123423632234§ >= this.§get set var§)
         {
            this.§521423114522311465123423632234§ = 0;
         }
         this.§5214237382237395123423632234§(this.§521423105572310570123423632234§[int(this.§521423114522311465123423632234§)]);
      }
      
      private function §5214237382237395123423632234§(param1:UVFrame) : void
      {
         a.u = param1.topLeftU;
         a.v = param1.topLeftV;
         b.u = param1.topLeftU;
         b.v = param1.bottomRightV;
         c.u = param1.bottomRightU;
         c.v = param1.bottomRightV;
         §in var continue§.u = param1.bottomRightU;
         §in var continue§.v = param1.topLeftV;
      }
      
      public function §false set final§() : void
      {
         setMaterialToAllFaces(null);
         this.§521423105572310570123423632234§ = null;
         this.§get set var§ = 0;
      }
      
      public function init(param1:TextureAnimation) : void
      {
         setMaterialToAllFaces(param1.material);
         this.§521423105572310570123423632234§ = param1.§while set extends§;
         this.§get set var§ = this.§521423105572310570123423632234§.length;
         this.§521423114522311465123423632234§ = 0;
         this.§5214237382237395123423632234§(this.§521423105572310570123423632234§[0]);
      }
   }
}

