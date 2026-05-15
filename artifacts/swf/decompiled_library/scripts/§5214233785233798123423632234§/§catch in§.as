package §5214233785233798123423632234§
{
   import §521423100862310099123423632234§.§else catch else§;
   import §521423100862310099123423632234§.§native for else§;
   import §5214236944236957123423632234§.DiscreteSprite;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import §include else§.§package var in§;
   
   public class §catch in§ extends DiscreteSprite
   {
      
      protected var §implements override§:§native for else§ = new §native for else§();
      
      protected var §5214237308237321123423632234§:§else catch else§ = new §else catch else§();
      
      protected var §continue use switch§:int = 30;
      
      protected var §each package do§:int;
      
      protected var §catch var implements§:Sprite;
      
      public var §5214237851237864123423632234§:int;
      
      protected var §function use while§:Number = 0;
      
      protected var §521423121082312121123423632234§:Number = 100;
      
      protected var §521423125632312576123423632234§:Number = 0;
      
      protected var §in use include§:Number = 10;
      
      public function §catch in§()
      {
         super();
         addChild(this.§implements override§);
         addChild(this.§5214237308237321123423632234§);
         this.§5214237308237321123423632234§.width = this.§continue use switch§;
         addEventListener("addedToStage",this.§while static§);
         addEventListener("removedFromStage",this.§5214237783237796123423632234§);
      }
      
      public function set §521423137382313751123423632234§(param1:Number) : void
      {
         this.§in use include§ = param1;
         this.§implements override§.§521423137382313751123423632234§ = this.§in use include§;
      }
      
      protected function §52142315323166123423632234§() : void
      {
         this.§5214237308237321123423632234§.x = int((this.§521423125632312576123423632234§ - this.§function use while§) * (this.§5214237851237864123423632234§ - this.§continue use switch§) / (this.§521423121082312121123423632234§ - this.§function use while§));
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§implements override§.width = this.§5214237851237864123423632234§;
      }
      
      public function set §else const in§(param1:Number) : void
      {
         this.§521423121082312121123423632234§ = param1;
         this.§implements override§.§else const in§ = this.§521423121082312121123423632234§;
      }
      
      public function get §5214232241232254123423632234§() : Number
      {
         return this.§function use while§;
      }
      
      protected function §5214237783237796123423632234§(param1:Event) : void
      {
         stage.removeEventListener("mouseUp",this.§5214231483231496123423632234§);
         stage.removeEventListener("mouseMove",this.§5214232005232018123423632234§);
      }
      
      protected function §implements package null§(param1:MouseEvent) : void
      {
         this.§catch var implements§ = Sprite(param1.currentTarget);
         stage.addEventListener("mouseMove",this.§5214232005232018123423632234§);
         this.§each package do§ = this.§catch var implements§.mouseX;
      }
      
      public function get value() : Number
      {
         return this.§521423125632312576123423632234§;
      }
      
      public function set value(param1:Number) : void
      {
         this.§521423125632312576123423632234§ = param1;
         this.§52142315323166123423632234§();
      }
      
      public function set §5214232241232254123423632234§(param1:Number) : void
      {
         this.§function use while§ = param1;
         this.§implements override§.§5214232241232254123423632234§ = this.§function use while§;
      }
      
      protected function §5214232005232018123423632234§(param1:MouseEvent) : void
      {
         this.§5214237308237321123423632234§.x += this.§5214237308237321123423632234§.mouseX - this.§each package do§;
         if(this.§5214237308237321123423632234§.x < 0)
         {
            this.§5214237308237321123423632234§.x = 0;
         }
         if(this.§5214237308237321123423632234§.x > this.§5214237851237864123423632234§ - this.§continue use switch§)
         {
            this.§5214237308237321123423632234§.x = this.§5214237851237864123423632234§ - this.§continue use switch§;
         }
         var _loc2_:Number = this.§function use while§ + this.§5214237308237321123423632234§.x * (this.§521423121082312121123423632234§ - this.§function use while§) / (width - this.§continue use switch§);
         this.§521423125632312576123423632234§ = _loc2_;
         dispatchEvent(new §package var in§(_loc2_));
      }
      
      public function get §else const in§() : Number
      {
         return this.§521423121082312121123423632234§;
      }
      
      protected function §while static§(param1:Event) : void
      {
         this.§5214237308237321123423632234§.addEventListener("mouseDown",this.§implements package null§);
         stage.addEventListener("mouseUp",this.§5214231483231496123423632234§);
      }
      
      protected function §5214231483231496123423632234§(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            stage.removeEventListener("mouseMove",this.§5214232005232018123423632234§);
         }
         this.§catch var implements§ = null;
      }
   }
}

