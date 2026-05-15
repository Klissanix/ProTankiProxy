package §5214233785233798123423632234§
{
   import alternativa.osgi.service.display.Display;
   import §false switch if§.§do switch include§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.filters.DropShadowFilter;
   import flash.text.TextFormat;
   import §switch set for§.§package default§;
   
   public class §in set function§ extends §do switch include§
   {
      
      protected var §final use const§:§5214238529238542123423632234§ = new §5214238529238542123423632234§();
      
      protected var §if for while§:Bitmap = new Bitmap();
      
      protected var §5214237851237864123423632234§:int = 100;
      
      public function §in set function§()
      {
         super();
         this.§5214239889239902123423632234§();
         enabled = true;
         tabEnabled = false;
      }
      
      override protected function §5214234483234496123423632234§() : void
      {
         super.§5214234483234496123423632234§();
         var _loc1_:int = §521423116092311622123423632234§() == §package default§.§default set package§ ? 1 : 0;
         this.§final use const§.y = 24 + _loc1_;
         this.§if for while§.y = int(25 - this.§if for while§.height / 2) + _loc1_;
      }
      
      private function §5214239889239902123423632234§() : void
      {
         addChild(this.§if for while§);
         this.§final use const§.align = "center";
         this.§final use const§.autoSize = "none";
         this.§final use const§.selectable = false;
         this.§final use const§.x = 2;
         this.§final use const§.y = 24;
         this.§final use const§.height = 20;
         this.§final use const§.mouseEnabled = false;
         this.§final use const§.filters = [new DropShadowFilter(1 * Display.§521423132512313264123423632234§,45,0,0.7,1 * Display.§521423132512313264123423632234§,1 * Display.§521423132512313264123423632234§,1)];
         this.width = 120;
      }
      
      public function §5214237251237264123423632234§() : void
      {
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.size = 16;
         §521423139392313952123423632234§.defaultTextFormat = _loc1_;
         §521423139392313952123423632234§.setTextFormat(_loc1_);
         §case catch import§ = 14;
      }
      
      public function set icon(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.§if for while§.visible = true;
            §521423139392313952123423632234§.width = this.§5214237851237864123423632234§ - 4 - this.§if for while§.width;
         }
         else
         {
            §521423139392313952123423632234§.width = this.§5214237851237864123423632234§ - 4;
            this.§if for while§.visible = false;
         }
         this.§if for while§.bitmapData = param1;
         this.width = this.§5214237851237864123423632234§;
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         super.width = this.§5214237851237864123423632234§;
         this.§final use const§.width = this.§5214237851237864123423632234§ - 4;
         if(this.§if for while§.bitmapData != null)
         {
            this.§if for while§.x = this.§5214237851237864123423632234§ - this.§if for while§.width - 6;
            this.§if for while§.y = int(25 - this.§if for while§.height / 2);
            §521423139392313952123423632234§.width = this.§5214237851237864123423632234§ - 4 - this.§if for while§.width;
         }
      }
      
      public function set §implements set import§(param1:String) : void
      {
         this.§final use const§.htmlText = param1;
      }
   }
}

