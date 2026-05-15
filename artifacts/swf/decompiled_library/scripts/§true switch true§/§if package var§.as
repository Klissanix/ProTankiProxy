package §true switch true§
{
   import flash.events.MouseEvent;
   
   public class §if package var§ extends §5214235291235304123423632234§
   {
      
      private var §5214231723231736123423632234§:§5214231141231154123423632234§;
      
      public function §if package var§()
      {
         super();
         this.§5214231723231736123423632234§ = new §5214231141231154123423632234§();
         this.§5214231723231736123423632234§.x = 18;
         this.§5214231723231736123423632234§.y = 4;
         this.§5214231723231736123423632234§.width = this.width - 18;
         this.§5214231723231736123423632234§.autoSize = "center";
         this.§5214231723231736123423632234§.mouseEnabled = false;
         addChild(this.§5214231723231736123423632234§);
      }
      
      override public function set label(param1:String) : void
      {
         this.§5214231723231736123423632234§.text = param1;
      }
      
      override protected function onMouseEvent(param1:MouseEvent) : void
      {
         super.onMouseEvent(param1);
         var _loc2_:int = param1.type == "mouseDown" ? 1 : 0;
         this.§5214231723231736123423632234§.y = 4 + _loc2_;
      }
   }
}

