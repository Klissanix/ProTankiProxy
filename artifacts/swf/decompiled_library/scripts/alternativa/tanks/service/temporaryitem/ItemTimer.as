package alternativa.tanks.service.temporaryitem
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class ItemTimer extends EventDispatcher
   {
      
      private var §case var if§:§521423120252312038123423632234§;
      
      private var §final var set§:Timer;
      
      private var §function catch throw§:Number;
      
      private var §false set dynamic§:Number;
      
      public function ItemTimer(param1:§521423120252312038123423632234§, param2:uint)
      {
         super();
         this.§case var if§ = param1;
         this.§false set dynamic§ = param2;
         this.§function catch throw§ = getTimer();
         this.§final var set§ = new Timer(1000);
         this.§final var set§.addEventListener("timer",this.f30fdadd);
         this.§final var set§.start();
      }
      
      public function destroy() : void
      {
         if(this.§final var set§ != null)
         {
            this.§final var set§.removeEventListener("timer",this.f30fdadd);
            this.§final var set§.stop();
            this.§final var set§ = null;
         }
      }
      
      public function get item() : §521423120252312038123423632234§
      {
         return this.§case var if§;
      }
      
      public function get currentTimeRemainingMSec() : Number
      {
         return this.§false set dynamic§ * 1000 - (getTimer() - this.§function catch throw§);
      }
      
      private function f30fdadd(param1:TimerEvent) : void
      {
         var _loc2_:uint = (getTimer() - this.§function catch throw§) / 1000;
         if(_loc2_ > this.§false set dynamic§)
         {
            dispatchEvent(new Event("complete"));
            this.§final var set§.stop();
            this.destroy();
         }
      }
   }
}

