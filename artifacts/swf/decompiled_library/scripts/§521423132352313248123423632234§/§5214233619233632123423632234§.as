package §521423132352313248123423632234§
{
   import §521423118862311899123423632234§.§5214235847235860123423632234§;
   import §5214233785233798123423632234§.§include return§;
   import §5214236944236957123423632234§.DiscreteSprite;
   import §do package super§.§521423117232311736123423632234§;
   import fl.containers.ScrollPane;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import utils.ScrollStyleUtils;
   
   public class §5214233619233632123423632234§ extends DiscreteSprite
   {
      
      private static const §null set do§:int = 20;
      
      private static const §override const super§:int = 25;
      
      private static const §package package switch§:int = 5;
      
      private static const §5214233017233030123423632234§:int = 15;
      
      private static const §return const catch§:int = 5;
      
      private static const §include set implements§:int = 3;
      
      private static const §52142310023113123423632234§:int = 8;
      
      private var §continue package throw§:ScrollPane;
      
      private var §521423125772312590123423632234§:Sprite;
      
      private var §521423129682312981123423632234§:Sprite;
      
      private var §return const set§:§include return§;
      
      private var §while use set§:Dictionary;
      
      private var §dynamic package final§:Vector.<§5214235847235860123423632234§>;
      
      private var §5214237851237864123423632234§:int;
      
      private var §do finally set§:int;
      
      public function §5214233619233632123423632234§()
      {
         super();
         this.§while use set§ = new Dictionary();
         this.§dynamic package final§ = new Vector.<§5214235847235860123423632234§>();
         this.§return const set§ = new §include return§(0,0,4278985229);
         addChild(this.§return const set§);
         this.§521423125772312590123423632234§ = new Sprite();
         this.§521423129682312981123423632234§ = new Sprite();
         this.§521423125772312590123423632234§.addChild(this.§521423129682312981123423632234§);
         this.§continue package throw§ = new ScrollPane();
         ScrollStyleUtils.setGreenStyle(this.§continue package throw§);
         this.§continue package throw§.horizontalScrollPolicy = "off";
         this.§continue package throw§.verticalScrollPolicy = "auto";
         this.§continue package throw§.source = this.§521423125772312590123423632234§;
         this.§continue package throw§.update();
         this.§continue package throw§.focusEnabled = false;
         this.§continue package throw§.addEventListener("mouseWheel",this.§class use var§,true);
         addChild(this.§continue package throw§);
      }
      
      public function render(param1:int, param2:int) : void
      {
         var _loc3_:§5214235847235860123423632234§ = null;
         this.§5214237851237864123423632234§ = param1;
         this.§do finally set§ = param2;
         this.§continue package throw§.y = 5;
         this.§continue package throw§.setSize(param1 + 5,param2 - 5 * 2);
         this.§return const set§.width = param1;
         this.§return const set§.height = param2;
         var _loc4_:int = -12;
         for each(_loc3_ in this.§dynamic package final§)
         {
            _loc3_.x = 25;
            _loc3_.render(this.§5214237851237864123423632234§ - 25 * 2 - (this.§continue package throw§.verticalScrollBar.width - 5 - 1));
            _loc3_.y = _loc4_ + 20;
            _loc4_ = _loc3_.y + _loc3_.height;
         }
         this.§52142356723580123423632234§(_loc4_);
         this.§continue package throw§.update();
      }
      
      override public function get width() : Number
      {
         return this.§5214237851237864123423632234§;
      }
      
      public function §521423110622311075123423632234§(param1:String) : void
      {
         this.§continue package throw§.verticalScrollPosition = this.§while use set§[param1].y - 8;
      }
      
      override public function get height() : Number
      {
         return this.§do finally set§;
      }
      
      public function addItem(param1:String, param2:§521423117232311736123423632234§) : void
      {
         §5214235847235860123423632234§(this.§while use set§[param1]).addItem(param2);
      }
      
      private function §52142356723580123423632234§(param1:int) : void
      {
         this.§521423129682312981123423632234§.graphics.lineStyle(1,16777215,0);
         this.§521423129682312981123423632234§.graphics.beginFill(16777215,0);
         this.§521423129682312981123423632234§.graphics.drawRect(0,0,1,15);
         this.§521423129682312981123423632234§.graphics.endFill();
         this.§521423129682312981123423632234§.x = 25;
         this.§521423129682312981123423632234§.y = param1;
      }
      
      public function destroy() : void
      {
         var _loc1_:§5214235847235860123423632234§ = null;
         for each(_loc1_ in this.§while use set§)
         {
            _loc1_.destroy();
         }
         this.§while use set§ = null;
         this.§dynamic package final§ = null;
         this.§continue package throw§.removeEventListener("mouseWheel",this.§class use var§,true);
         this.§continue package throw§ = null;
      }
      
      public function get §package package§() : int
      {
         return this.§continue package throw§.verticalScrollPosition;
      }
      
      private function §class use var§(param1:MouseEvent) : void
      {
         param1.delta *= 3;
      }
      
      public function set §package package§(param1:int) : void
      {
         if(this.§continue package throw§.stage)
         {
            this.§continue package throw§.verticalScrollPosition = param1;
            this.§continue package throw§.update();
         }
      }
      
      public function §default for use§(param1:§5214235847235860123423632234§) : void
      {
         this.§while use set§[param1.§52142381623829123423632234§] = param1;
         this.§dynamic package final§.push(param1);
         this.§521423125772312590123423632234§.addChild(param1);
      }
   }
}

