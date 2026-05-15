package alternativa.tanks.models.battle.gui.gui.statistics.field.wink
{
   import flash.events.Event;
   import §try use throw§.§default final§;
   
   public class WinkingField extends §default final§
   {
      
      protected var §521423125632312576123423632234§:int;
      
      protected var §5214237246237259123423632234§:int;
      
      private var §521423131092313122123423632234§:WinkManager;
      
      public function WinkingField(param1:int, param2:int, param3:WinkManager)
      {
         super(param2);
         this.§5214237246237259123423632234§ = param1;
         this.§521423131092313122123423632234§ = param3;
         addEventListener("removedFromStage",this.onRemovedFromStage);
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
         this.stopWink();
      }
      
      protected function updateLabel() : void
      {
         text = this.§521423125632312576123423632234§.toString();
      }
      
      public function set value(param1:int) : void
      {
         this.§521423125632312576123423632234§ = param1;
         this.updateLabel();
         if(this.§521423125632312576123423632234§ <= this.§5214237246237259123423632234§)
         {
            this.startWink();
         }
         else
         {
            this.stopWink();
         }
      }
      
      public function stopWink() : void
      {
         if(this.§521423131092313122123423632234§ != null)
         {
            this.§521423131092313122123423632234§.removeField(this);
         }
         label.visible = true;
      }
      
      public function startWink() : void
      {
         if(this.§521423131092313122123423632234§ != null)
         {
            this.§521423131092313122123423632234§.addField(this);
         }
      }
      
      public function setVisible(param1:Boolean) : void
      {
         label.visible = param1;
      }
   }
}

