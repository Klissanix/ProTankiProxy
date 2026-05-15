package §const use try§
{
   import alternativa.tanks.models.battle.gui.gui.statistics.field.wink.WinkManager;
   import alternativa.tanks.models.battle.gui.gui.statistics.field.wink.WinkingField;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §extends var default§ extends WinkingField
   {
      
      private var §5214239977239990123423632234§:Timer;
      
      private var §case for switch§:uint;
      
      private var §do for while§:Boolean;
      
      public function §extends var default§(param1:int, param2:int, param3:WinkManager, param4:Boolean)
      {
         super(param1,param2,param3);
         this.§do for while§ = param4;
         this.§5214239977239990123423632234§ = new Timer(1000);
         this.§5214239977239990123423632234§.addEventListener("timer",this.§5214236758236771123423632234§);
      }
      
      private static function §52142312314123423632234§(param1:int) : String
      {
         var _loc2_:int = param1 % 60;
         return _loc2_ > 9 ? _loc2_.toString() : "0" + _loc2_.toString();
      }
      
      private static function §implements package false§(param1:int) : String
      {
         var _loc2_:int = param1 / 60;
         return _loc2_ > 9 ? _loc2_.toString() : "0" + _loc2_.toString();
      }
      
      override protected function updateLabel() : void
      {
         if(this.§do for while§)
         {
            label.text = §521423125632312576123423632234§ < 10 ? "0" + §521423125632312576123423632234§.toString() : §521423125632312576123423632234§.toString();
         }
         else
         {
            label.text = §implements package false§(§521423125632312576123423632234§) + " : " + §52142312314123423632234§(§521423125632312576123423632234§);
         }
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         super.onRemovedFromStage(param1);
         this.§5214239977239990123423632234§.stop();
      }
      
      private function §5214236758236771123423632234§(param1:TimerEvent) : void
      {
         var _loc2_:int = 0;
         if(§521423125632312576123423632234§ > 0)
         {
            _loc2_ = Math.round(this.§case for switch§ - getTimer() / 1000);
            value = _loc2_ < 0 ? 0 : _loc2_;
         }
         else
         {
            this.§5214239977239990123423632234§.stop();
         }
      }
      
      public function §class set final§() : void
      {
         this.§5214239977239990123423632234§.stop();
      }
      
      public function §extends package do§(param1:int) : void
      {
         this.§case for switch§ = Math.round(getTimer() / 1000 + param1);
         value = param1;
         if(§521423125632312576123423632234§ > 0)
         {
            this.§5214239977239990123423632234§.stop();
            this.§5214239977239990123423632234§.start();
         }
         else
         {
            stopWink();
         }
      }
   }
}

