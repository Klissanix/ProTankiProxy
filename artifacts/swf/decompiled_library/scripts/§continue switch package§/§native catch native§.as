package §continue switch package§
{
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §native catch native§ extends Sprite
   {
      
      private static const §5214234551234564123423632234§:int = 10;
      
      private static const §521423113212311334123423632234§:Class = e5870ef_png$8e7d19a0894b433cfde7401a688b6fb6274649738;
      
      private static const §each use do§:Class = §e3a0h3_png$6c7f8bb1d2c2d1f4648fa85ddac11fa5-1550994506§;
      
      private var §catch switch false§:Bitmap;
      
      private var §do for true§:Bitmap;
      
      public function §native catch native§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         graphics.clear();
         graphics.beginFill(16711680,0);
         graphics.drawRect(0,0,25,25);
         graphics.endFill();
         this.§do for true§ = new Bitmap(new §each use do§().bitmapData);
         addChild(this.§do for true§);
         this.§catch switch false§ = new Bitmap(new §521423113212311334123423632234§().bitmapData);
         addChild(this.§catch switch false§);
         buttonMode = true;
         this.§with set else§();
      }
      
      public function §true package final§() : void
      {
         this.visible = false;
      }
      
      protected function onMouseEvent(param1:MouseEvent) : void
      {
         switch(param1.type)
         {
            case "mouseOver":
            case "mouseOut":
            case "mouseUp":
               this.y = 0;
               break;
            case "mouseDown":
               this.y = 1;
         }
      }
      
      public function get type() : int
      {
         return 10;
      }
      
      public function §5214237241237254123423632234§() : void
      {
         this.§catch switch false§.visible = false;
         this.§do for true§.visible = true;
      }
      
      public function show() : void
      {
         this.visible = true;
      }
      
      private function §with set else§() : void
      {
         addEventListener("mouseOver",this.onMouseEvent);
         addEventListener("mouseOut",this.onMouseEvent);
         addEventListener("mouseDown",this.onMouseEvent);
         addEventListener("mouseUp",this.onMouseEvent);
      }
      
      public function get enable() : Boolean
      {
         return true;
      }
      
      public function §if for each§() : void
      {
         this.§catch switch false§.visible = true;
         this.§do for true§.visible = false;
      }
   }
}

