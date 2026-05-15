package alternativa.tanks.models.battle.gui.gui.statistics.field.wink
{
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class WinkManager
   {
      
      private static var _instance:WinkManager;
      
      private var timer:Timer;
      
      private var §521423102792310292123423632234§:Dictionary;
      
      private var §5214239373239386123423632234§:int;
      
      private var visible:Boolean;
      
      public function WinkManager(param1:int)
      {
         super();
         this.§521423102792310292123423632234§ = new Dictionary();
         this.timer = new Timer(param1);
         this.timer.addEventListener("timer",this.f30fdadd);
      }
      
      public static function init(param1:int) : void
      {
         if(_instance == null)
         {
            _instance = new WinkManager(param1);
         }
      }
      
      public static function get instance() : WinkManager
      {
         return _instance;
      }
      
      public function removeField(param1:WinkingField) : void
      {
         if(this.§521423102792310292123423632234§[param1] == null)
         {
            return;
         }
         delete this.§521423102792310292123423632234§[param1];
         --this.§5214239373239386123423632234§;
         if(this.§5214239373239386123423632234§ == 0)
         {
            this.timer.stop();
            this.visible = true;
         }
      }
      
      private function f30fdadd(param1:TimerEvent) : void
      {
         if(this.§5214239373239386123423632234§ == 0)
         {
            return;
         }
         this.visible = !this.visible;
         for each(var _loc2_ in this.§521423102792310292123423632234§)
         {
            _loc2_.setVisible(this.visible);
         }
      }
      
      public function addField(param1:WinkingField) : void
      {
         if(this.§521423102792310292123423632234§[param1] != null)
         {
            return;
         }
         this.§521423102792310292123423632234§[param1] = param1;
         ++this.§5214239373239386123423632234§;
         if(this.§5214239373239386123423632234§ == 1)
         {
            this.timer.start();
         }
      }
   }
}

