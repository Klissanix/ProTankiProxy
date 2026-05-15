package §get for try§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §5214239113239126123423632234§ extends Sprite
   {
      
      private static const §dynamic set case§:Class = §a2a8f4f_png$57ff02db0c9edf2194f94c9bc8fde0fd-1086615689§;
      
      private static const §class finally use§:BitmapData = Bitmap(new §dynamic set case§()).bitmapData;
      
      private static const §5214231774231787123423632234§:Class = §c79b0d3_png$00561a24162b9d930b7985cfb705fbf9-1455841695§;
      
      private static const §52142337523388123423632234§:BitmapData = Bitmap(new §5214231774231787123423632234§()).bitmapData;
      
      private static const §5214234574234587123423632234§:Class = §c5068g7_png$26d2531b353be14a07eb1ded1a729fff-689972169§;
      
      private static const §521423113122311325123423632234§:BitmapData = Bitmap(new §5214234574234587123423632234§()).bitmapData;
      
      private static const §5214231680231693123423632234§:Class = e7073a4_png$c5e013248c2386d541b6baf6486e3a061333185492;
      
      private static const §5214237542237555123423632234§:BitmapData = Bitmap(new §5214231680231693123423632234§()).bitmapData;
      
      private var §class super§:Bitmap;
      
      private var §default finally catch§:Bitmap;
      
      private var §5214231971231984123423632234§:Bitmap;
      
      private var §finally var default§:Bitmap;
      
      private var §521423134862313499123423632234§:Vector.<Bitmap>;
      
      private var §5214237890237903123423632234§:Boolean;
      
      private var §521423105122310525123423632234§:Boolean;
      
      private var §dynamic catch break§:Boolean;
      
      public var §for switch true§:§5214231141231154123423632234§;
      
      public function §5214239113239126123423632234§(param1:BitmapData = null)
      {
         super();
         this.§default finally catch§ = new Bitmap(§52142337523388123423632234§);
         addChild(this.§default finally catch§);
         this.§5214231971231984123423632234§ = new Bitmap(§521423113122311325123423632234§);
         addChild(this.§5214231971231984123423632234§);
         this.§finally var default§ = new Bitmap(§5214237542237555123423632234§);
         addChild(this.§finally var default§);
         this.§class super§ = new Bitmap(param1 != null ? param1 : §class finally use§);
         addChild(this.§class super§);
         this.§class super§.visible = false;
         this.§521423134862313499123423632234§ = new <Bitmap>[this.§default finally catch§,this.§5214231971231984123423632234§,this.§finally var default§];
         tabEnabled = false;
         this.§null switch true§(this.§default finally catch§);
         this.enabled = true;
         this.§for switch true§ = new §5214231141231154123423632234§();
         this.§for switch true§.x = 29;
         this.§for switch true§.y = 7;
         addChild(this.§for switch true§);
      }
      
      public function set label(param1:String) : void
      {
         this.§for switch true§.text = param1;
      }
      
      private function §catch var native§() : void
      {
         addEventListener("mouseOver",this.onMouseEvent);
         addEventListener("mouseOut",this.onMouseEvent);
         addEventListener("mouseDown",this.onMouseEvent);
         addEventListener("mouseUp",this.onMouseEvent);
      }
      
      private function §continue catch each§() : void
      {
         removeEventListener("mouseOver",this.onMouseEvent);
         removeEventListener("mouseOut",this.onMouseEvent);
         removeEventListener("mouseDown",this.onMouseEvent);
         removeEventListener("mouseUp",this.onMouseEvent);
      }
      
      private function onMouseEvent(param1:MouseEvent) : void
      {
         this.§class super§.y = 0;
         switch(param1.type)
         {
            case "mouseOver":
               this.§null switch true§(this.§finally var default§);
               break;
            case "mouseOut":
               this.§521423105122310525123423632234§ = false;
               this.§null switch true§(this.§default finally catch§);
               break;
            case "mouseDown":
               if(this.§5214237890237903123423632234§)
               {
                  this.§class super§.y = 2;
               }
               this.§521423105122310525123423632234§ = true;
               this.§null switch true§(this.§5214231971231984123423632234§);
               break;
            case "mouseUp":
               this.§null switch true§(this.§finally var default§);
               if(this.§521423105122310525123423632234§)
               {
                  this.§521423105122310525123423632234§ = false;
                  this.§5214231007231020123423632234§();
               }
         }
      }
      
      override public function get height() : Number
      {
         return §default finally catch§.height;
      }
      
      public function get §return for case§() : Boolean
      {
         return this.§5214237890237903123423632234§;
      }
      
      public function set §return for case§(param1:Boolean) : void
      {
         if(this.§5214237890237903123423632234§ != param1)
         {
            this.§5214231007231020123423632234§();
         }
      }
      
      private function §null switch true§(param1:Bitmap) : void
      {
         for each(var _loc2_ in this.§521423134862313499123423632234§)
         {
            _loc2_.visible = false;
         }
         param1.visible = true;
      }
      
      private function §5214231007231020123423632234§() : void
      {
         this.§5214237890237903123423632234§ = !this.§5214237890237903123423632234§;
         this.§class super§.visible = this.§5214237890237903123423632234§;
         dispatchEvent(new §continue package implements§("CheckBoxStateChangeEvent"));
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(this.§dynamic catch break§ != param1)
         {
            this.§dynamic catch break§ = param1;
            if(this.§dynamic catch break§)
            {
               buttonMode = true;
               mouseEnabled = true;
               this.§catch var native§();
               this.alpha = 1;
            }
            else
            {
               buttonMode = false;
               this.§continue catch each§();
               this.alpha = 0.5;
            }
         }
      }
      
      public function §5214234325234338123423632234§(param1:Boolean) : void
      {
         if(this.§5214237890237903123423632234§ != param1)
         {
            this.§5214237890237903123423632234§ = param1;
            this.§class super§.visible = this.§5214237890237903123423632234§;
         }
      }
   }
}

