package §try use throw§
{
   import §521423107782310791123423632234§.BattleInfoIcons;
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import flash.display.Sprite;
   
   public class §default final§ extends Sprite
   {
      
      protected var icon:BattleInfoIcons;
      
      protected var §for for super§:int;
      
      protected var label:§5214238529238542123423632234§;
      
      public function §default final§(param1:int = -1)
      {
         super();
         this.§for for super§ = param1;
         this.init();
      }
      
      public function set text(param1:String) : void
      {
         this.label.htmlText = param1;
      }
      
      protected function init() : void
      {
         if(this.§for for super§ > -1)
         {
            this.icon = new BattleInfoIcons();
            this.icon.type = this.§for for super§;
            addChild(this.icon);
            this.icon.x = this.§for for super§ == 1 ? 1 : 0;
            this.icon.y = 0;
         }
         this.label = new §5214238529238542123423632234§();
         this.label.color = 16777215;
         if(this.icon)
         {
            this.label.x = this.icon.width + 3;
         }
         addChild(this.label);
      }
      
      public function set §521423102842310297123423632234§(param1:Number) : void
      {
         this.label.§521423102842310297123423632234§ = param1;
      }
   }
}

