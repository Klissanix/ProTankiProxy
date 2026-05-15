package §true switch true§
{
   import §5214233785233798123423632234§.§521423131042313117123423632234§;
   import flash.events.FocusEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import §include else§.§5214233871233884123423632234§;
   
   public class §5214237566237579123423632234§ extends §5214237555237568123423632234§
   {
      
      private const §dynamic for import§:int = 500;
      
      public var §get const in§:int = 33;
      
      private var §521423137822313795123423632234§:Timer;
      
      private var §52142376423777123423632234§:§521423131042313117123423632234§;
      
      private var §5214237302237315123423632234§:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
      
      private var §static const catch§:Function;
      
      private var §break set use§:Boolean;
      
      private var §5214231063231076123423632234§:Boolean = false;
      
      private var §5214237514237527123423632234§:Boolean = false;
      
      private var §extends var while§:Boolean = false;
      
      public function §5214237566237579123423632234§(param1:String, param2:Boolean = false)
      {
         super();
         this.§break set use§ = param2;
         this.§5214237302237315123423632234§.text = param1;
         this.§5214237302237315123423632234§.mouseEnabled = false;
         this.§5214237302237315123423632234§.color = 10987948;
         addChild(this.§5214237302237315123423632234§);
         if(this.§break set use§)
         {
            this.§52142376423777123423632234§ = new §521423131042313117123423632234§();
            addChild(this.§52142376423777123423632234§);
            this.§521423137822313795123423632234§ = new Timer(500,1);
            this.§521423137822313795123423632234§.addEventListener("timerComplete",this.§if switch with§);
         }
         addEventListener("focusIn",this.§import switch null§);
         addEventListener("focusOut",this.§if catch function§);
         addEventListener("LoginChanged",this.§throw for dynamic§);
         this.resize();
      }
      
      private function §throw for dynamic§(param1:§5214233871233884123423632234§) : void
      {
         if(!this.§break set use§)
         {
            return;
         }
         if(value.length == 0)
         {
            this.§52142376423777123423632234§.§5214232307232320123423632234§();
         }
         this.§521423137822313795123423632234§.reset();
         this.§521423137822313795123423632234§.start();
         this.§extends var while§ = true;
      }
      
      public function set §break use continue§(param1:Function) : void
      {
         this.§static const catch§ = param1;
      }
      
      private function resize() : void
      {
         this.§5214237302237315123423632234§.x = 3;
         this.§5214237302237315123423632234§.y = 7;
         if(this.§break set use§)
         {
            this.§52142376423777123423632234§.x = §5214237851237864123423632234§ - §get const in§;
            this.§52142376423777123423632234§.y = 7;
         }
      }
      
      public function §else package final§() : Boolean
      {
         return this.§5214237514237527123423632234§;
      }
      
      private function §if catch function§(param1:FocusEvent) : void
      {
         if(value.length == 0)
         {
            this.§5214237302237315123423632234§.visible = true;
         }
      }
      
      private function §if switch with§(param1:TimerEvent) : void
      {
         if(value.length > 0)
         {
            this.§52142376423777123423632234§.§5214233289233302123423632234§();
            if(this.§static const catch§ != null)
            {
               this.§static const catch§.call(this);
            }
         }
      }
      
      public function get §try use set§() : Boolean
      {
         return this.§extends var while§;
      }
      
      private function §import switch null§(param1:FocusEvent) : void
      {
         this.§5214237302237315123423632234§.visible = false;
      }
      
      public function §521423102552310268123423632234§() : Boolean
      {
         return this.§5214231063231076123423632234§;
      }
      
      override public function set enable(param1:Boolean) : void
      {
         super.enable = param1;
         this.§5214237514237527123423632234§ = param1;
      }
      
      public function §break var override§() : void
      {
         this.§extends var while§ = false;
         if(this.§break set use§)
         {
            this.§5214231063231076123423632234§ = true;
            §in use set§ = true;
            this.§52142376423777123423632234§.§try set class§();
         }
      }
      
      override public function set width(param1:Number) : void
      {
         super.width = param1;
         this.resize();
      }
      
      public function §super var get§() : void
      {
         this.§extends var while§ = false;
         if(this.§break set use§)
         {
            this.§5214231063231076123423632234§ = false;
            §in use set§ = false;
            this.§52142376423777123423632234§.§5214235877235890123423632234§();
         }
      }
      
      public function get §break use continue§() : Function
      {
         return this.§static const catch§;
      }
   }
}

