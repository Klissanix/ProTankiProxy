package alternativa.tanks.engine3d
{
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.objects.Sprite3D;
   
   public class AnimatedSprite3D extends Sprite3D
   {
      
      public var §52142356623579123423632234§:Boolean;
      
      private var §521423105572310570123423632234§:Vector.<UVFrame>;
      
      private var numFrames:int;
      
      private var fps:Number;
      
      private var §static var dynamic§:Number = 0;
      
      public function AnimatedSprite3D(param1:Number, param2:Number, param3:Material = null)
      {
         super(param1,param2,param3);
         useShadowMap = false;
         useLight = false;
      }
      
      public function clear() : void
      {
         this.§521423105572310570123423632234§ = null;
         material = null;
         this.numFrames = 0;
      }
      
      public function getFps() : Number
      {
         return this.fps;
      }
      
      public function setFrameIndex(param1:int) : void
      {
         var _loc2_:int = param1 / numFrames;
         _loc2_ *= numFrames;
         _loc2_ = param1 - _loc2_;
         this.d16940a4(this.§521423105572310570123423632234§[_loc2_]);
      }
      
      public function getNumFrames() : int
      {
         return this.numFrames;
      }
      
      private function d16940a4(param1:UVFrame) : void
      {
         topLeftU = param1.topLeftU;
         topLeftV = param1.topLeftV;
         bottomRightU = param1.bottomRightU;
         bottomRightV = param1.bottomRightV;
      }
      
      public function setAnimationData(param1:TextureAnimation) : void
      {
         material = param1.material;
         this.§521423105572310570123423632234§ = param1.§while set extends§;
         this.fps = param1.fps;
         this.numFrames = this.§521423105572310570123423632234§.length;
         this.§static var dynamic§ = 0;
         this.setFrameIndex(this.§static var dynamic§);
      }
      
      public function update(param1:Number) : void
      {
         this.§static var dynamic§ += this.fps * param1;
         if(this.§static var dynamic§ >= this.numFrames)
         {
            if(this.§52142356623579123423632234§)
            {
               this.§static var dynamic§ %= this.numFrames;
            }
            else
            {
               this.§static var dynamic§ = this.numFrames - 1;
            }
         }
         var _loc2_:int = this.§static var dynamic§;
         this.d16940a4(this.§521423105572310570123423632234§[_loc2_]);
      }
   }
}

