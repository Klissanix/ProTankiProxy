package §import implements§
{
   import flash.display.Sprite;
   import flash.external.ExternalInterface;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §class switch case§ extends Sprite
   {
      
      private static const §continue catch extends§:int = 25;
      
      private var §break continue§:§5214231141231154123423632234§;
      
      public function §class switch case§()
      {
         super();
         this.init();
      }
      
      public function set selected(param1:Boolean) : void
      {
         if(param1)
         {
            buttonMode = useHandCursor = false;
            mouseChildren = false;
            mouseEnabled = false;
         }
         else
         {
            buttonMode = useHandCursor = true;
            mouseChildren = true;
            mouseEnabled = true;
         }
      }
      
      public function §extends for native§(param1:String, param2:Boolean) : void
      {
         if(param2)
         {
            this.§break continue§.text = param1;
            this.§break continue§.y = 0;
         }
         else
         {
            this.§break continue§.y = -1;
            this.§break continue§.htmlText = "<u>" + param1 + "</u>";
         }
         if(ExternalInterface.available)
         {
            this.selected = param2;
         }
         else
         {
            this.selected = true;
         }
      }
      
      private function init() : void
      {
         graphics.clear();
         graphics.beginFill(16711680,0);
         graphics.drawRect(0,0,25,18);
         graphics.endFill();
         this.§break continue§ = new §5214231141231154123423632234§();
         this.§break continue§.mouseEnabled = false;
         this.§break continue§.autoSize = "none";
         this.§break continue§.align = "right";
         this.§break continue§.color = 5898034;
         this.§break continue§.width = 25;
         this.§break continue§.height = 18;
         addChild(this.§break continue§);
      }
   }
}

