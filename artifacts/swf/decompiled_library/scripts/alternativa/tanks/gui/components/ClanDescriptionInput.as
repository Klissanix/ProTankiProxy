package alternativa.tanks.gui.components
{
   import §5214233785233798123423632234§.§include return§;
   import §5214236944236957123423632234§.DiscreteSprite;
   import fl.containers.ScrollPane;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import §get use set§.TanksFontService;
   import utils.ScrollStyleUtils;
   
   public class ClanDescriptionInput extends DiscreteSprite
   {
      
      private static const §521423110342311047123423632234§:int = 7;
      
      private var §native use extends§:§include return§;
      
      public var description:TextField = new TextField();
      
      private var §continue package throw§:ScrollPane = new ScrollPane();
      
      private var §521423125772312590123423632234§:Sprite = new Sprite();
      
      private const format:TextFormat = TanksFontService.getTextFormat(12);
      
      private var _width:int;
      
      private var _height:int;
      
      public function ClanDescriptionInput(param1:String, param2:int)
      {
         super();
         this.§native use extends§ = new §include return§(0,0,4278985229);
         addChild(this.§native use extends§);
         this.format.color = 16777215;
         this.description.defaultTextFormat = this.format;
         this.description.antiAliasType = "advanced";
         this.description.gridFitType = "pixel";
         this.description.embedFonts = TanksFontService.isEmbedFonts();
         this.description.sharpness = -210;
         this.description.thickness = 50;
         this.description.multiline = true;
         this.description.wordWrap = true;
         this.description.type = "input";
         this.description.selectable = true;
         this.description.autoSize = "left";
         this.description.text = param1;
         this.description.maxChars = param2;
         this.description.addEventListener("keyDown",this.c2accbee);
         this.§521423125772312590123423632234§.addChild(this.description);
         this.§native use extends§.addChild(this.§continue package throw§);
         ScrollStyleUtils.setGreenStyle(this.§continue package throw§);
         this.§continue package throw§.horizontalScrollPolicy = "off";
         this.§continue package throw§.verticalScrollPolicy = "on";
         this.§continue package throw§.source = this.§521423125772312590123423632234§;
         this.§continue package throw§.update();
         this.§continue package throw§.focusEnabled = false;
         this.onResize();
      }
      
      private function c2accbee(param1:KeyboardEvent) : void
      {
         this.§continue package throw§.update();
         if(this.description.textHeight > this.§native use extends§.height - 7)
         {
            this.description.autoSize = "left";
         }
         else
         {
            this.description.autoSize = "none";
            this.description.height = this.§native use extends§.height - 7;
         }
      }
      
      override public function set height(param1:Number) : void
      {
         this._height = param1;
         this.onResize();
      }
      
      override public function get width() : Number
      {
         return this._width;
      }
      
      override public function set width(param1:Number) : void
      {
         this._width = param1;
         this.onResize();
      }
      
      public function onResize() : void
      {
         this.§native use extends§.x = 0;
         this.§native use extends§.y = 0;
         this.§native use extends§.width = this.width;
         this.§native use extends§.height = this.height;
         this.§continue package throw§.x = 7;
         this.§continue package throw§.y = 3;
         this.§521423125772312590123423632234§.x = 0;
         this.§521423125772312590123423632234§.y = 0;
         this.description.x = 0;
         this.description.y = 0;
         this.description.width = this.§native use extends§.width - 2 * 7 - 5;
         if(this.description.textHeight > this.§native use extends§.height - 7)
         {
            this.description.autoSize = "left";
         }
         else
         {
            this.description.autoSize = "none";
            this.description.height = this.§native use extends§.height - 7;
         }
         this.§continue package throw§.setSize(this.§native use extends§.width - 2,this.§native use extends§.height - 7);
         this.§continue package throw§.update();
      }
      
      public function setDescriptionText(param1:String) : void
      {
         this.description.text = param1;
         this.onResize();
      }
      
      public function get text() : String
      {
         return this.description.text;
      }
      
      override public function get height() : Number
      {
         return this._height;
      }
   }
}

