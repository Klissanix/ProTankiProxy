package §5214233785233798123423632234§
{
   import flash.text.TextField;
   import flash.text.TextFormat;
   import §get use set§.TanksFontService;
   
   public class §5214238529238542123423632234§ extends TextField
   {
      
      private var §const var for§:TextFormat;
      
      public function §5214238529238542123423632234§()
      {
         super();
         this.§const var for§ = TanksFontService.getTextFormat(12);
         this.§const var for§.color = 16777215;
         this.selectable = false;
         this.embedFonts = TanksFontService.isEmbedFonts();
         this.antiAliasType = "advanced";
         this.gridFitType = "subpixel";
         this.width = 10;
         this.height = 12;
         this.autoSize = "left";
         this.defaultTextFormat = this.§const var for§;
      }
      
      override public function set width(param1:Number) : void
      {
         super.width = Math.ceil(param1);
      }
      
      public function set align(param1:String) : void
      {
         this.§const var for§.align = param1;
         this.§if for final§();
      }
      
      private function §if for final§() : void
      {
         this.defaultTextFormat = this.§const var for§;
         this.setTextFormat(this.§const var for§);
      }
      
      override public function set x(param1:Number) : void
      {
         super.x = int(param1);
      }
      
      public function set bold(param1:Boolean) : void
      {
         this.§const var for§.bold = param1;
         this.§if for final§();
      }
      
      override public function set y(param1:Number) : void
      {
         super.y = int(param1);
      }
      
      override public function set height(param1:Number) : void
      {
         super.height = Math.ceil(param1);
      }
      
      public function set §521423102842310297123423632234§(param1:Number) : void
      {
         this.§const var for§.size = param1;
         this.§if for final§();
      }
      
      public function set color(param1:uint) : void
      {
         this.§const var for§.color = param1;
         this.§if for final§();
      }
   }
}

