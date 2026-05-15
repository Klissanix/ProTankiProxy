package protanki.launcher.controls.snow
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import protanki.launcher.controls.snow.snowflake.MouseSnowflake;
   import protanki.launcher.controls.snow.snowflake.Snowflake;
   
   public class Snow extends MovieClip
   {
      
      private var flakes:Vector.<Snowflake>;
      
      private var timer:Timer;
      
      public function Snow(param1:Number = 25)
      {
         var _loc3_:Snowflake = null;
         this.flakes = new Vector.<Snowflake>();
         this.timer = new Timer(2000);
         super();
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            _loc3_ = new MouseSnowflake();
            addChild(_loc3_);
            this.flakes.push(_loc3_);
            _loc2_++;
         }
         addEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         addEventListener(Event.ENTER_FRAME,this.fall);
         addEventListener(Event.REMOVED_FROM_STAGE,this.removedFromStage);
         this.timer.addEventListener(TimerEvent.TIMER,this.changeMovement);
         this.timer.start();
      }
      
      private function addedToStage(param1:Event) : void
      {
         var _loc2_:Snowflake = null;
         removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         for each(_loc2_ in this.flakes)
         {
            _loc2_.onResize();
         }
      }
      
      private function removedFromStage(param1:Event) : void
      {
         var _loc2_:Snowflake = null;
         removeEventListener(Event.ENTER_FRAME,this.fall);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.removedFromStage);
         this.timer.stop();
         this.timer = null;
         for each(_loc2_ in this.flakes)
         {
            removeChild(_loc2_);
         }
         this.flakes.splice(0,this.flakes.length);
         this.flakes = null;
      }
      
      private function fall(param1:Event) : void
      {
         var _loc2_:Snowflake = null;
         for each(_loc2_ in this.flakes)
         {
            _loc2_.fall();
         }
      }
      
      private function changeMovement(param1:TimerEvent) : void
      {
         var _loc2_:Snowflake = null;
         for each(_loc2_ in this.flakes)
         {
            _loc2_.changeMovement();
         }
      }
   }
}

