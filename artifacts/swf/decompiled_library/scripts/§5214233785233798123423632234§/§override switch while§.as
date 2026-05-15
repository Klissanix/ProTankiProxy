package §5214233785233798123423632234§
{
   import §521423107782310791123423632234§.BattleInfoIcons;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237555237568123423632234§;
   
   public class §override switch while§ extends Sprite
   {
      
      private const §use switch if§:int = 7;
      
      private const §true for try§:int = 75;
      
      private const §5214238216238229123423632234§:Vector.<int> = new <int>[1,5,10,20,50,100,200,500];
      
      protected var §for var switch§:§5214237555237568123423632234§ = new §5214237555237568123423632234§();
      
      protected var §do each§:§5214231140231153123423632234§ = new §5214231140231153123423632234§();
      
      protected var §521423125632312576123423632234§:int = 0;
      
      protected var §521423121082312121123423632234§:int = 10;
      
      protected var §function use while§:int = 0;
      
      protected var §throw var do§:§5214231141231154123423632234§;
      
      private var §5214232179232192123423632234§:int = 1;
      
      protected var §521423134902313503123423632234§:int;
      
      protected var §finally use final§:int = 75;
      
      protected var §5214235054235067123423632234§:uint;
      
      protected var §5214233414233427123423632234§:int = 0;
      
      protected var §break const include§:int = 0;
      
      protected var §5214235443235456123423632234§:int = 500;
      
      protected var §final var set§:Timer;
      
      protected var §if for while§:BattleInfoIcons;
      
      private var §521423139112313924123423632234§:Boolean = true;
      
      private var §521423123872312400123423632234§:DisplayObject;
      
      public function §override switch while§(param1:int = 1, param2:int = 5)
      {
         super();
         this.§5214239758239771123423632234§ = param1;
         this.§521423134902313503123423632234§ = this.§function extends§(0);
         addChild(this.§for var switch§);
         this.§for var switch§.width = 55;
         this.§for var switch§.x = 19;
         addChild(this.§do each§);
         this.§do each§.x = 75;
         this.§for var switch§.§5214235789235802123423632234§ = "0-9";
         this.§for var switch§.§false set false§ = param2;
         this.§for var switch§.align = "center";
         this.§for var switch§.§52142339223405123423632234§.addEventListener("focusOut",this.§false const§);
         this.§for var switch§.§52142339223405123423632234§.addEventListener("mouseFocusChange",this.§false const§);
         this.§for var switch§.addEventListener("LoginChanged",this.§false const§);
         this.§for var switch§.§52142339223405123423632234§.addEventListener("focusIn",this.§const catch package§);
         this.§final var set§ = new Timer(this.§5214235443235456123423632234§,1);
         this.§final var set§.addEventListener("timerComplete",this.§with for use§);
         this.§5214233910233923123423632234§();
         this.enabled = true;
      }
      
      private static function §native var use§(param1:String) : String
      {
         return param1.replace(" ","");
      }
      
      public function set §5214232241232254123423632234§(param1:int) : void
      {
         this.§function use while§ = param1;
         this.§521423125632312576123423632234§ = Math.max(this.§521423125632312576123423632234§,this.§function use while§);
         this.§5214233910233923123423632234§();
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§521423139112313924123423632234§ = param1;
         if(this.§521423139112313924123423632234§)
         {
            this.§do each§.addEventListener("mouseDown",this.§implements package null§);
            this.§do each§.addEventListener("mouseUp",this.§5214231483231496123423632234§);
            this.§do each§.addEventListener("mouseOut",this.§5214231483231496123423632234§);
            this.§for var switch§.§52142339223405123423632234§.selectable = true;
            this.§for var switch§.§52142339223405123423632234§.type = "input";
         }
         else
         {
            this.§do each§.removeEventListener("mouseDown",this.§implements package null§);
            this.§do each§.removeEventListener("mouseUp",this.§5214231483231496123423632234§);
            this.§do each§.removeEventListener("mouseOut",this.§5214231483231496123423632234§);
            this.§for var switch§.§52142339223405123423632234§.selectable = false;
            this.§for var switch§.§52142339223405123423632234§.type = "dynamic";
         }
         mouseEnabled = param1;
         mouseChildren = param1;
      }
      
      public function set value(param1:int) : void
      {
         this.§521423125632312576123423632234§ = param1;
         this.§5214233910233923123423632234§();
      }
      
      private function §implements package null§(param1:MouseEvent) : void
      {
         stage.focus = this.§do each§;
         this.§do each§.§5214232052232065123423632234§(this.§do each§.mouseY < 15 ? 2 : 3);
         this.§521423125632312576123423632234§ = Number(§native var use§(this.§for var switch§.value));
         this.§521423125632312576123423632234§ = Math.min(this.§521423125632312576123423632234§,this.§521423121082312121123423632234§);
         var _loc2_:int = this.§521423125632312576123423632234§ + (this.§do each§.mouseY > 15 ? -this.§5214232179232192123423632234§ : this.§5214232179232192123423632234§);
         this.§521423125632312576123423632234§ = Math.max(this.§function use while§,Math.min(_loc2_,this.§521423121082312121123423632234§));
         this.§final var set§.reset();
         this.§final var set§.start();
         this.§5214233910233923123423632234§();
      }
      
      private function §5214231483231496123423632234§(param1:MouseEvent) : void
      {
         this.§do each§.§5214232052232065123423632234§(1);
         this.§final var set§.stop();
         clearInterval(this.§5214235054235067123423632234§);
         this.§5214233414233427123423632234§ = 0;
         this.§521423134902313503123423632234§ = this.§function extends§(0);
         this.§break const include§ = 0;
      }
      
      public function set §5214238676238689123423632234§(param1:int) : void
      {
         this.§5214235443235456123423632234§ = param1;
         this.§final var set§.delay = param1;
      }
      
      private function §false const§(param1:Event) : void
      {
         var _loc2_:int = Number(§native var use§(this.§for var switch§.value));
         this.§521423125632312576123423632234§ = Math.max(this.§function use while§,Math.min(_loc2_,this.§521423121082312121123423632234§));
         this.§5214233910233923123423632234§();
      }
      
      private function §const catch package§(param1:Event) : void
      {
         if(this.§for var switch§.value == "—")
         {
            this.§for var switch§.§false set final§();
         }
      }
      
      public function get §5214239758239771123423632234§() : int
      {
         return this.§5214232179232192123423632234§;
      }
      
      public function get value() : int
      {
         return this.§521423125632312576123423632234§;
      }
      
      private function §521423134932313506123423632234§() : void
      {
         stage.focus = this.§do each§;
         this.§do each§.§5214232052232065123423632234§(this.§do each§.mouseY < 15 ? 2 : 3);
         this.§521423125632312576123423632234§ = Number(§native var use§(this.§for var switch§.value));
         this.§521423125632312576123423632234§ += this.§do each§.mouseY <= 15 ? this.§521423134902313503123423632234§ : -this.§521423134902313503123423632234§;
         this.§521423125632312576123423632234§ = Math.max(Math.min(this.§521423125632312576123423632234§,this.§521423121082312121123423632234§),this.§function use while§);
         this.§5214233910233923123423632234§();
         ++this.§5214233414233427123423632234§;
         if(this.§5214233414233427123423632234§ >= 7)
         {
            if(this.§break const include§ + 1 < this.§5214238216238229123423632234§.length)
            {
               if(this.§521423125632312576123423632234§ % this.§function extends§(this.§break const include§ + 1) < this.§5214232179232192123423632234§)
               {
                  this.§5214233414233427123423632234§ = 0;
                  this.§521423134902313503123423632234§ = this.§function extends§(this.§break const include§ + 1);
                  ++this.§break const include§;
               }
            }
         }
      }
      
      public function set §5214239758239771123423632234§(param1:int) : void
      {
         this.§5214232179232192123423632234§ = param1;
      }
      
      private function §with for use§(param1:TimerEvent) : void
      {
         this.§5214235054235067123423632234§ = setInterval(this.§521423134932313506123423632234§,this.§finally use final§);
      }
      
      public function §function extends§(param1:int) : int
      {
         return this.§5214238216238229123423632234§[param1] * this.§5214232179232192123423632234§;
      }
      
      public function get §5214238676238689123423632234§() : int
      {
         return this.§5214235443235456123423632234§;
      }
      
      private function §5214233910233923123423632234§() : void
      {
         if(stage != null)
         {
            this.§for var switch§.value = this.§521423125632312576123423632234§ > 0 || stage.focus == this.§for var switch§.§52142339223405123423632234§ ? §521423133302313343123423632234§.§get catch catch§(this.value,false) : "—";
            if(this.enabled)
            {
               dispatchEvent(new Event("change"));
            }
         }
         else
         {
            this.§for var switch§.value = this.§521423125632312576123423632234§ > 0 ? §521423133302313343123423632234§.§get catch catch§(this.value,false) : "—";
         }
      }
      
      public function get enabled() : Boolean
      {
         return this.§521423139112313924123423632234§;
      }
      
      public function set §continue set extends§(param1:BitmapData) : void
      {
         if(this.§521423123872312400123423632234§ != null)
         {
            removeChildAt(0);
         }
         this.§521423123872312400123423632234§ = new Bitmap(param1);
         addChildAt(this.§521423123872312400123423632234§,0);
         this.§521423123872312400123423632234§.y = 8;
      }
      
      public function set icon(param1:int) : void
      {
         if(this.§if for while§ == null)
         {
            this.§if for while§ = new BattleInfoIcons();
            this.§if for while§.y = 8;
            addChildAt(this.§if for while§,0);
         }
         this.§if for while§.type = param1;
         if(param1 == 7)
         {
            this.§if for while§.x = -1;
         }
         else
         {
            this.§if for while§.x = 0;
         }
      }
      
      public function set §else const in§(param1:int) : void
      {
         this.§521423121082312121123423632234§ = param1;
         this.§521423125632312576123423632234§ = Math.min(this.§521423125632312576123423632234§,this.§521423121082312121123423632234§);
         this.§5214233910233923123423632234§();
      }
      
      public function set label(param1:String) : void
      {
         if(this.§throw var do§ == null)
         {
            this.§throw var do§ = new §5214231141231154123423632234§();
            this.§throw var do§.x = 18;
            this.§throw var do§.y = -18;
            this.§throw var do§.gridFitType = "subpixel";
            addChild(this.§throw var do§);
         }
         this.§throw var do§.text = param1;
      }
   }
}

