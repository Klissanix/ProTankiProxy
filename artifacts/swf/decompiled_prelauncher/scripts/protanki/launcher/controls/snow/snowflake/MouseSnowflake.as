package protanki.launcher.controls.snow.snowflake
{
   import flash.geom.Point;
   
   public class MouseSnowflake extends Snowflake
   {
      
      private var mouseInfluenceRadius:Number = 150;
      
      private var mouseInfluenceStrength:Number = 2;
      
      private var inertia:Number = 0.05;
      
      private var targetXSpeed:Number = 0;
      
      private var baseVelocity:Number;
      
      public function MouseSnowflake()
      {
         super();
      }
      
      override protected function configure() : void
      {
         this.baseVelocity = Math.max(0.5,Math.random() * 2);
         velocity = this.baseVelocity;
         xSpeed = Math.random() * 0.5 - 0.25;
         alpha = Math.min(0.8,Math.max(0.2,Math.random()));
         scaleX = scaleY = Math.random() * 0.5 + 0.3;
         glowFilter.alpha = alpha * 0.8;
         glowFilter.blurX = glowFilter.blurY = 12 * scaleX;
         filters = [glowFilter];
      }
      
      override public function fall() : void
      {
         var _loc1_:Point = null;
         var _loc2_:Point = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(!stage)
         {
            return;
         }
         if(stage.mouseX != 0 && stage.mouseY != 0)
         {
            _loc1_ = new Point(stage.mouseX,stage.mouseY);
            _loc2_ = new Point(x,y);
            _loc3_ = Point.distance(_loc1_,_loc2_);
            if(_loc3_ < this.mouseInfluenceRadius)
            {
               _loc4_ = Math.atan2(y - stage.mouseY,x - stage.mouseX);
               _loc5_ = (this.mouseInfluenceRadius - _loc3_) / this.mouseInfluenceRadius * this.mouseInfluenceStrength;
               this.targetXSpeed += Math.cos(_loc4_) * _loc5_ * 2;
               velocity -= Math.sin(_loc4_) * _loc5_ * 0.5;
            }
         }
         xSpeed += (this.targetXSpeed - xSpeed) * this.inertia;
         velocity = this.baseVelocity + this.targetXSpeed * 0.1;
         x += xSpeed;
         y -= velocity;
         this.targetXSpeed *= 0.9;
         if(y < -height)
         {
            x = Math.random() * stage.stageWidth;
            y = stage.stageHeight + height;
            this.configure();
         }
      }
      
      override public function changeMovement() : void
      {
      }
   }
}

