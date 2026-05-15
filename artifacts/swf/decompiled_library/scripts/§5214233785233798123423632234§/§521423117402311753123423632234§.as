package §5214233785233798123423632234§
{
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import §get use set§.TanksFontService;
   
   public class §521423117402311753123423632234§ extends Sprite
   {
      
      private var §with for dynamic§:Shape = new Shape();
      
      private var §521423104052310418123423632234§:§include return§ = new §include return§(0);
      
      private const §const var for§:TextFormat = TanksFontService.getTextFormat(12);
      
      public var §for var switch§:TextField = new TextField();
      
      private var §5214237851237864123423632234§:int;
      
      private var §do finally set§:int;
      
      public function §521423117402311753123423632234§(param1:Boolean = true)
      {
         super();
         if(param1)
         {
            addChild(this.§with for dynamic§);
            addChild(this.§521423104052310418123423632234§);
         }
         this.§with for dynamic§.x = this.§with for dynamic§.y = 1;
         addChild(this.§for var switch§);
         this.§const var for§.color = 16777215;
         this.§for var switch§.defaultTextFormat = this.§const var for§;
         this.§for var switch§.antiAliasType = "advanced";
         this.§for var switch§.gridFitType = "pixel";
         this.§for var switch§.embedFonts = TanksFontService.isEmbedFonts();
         this.§for var switch§.sharpness = -210;
         this.§for var switch§.thickness = 50;
         this.§for var switch§.x = this.§for var switch§.y = 5;
         this.§for var switch§.multiline = true;
         this.§for var switch§.wordWrap = true;
         this.§for var switch§.type = "input";
         this.§for var switch§.selectable = true;
         this.§for var switch§.autoSize = "none";
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§521423104052310418123423632234§.width = this.§5214237851237864123423632234§;
         this.§for var switch§.width = this.§5214237851237864123423632234§ - 10;
         this.§5214233910233923123423632234§();
      }
      
      override public function set height(param1:Number) : void
      {
         this.§do finally set§ = param1;
         this.§521423104052310418123423632234§.height = this.§do finally set§;
         this.§for var switch§.height = this.§do finally set§ - 10;
         this.§5214233910233923123423632234§();
      }
      
      override public function get width() : Number
      {
         return this.§5214237851237864123423632234§;
      }
      
      public function set §false set false§(param1:int) : void
      {
         this.§for var switch§.maxChars = param1;
      }
      
      public function get text() : String
      {
         return this.§for var switch§.text;
      }
      
      private function §5214233910233923123423632234§() : void
      {
         var _loc1_:Graphics = this.§with for dynamic§.graphics;
         var _loc2_:Matrix = new Matrix();
         _loc2_.createGradientBox(this.§5214237851237864123423632234§ - 2,this.§do finally set§ - 2,3.141592653589793 * 0.5);
         _loc1_.clear();
         _loc1_.beginGradientFill("linear",[0,0],[0.9,0.1],[0,255],_loc2_);
         _loc1_.drawRect(0,0,this.§5214237851237864123423632234§ - 2,this.§do finally set§ - 2);
         _loc1_.endFill();
      }
      
      override public function get height() : Number
      {
         return this.§do finally set§;
      }
      
      public function set text(param1:String) : void
      {
         this.§for var switch§.text = param1;
      }
   }
}

