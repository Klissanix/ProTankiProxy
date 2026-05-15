package alternativa.tanks.sfx
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.tanks.engine3d.AnimatedSprite3D;
   import alternativa.tanks.engine3d.TextureAnimation;
   import flash.geom.ColorTransform;
   import §var set var§.§521423132492313262123423632234§;
   
   public class AnimatedSpriteEffect extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      private var sprite:AnimatedSprite3D;
      
      private var §static var dynamic§:Number;
      
      private var §try const try§:Number;
      
      private var §521423111362311149123423632234§:int;
      
      private var §if set in§:§class use return§;
      
      private var container:§switch var final§;
      
      public function AnimatedSpriteEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.sprite = new AnimatedSprite3D(1,1);
      }
      
      public function init(param1:Number, param2:Number, param3:TextureAnimation, param4:Number, param5:§class use return§, param6:Number = 0.5, param7:Number = 0.5, param8:ColorTransform = null, param9:Number = 130, param10:String = "normal") : void
      {
         this.f5540a8e(param1,param2,param4,param6,param7,param8,param3,param9,param10);
         param5.initPosition(this.sprite);
         this.§try const try§ = 0.001 * param3.fps;
         this.§if set in§ = param5;
         this.§static var dynamic§ = 0;
         this.§521423111362311149123423632234§ = 1;
      }
      
      public function destroy() : void
      {
         this.container.§5214231752231765123423632234§(this.sprite);
         this.container = null;
         this.sprite.clear();
         this.§if set in§.destroy();
         this.§if set in§ = null;
         §521423117092311722123423632234§();
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         this.sprite.setFrameIndex(this.§static var dynamic§);
         this.§static var dynamic§ += param1 * this.§try const try§;
         this.§if set in§.updateObjectPosition(this.sprite,param2,param1);
         if(this.§521423111362311149123423632234§ > 0 && this.§static var dynamic§ >= this.sprite.getNumFrames())
         {
            --this.§521423111362311149123423632234§;
            if(this.§521423111362311149123423632234§ == 0)
            {
               return false;
            }
            this.§static var dynamic§ -= this.sprite.getNumFrames();
         }
         return true;
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.container = param1;
         param1.§5214237128237141123423632234§(this.sprite);
      }
      
      public function kill() : void
      {
         this.§521423111362311149123423632234§ = 1;
         this.§static var dynamic§ = this.sprite.getNumFrames();
      }
      
      private function f5540a8e(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:ColorTransform, param7:TextureAnimation, param8:Number, param9:String) : void
      {
         this.sprite.width = param1;
         this.sprite.height = param2;
         this.sprite.rotation = param3;
         this.sprite.originX = param4;
         this.sprite.originY = param5;
         this.sprite.blendMode = param9;
         this.sprite.colorTransform = param6;
         this.sprite.softAttenuation = param8;
         this.sprite.setAnimationData(param7);
      }
      
      public function initLooped(param1:Number, param2:Number, param3:TextureAnimation, param4:Number, param5:§class use return§, param6:Number = 0.5, param7:Number = 0.5, param8:ColorTransform = null, param9:Number = 130, param10:String = "normal", param11:int = -1) : void
      {
         this.init(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         this.§521423111362311149123423632234§ = param11;
      }
   }
}

