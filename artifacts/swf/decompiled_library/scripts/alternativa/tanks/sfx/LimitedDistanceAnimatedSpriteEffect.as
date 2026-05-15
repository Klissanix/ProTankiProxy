package alternativa.tanks.sfx
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.math.Vector3;
   import alternativa.tanks.engine3d.AnimatedSprite3D;
   import alternativa.tanks.engine3d.TextureAnimation;
   import flash.geom.ColorTransform;
   import §var set var§.§521423132492313262123423632234§;
   
   public class LimitedDistanceAnimatedSpriteEffect extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      private static const §5214236666236679123423632234§:Vector3 = new Vector3();
      
      private var sprite:AnimatedSprite3D;
      
      private var §static var dynamic§:Number;
      
      private var §5214238583238596123423632234§:Number;
      
      private var §521423111362311149123423632234§:int;
      
      private var §if set in§:§class use return§;
      
      private var §521423131542313167123423632234§:Number;
      
      private var §package for include§:Number;
      
      private var §5214239819239832123423632234§:Number;
      
      private var alphaMultiplier:Number;
      
      private var container:§switch var final§;
      
      public function LimitedDistanceAnimatedSpriteEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.sprite = new AnimatedSprite3D(1,1);
      }
      
      public function destroy() : void
      {
         this.sprite.clear();
         this.§if set in§.destroy();
         this.§if set in§ = null;
         §521423117092311722123423632234§();
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
      
      public function addedToScene(param1:§switch var final§) : void
      {
         if(this.container == null)
         {
            this.container = param1;
            param1.§5214237128237141123423632234§(this.sprite);
         }
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         this.sprite.setFrameIndex(this.§static var dynamic§);
         this.§static var dynamic§ += param1 * this.§5214238583238596123423632234§;
         this.§if set in§.updateObjectPosition(this.sprite,param2,param1);
         if(this.§521423111362311149123423632234§ > 0 && this.§static var dynamic§ >= sprite.getNumFrames())
         {
            if(--this.§521423111362311149123423632234§ == 0)
            {
               return false;
            }
            this.§static var dynamic§ -= sprite.getNumFrames();
         }
         §5214236666236679123423632234§.x = this.sprite.x;
         §5214236666236679123423632234§.y = this.sprite.y;
         §5214236666236679123423632234§.z = this.sprite.z;
         var _loc3_:Number = §5214236666236679123423632234§.distanceTo(param2.§dynamic final§);
         if(_loc3_ > this.§package for include§)
         {
            this.sprite.visible = false;
         }
         else
         {
            this.sprite.visible = true;
            if(_loc3_ > this.§521423131542313167123423632234§)
            {
               this.sprite.alpha = this.alphaMultiplier * (this.§package for include§ - _loc3_) / this.§5214239819239832123423632234§;
            }
            else
            {
               this.sprite.alpha = this.alphaMultiplier;
            }
         }
         return true;
      }
      
      public function init(param1:Number, param2:Number, param3:TextureAnimation, param4:Number, param5:§class use return§, param6:Number = 0.5, param7:Number = 0.5, param8:ColorTransform = null, param9:Number = 130, param10:String = "normal", param11:Number = 1000000, param12:Number = 1000000, param13:Number = 1, param14:Boolean = false) : void
      {
         this.alphaMultiplier = param13;
         this.f5540a8e(param1,param2,param4,param6,param7,param8,param3,param9,param10);
         this.§521423131542313167123423632234§ = param11;
         this.§package for include§ = param12;
         this.§5214239819239832123423632234§ = param12 - param11;
         param5.initPosition(this.sprite);
         this.§5214238583238596123423632234§ = 0.001 * param3.fps;
         this.§if set in§ = param5;
         this.§static var dynamic§ = 0;
         this.§521423111362311149123423632234§ = 1;
         this.sprite.useShadowMap = param14;
         this.sprite.useLight = param14;
      }
   }
}

