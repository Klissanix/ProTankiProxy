package §5214235609235622123423632234§
{
   import §5214233785233798123423632234§.§include return§;
   import §5214236944236957123423632234§.DiscreteSprite;
   import §continue switch package§.§var use true§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   
   public class §5214236076236089123423632234§ extends DialogWindow
   {
      
      protected static const §do switch null§:int = 11;
      
      protected static const §include catch throw§:int = 5;
      
      protected static const §implements finally§:int = 30;
      
      private var §include var§:BitmapData;
      
      private var §5214232433232446123423632234§:§var use true§;
      
      private var §5214232652232665123423632234§:§include return§;
      
      protected var §include var true§:§5214237085237098123423632234§;
      
      protected var §5214236204236217123423632234§:Sprite;
      
      protected var §use var try§:Sprite;
      
      protected var §throw use override§:int;
      
      protected var §set finally switch§:int;
      
      protected var §use finally set§:int;
      
      private var §52142361023623123423632234§:String;
      
      public function §5214236076236089123423632234§(param1:BitmapData, param2:String)
      {
         super();
         this.§include var§ = param1;
         this.§52142361023623123423632234§ = param2;
         this.init();
      }
      
      public function §5214231016231029123423632234§() : void
      {
         §5214239382239395123423632234§.enqueueDialog(this);
      }
      
      protected function §implements for var§(param1:int) : void
      {
         this.§use finally set§ = param1;
         this.resize();
      }
      
      protected function §var var use§(param1:int, param2:int) : void
      {
         this.§throw use override§ = param1;
         this.§set finally switch§ = param2;
         this.resize();
      }
      
      protected function §521423118002311813123423632234§(param1:Event = null) : void
      {
         this.destroy();
      }
      
      private function resize() : void
      {
         this.§5214232433232446123423632234§.width = this.§throw use override§ + 2 * 11;
         this.§5214232433232446123423632234§.height = 11 + this.§set finally switch§ + 5 + this.§use finally set§ + 11;
         this.§5214232652232665123423632234§.width = this.§throw use override§;
         this.§5214232652232665123423632234§.height = this.§set finally switch§;
         this.§5214232652232665123423632234§.x = 11;
         this.§5214232652232665123423632234§.y = 11;
         this.§5214236204236217123423632234§.x = 11;
         this.§5214236204236217123423632234§.y = 11;
         this.§5214236204236217123423632234§.graphics.clear();
         this.§5214236204236217123423632234§.graphics.beginFill(0,0);
         this.§5214236204236217123423632234§.graphics.drawRect(0,0,this.§throw use override§,this.§set finally switch§);
         this.§5214236204236217123423632234§.graphics.endFill();
         this.§use var try§.x = 11;
         this.§use var try§.y = 11 + this.§set finally switch§ + 5;
         this.§use var try§.graphics.clear();
         this.§use var try§.graphics.beginFill(0,0);
         this.§use var try§.graphics.drawRect(0,0,this.§throw use override§,this.§use finally set§);
         this.§use var try§.graphics.endFill();
         this.§var var final§();
      }
      
      override protected function cancelKeyPressed() : void
      {
         this.§521423118002311813123423632234§();
      }
      
      protected function init() : void
      {
         this.§5214232433232446123423632234§ = new §var use true§(this.§include var§);
         addChild(this.§5214232433232446123423632234§);
         this.§5214232652232665123423632234§ = new §include return§(0,0,4278985229);
         addChild(this.§5214232652232665123423632234§);
         this.§5214236204236217123423632234§ = new DiscreteSprite();
         addChild(this.§5214236204236217123423632234§);
         this.§use var try§ = new DiscreteSprite();
         addChild(this.§use var try§);
         this.§include var true§ = new §5214237085237098123423632234§();
         this.§include var true§.label = this.§52142361023623123423632234§;
         this.§include var true§.addEventListener("click",this.§521423118002311813123423632234§);
         this.§use var try§.addChild(this.§include var true§);
         this.§implements for var§(30);
      }
      
      protected function destroy() : void
      {
         this.§include var true§.removeEventListener("click",this.§521423118002311813123423632234§);
         §5214239382239395123423632234§.removeDialog(this);
      }
      
      protected function §var var final§() : void
      {
         this.§include var true§.x = this.§throw use override§ - this.§include var true§.width;
      }
   }
}

