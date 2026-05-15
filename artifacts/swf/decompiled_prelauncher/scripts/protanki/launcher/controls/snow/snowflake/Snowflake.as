package protanki.launcher.controls.snow.snowflake
{
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class Snowflake extends Sprite
   {
      
      protected var glowFilter:GlowFilter;
      
      protected var xSpeed:Number;
      
      protected var velocity:Number;
      
      public function Snowflake()
      {
         super();
         graphics.beginFill(16777215);
         graphics.drawCircle(0,0,2);
         graphics.endFill();
         this.glowFilter = new GlowFilter(16777215,0.8,12,12,2,2,false,false);
         filters = [this.glowFilter];
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      protected function configure() : void
      {
         this.velocity = Math.max(0.3,Math.random()) * 3;
         this.xSpeed = Math.random();
         alpha = Math.min(1,Math.max(0.3,Math.random())) + 0.2;
         scaleX = scaleY = Math.max(0.5,Math.random());
      }
      
      public function fall() : void
      {
         x += this.xSpeed;
         y += this.velocity;
         if(y > stage.stageHeight)
         {
            x = Math.random() * stage.stageWidth;
            y = -height;
            this.configure();
         }
      }
      
      public function changeMovement() : void
      {
         this.xSpeed *= -Math.random();
      }
      
      protected function onAddedToStage(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.configure();
      }
      
      public function onResize() : void
      {
         x = Math.random() * stage.stageWidth;
         y = Math.random() * stage.stageHeight;
      }
   }
}

