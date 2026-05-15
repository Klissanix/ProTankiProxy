package §const var try§
{
   import filters.Filters;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.setTimeout;
   import §static const throw§.ChatOutputLineEvent;
   
   public class MessageLine extends Sprite
   {
      
      private static const §extends for static§:int = 30000;
      
      protected var §return catch throw§:Boolean = true;
      
      private var §5214238348238361123423632234§:Timer;
      
      private var stop:Boolean = false;
      
      private var §break const set§:Boolean = false;
      
      protected var §dynamic package true§:Sprite = new Sprite();
      
      public function MessageLine()
      {
         super();
         this.§dynamic package true§.filters = Filters.§include set each§;
         addChild(this.§dynamic package true§);
         addEventListener("addedToStage",this.onAddedToStage);
      }
      
      private function f145932b(param1:TimerEvent) : void
      {
         if(!this.stop)
         {
            alpha -= 0.05;
         }
         else
         {
            this.§5214238348238361123423632234§.stop();
            alpha = 1;
         }
      }
      
      public function killStart() : void
      {
         this.stop = false;
         if(this.§break const set§)
         {
            this.b425f771();
         }
      }
      
      public function killStop() : void
      {
         alpha = 1;
         removeEventListener("addedToStage",this.onAddedToStage);
         this.stop = true;
      }
      
      private function f72be9a5(param1:TimerEvent) : void
      {
         this.§return catch throw§ = false;
         dispatchEvent(new ChatOutputLineEvent("KillMe",this));
         removeEventListener("addedToStage",this.onAddedToStage);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         setTimeout(this.bcf2e2a,30000);
      }
      
      private function b425f771() : void
      {
         this.§5214238348238361123423632234§ = new Timer(50,20);
         this.§5214238348238361123423632234§.addEventListener("timer",this.f145932b);
         this.§5214238348238361123423632234§.addEventListener("timerComplete",this.f72be9a5);
         this.§5214238348238361123423632234§.start();
      }
      
      private function bcf2e2a() : void
      {
         this.§break const set§ = true;
         if(!this.stop)
         {
            this.b425f771();
         }
      }
      
      public function get alive() : Boolean
      {
         return this.§return catch throw§;
      }
   }
}

