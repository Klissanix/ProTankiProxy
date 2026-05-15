package §5214231620231633123423632234§
{
   import fl.containers.ScrollPane;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import utils.ScrollStyleUtils;
   
   public class §5214235758235771123423632234§ extends §5214237111237124123423632234§
   {
      
      private static const §5214236476236489123423632234§:int = 25;
      
      private static const §5214232759232772123423632234§:int = 5;
      
      public static const §return switch final§:int = 3;
      
      private static const §native set package§:int = 15;
      
      private static const §5214233093233106123423632234§:int = 5;
      
      private static const §include set implements§:int = 3;
      
      protected var §continue package throw§:ScrollPane;
      
      private var §521423125772312590123423632234§:Sprite;
      
      private var §package class§:Sprite;
      
      private var §5214237851237864123423632234§:int;
      
      private var §do finally set§:int;
      
      private var §continue package set§:Vector.<DisplayObject> = new Vector.<DisplayObject>();
      
      public function §5214235758235771123423632234§()
      {
         super();
         this.§521423125772312590123423632234§ = new Sprite();
         this.§package class§ = new Sprite();
         this.§521423125772312590123423632234§.addChild(this.§package class§);
         this.§continue package throw§ = new ScrollPane();
         ScrollStyleUtils.setGrayStyle(this.§continue package throw§);
         this.§continue package throw§.horizontalScrollPolicy = "off";
         this.§continue package throw§.verticalScrollPolicy = "auto";
         this.§continue package throw§.source = this.§521423125772312590123423632234§;
         this.§continue package throw§.update();
         this.§continue package throw§.focusEnabled = false;
         this.§continue package throw§.addEventListener("mouseWheel",§class use var§,true);
         addChild(this.§continue package throw§);
      }
      
      private static function §class use var§(param1:MouseEvent) : void
      {
         param1.delta *= 3;
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§do finally set§ = param2;
         this.§continue package throw§.y = 5;
         this.§continue package throw§.setSize(param1 + 5,param2 - 5 * 2);
         var _loc4_:int = 0;
         for each(var _loc3_ in this.§continue package set§)
         {
            _loc4_ += _loc3_.height;
         }
         this.§in catch else§(_loc4_);
         this.§continue package throw§.update();
      }
      
      private function §in catch else§(param1:int) : void
      {
         this.§package class§.graphics.lineStyle(1,16777215,0);
         this.§package class§.graphics.beginFill(16777215,0);
         this.§package class§.graphics.drawRect(0,0,1,15);
         this.§package class§.graphics.endFill();
         this.§package class§.x = 25;
         this.§package class§.y = param1;
      }
      
      override public function show() : void
      {
         this.render(751,456);
      }
      
      override public function destroy() : void
      {
         this.§continue package throw§.removeEventListener("mouseWheel",§class use var§,true);
         this.§continue package throw§ = null;
         super.destroy();
      }
      
      protected function addItem(param1:DisplayObject) : void
      {
         this.§continue package set§.push(param1);
         this.§521423125772312590123423632234§.addChild(param1);
      }
      
      override public function get height() : Number
      {
         return this.§do finally set§;
      }
      
      override public function get width() : Number
      {
         return this.§5214237851237864123423632234§;
      }
   }
}

