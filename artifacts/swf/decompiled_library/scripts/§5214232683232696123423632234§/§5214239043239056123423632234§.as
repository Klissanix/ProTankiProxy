package §5214232683232696123423632234§
{
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §5214239043239056123423632234§ extends Sprite
   {
      
      private var label:§5214231141231154123423632234§;
      
      public function §5214239043239056123423632234§()
      {
         super();
         this.label = new §5214231141231154123423632234§();
         this.label.color = 16776960;
         this.label.multiline = true;
         this.label.wordWrap = true;
         this.label.mouseEnabled = false;
         this.label.filters = [new GlowFilter(0,0.6666666666666666,4,4,3)];
         addChild(this.label);
      }
      
      public function §521423103142310327123423632234§(param1:Number) : void
      {
         this.label.width = param1;
      }
      
      public function §521423102522310265123423632234§() : String
      {
         return this.label.text;
      }
      
      public function §extends for native§(param1:String) : void
      {
         this.label.text = param1;
      }
   }
}

