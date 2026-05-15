package §true switch true§
{
   import §5214233785233798123423632234§.§if const get§;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   
   public class §5214237555237568123423632234§ extends §5214233785233798123423632234§.§if const get§
   {
      
      public function §5214237555237568123423632234§()
      {
         super();
         §521423139392313952123423632234§.sharpness = 40;
         §521423139392313952123423632234§.thickness = 70;
         §52142339223405123423632234§.sharpness = -210;
         §52142339223405123423632234§.thickness = 50;
         §52142339223405123423632234§.addEventListener("mouseOver",this.§5214236640236653123423632234§);
         §52142339223405123423632234§.addEventListener("mouseOut",this.§5214231199231212123423632234§);
      }
      
      private function §5214236640236653123423632234§(param1:MouseEvent) : void
      {
         Mouse.cursor = "ibeam";
      }
      
      override public function set y(param1:Number) : void
      {
         super.y = int(param1);
      }
      
      private function §5214231199231212123423632234§(param1:MouseEvent) : void
      {
         Mouse.cursor = "auto";
      }
      
      public function set enable(param1:Boolean) : void
      {
         §52142339223405123423632234§.type = param1 ? "input" : "dynamic";
         §52142339223405123423632234§.selectable = param1;
         §52142339223405123423632234§.mouseEnabled = param1;
         §52142339223405123423632234§.mouseWheelEnabled = param1;
         §52142339223405123423632234§.tabEnabled = param1;
      }
      
      override public function set width(param1:Number) : void
      {
         super.width = Math.ceil(param1);
      }
      
      override public function set height(param1:Number) : void
      {
         super.height = Math.ceil(param1);
      }
      
      override public function set x(param1:Number) : void
      {
         super.x = int(param1);
      }
   }
}

