package §switch set for§
{
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import §5214236944236957123423632234§.DiscreteSprite;
   import alternativa.osgi.service.display.Display;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.utils.Dictionary;
   
   public class §else catch in§ extends DiscreteSprite
   {
      
      private var §while var if§:int = 15;
      
      private var §5214231390231403123423632234§:int = 24;
      
      private var §extends set finally§:int = 14;
      
      private var §dynamic catch break§:Boolean;
      
      private var §dynamic set break§:DisplayObject;
      
      private var §var const§:DisplayObject;
      
      private var §5214236176236189123423632234§:DisplayObject;
      
      private var §const finally use§:DisplayObject;
      
      protected var §521423139392313952123423632234§:§5214238529238542123423632234§ = new §5214238529238542123423632234§();
      
      protected var §default var break§:DiscreteSprite = new DiscreteSprite();
      
      private var §native const static§:Dictionary = new Dictionary();
      
      private var §package package var§:§package default§ = §package default§.§5214239651239664123423632234§;
      
      public function §else catch in§(param1:DisplayObject, param2:DisplayObject, param3:DisplayObject, param4:DisplayObject)
      {
         super();
         this.§dynamic set break§ = param1;
         this.§var const§ = param2;
         this.§5214236176236189123423632234§ = param3;
         this.§const finally use§ = param4;
         this.§dynamic catch break§ = true;
         addChild(param1);
         addChild(param2);
         addChild(param3);
         addChild(param4);
         addChild(this.§default var break§);
         this.§default var break§.addChild(this.§521423139392313952123423632234§);
         this.§default var break§.mouseEnabled = false;
         this.§default var break§.mouseChildren = false;
         this.§521423139392313952123423632234§.align = "center";
         this.§521423139392313952123423632234§.autoSize = "none";
         this.§521423139392313952123423632234§.selectable = false;
         this.§521423139392313952123423632234§.x = 2;
         this.§521423139392313952123423632234§.y = this.§while var if§;
         this.§521423139392313952123423632234§.height = this.§5214231390231403123423632234§;
         this.§521423139392313952123423632234§.§521423102842310297123423632234§ = this.§extends set finally§;
         this.§521423139392313952123423632234§.mouseEnabled = false;
         this.§521423139392313952123423632234§.filters = [new DropShadowFilter(1 * Display.§521423132512313264123423632234§,45,0,0.7,1 * Display.§521423132512313264123423632234§,1 * Display.§521423132512313264123423632234§,1)];
         this.§521423139392313952123423632234§.sharpness = 40;
         this.§521423139392313952123423632234§.thickness = 70;
         param1.visible = true;
         param2.visible = false;
         param3.visible = false;
         param4.visible = false;
         this.§native const static§[§package default§.§5214239651239664123423632234§] = param1;
         this.§native const static§[§package default§.§default set package§] = param3;
         this.§native const static§[§package default§.§class extends§] = param2;
         this.§native const static§[§package default§.§null switch extends§] = param4;
         addEventListener("mouseOver",this.onMouseEvent);
         addEventListener("mouseOut",this.onMouseEvent);
         addEventListener("mouseDown",this.onMouseEvent);
         addEventListener("mouseUp",this.onMouseEvent);
         this.width = 120;
      }
      
      public function get enabled() : Boolean
      {
         return this.§dynamic catch break§;
      }
      
      protected function §5214234483234496123423632234§() : void
      {
         this.§default var break§.y = this.§521423116092311622123423632234§() == §package default§.§default set package§ || !this.enabled ? 1 : 0;
      }
      
      public function set §true catch with§(param1:int) : void
      {
         this.§5214231390231403123423632234§ = param1;
         this.§521423139392313952123423632234§.height = param1;
      }
      
      public function get label() : String
      {
         return this.§521423139392313952123423632234§.text;
      }
      
      public function §521423116092311622123423632234§() : §package default§
      {
         return this.§package package var§;
      }
      
      protected function §switch catch include§() : void
      {
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§dynamic catch break§ = param1;
         buttonMode = this.§dynamic catch break§;
         mouseEnabled = this.§dynamic catch break§;
         mouseChildren = this.§dynamic catch break§;
         if(this.§dynamic catch break§)
         {
            this.setState(§package default§.§5214239651239664123423632234§);
            this.§5214235314235327123423632234§();
         }
         else
         {
            this.setState(§package default§.§null switch extends§);
            this.§switch catch include§();
         }
      }
      
      public function set label(param1:String) : void
      {
         this.§521423139392313952123423632234§.text = param1;
      }
      
      protected function onMouseEvent(param1:MouseEvent) : void
      {
         if(this.§dynamic catch break§)
         {
            switch(param1.type)
            {
               case "mouseOver":
                  this.setState(§package default§.§class extends§);
                  break;
               case "mouseOut":
               case "mouseUp":
                  this.setState(§package default§.§5214239651239664123423632234§);
                  break;
               case "mouseDown":
                  this.setState(§package default§.§default set package§);
            }
         }
      }
      
      public function set §5214236090236103123423632234§(param1:int) : void
      {
         this.§extends set finally§ = param1;
         this.§521423139392313952123423632234§.§521423102842310297123423632234§ = param1;
      }
      
      public function set §case catch import§(param1:int) : void
      {
         this.§while var if§ = param1;
         this.§521423139392313952123423632234§.y = param1;
      }
      
      override public function set width(param1:Number) : void
      {
         param1 = int(param1);
         this.§dynamic set break§.width = param1;
         this.§var const§.width = param1;
         this.§5214236176236189123423632234§.width = param1;
         this.§const finally use§.width = param1;
         this.§521423139392313952123423632234§.width = param1 - 4;
      }
      
      protected function §5214235314235327123423632234§() : void
      {
      }
      
      public function setState(param1:§package default§) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObject = null;
         if(this.§package package var§ != param1)
         {
            _loc2_ = this.§native const static§[this.§package package var§];
            _loc3_ = this.§native const static§[param1];
            this.§package package var§ = param1;
            _loc3_.visible = true;
            _loc2_.visible = false;
            this.§5214234483234496123423632234§();
         }
      }
   }
}

