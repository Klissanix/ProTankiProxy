package §true switch true§
{
   import flash.events.MouseEvent;
   
   public class §52142336223375123423632234§ extends §set catch package§
   {
      
      private var §5214231723231736123423632234§:§5214231141231154123423632234§;
      
      public function §52142336223375123423632234§()
      {
         super();
         this.§5214231723231736123423632234§ = new §5214231141231154123423632234§();
         this.§5214231723231736123423632234§.x = 16;
         this.§5214231723231736123423632234§.y = 4;
         this.§5214231723231736123423632234§.width = this.width - 16;
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

