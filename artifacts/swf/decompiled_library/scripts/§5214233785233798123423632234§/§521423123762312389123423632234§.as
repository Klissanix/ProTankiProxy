package §5214233785233798123423632234§
{
   import flash.display.Graphics;
   import flash.display.Sprite;
   
   public class §521423123762312389123423632234§ extends Sprite
   {
      
      private const §5214234959234972123423632234§:int = 200;
      
      private const §5214237569237582123423632234§:int = 16777215;
      
      private const §52142322523238123423632234§:Number = 0.4;
      
      private var §521423139392313952123423632234§:§5214238529238542123423632234§ = new §5214238529238542123423632234§();
      
      public function §521423123762312389123423632234§()
      {
         super();
         addChild(this.§521423139392313952123423632234§);
         this.§521423139392313952123423632234§.§521423102842310297123423632234§ = 11.5;
      }
      
      public function set text(param1:String) : void
      {
         var _loc2_:Graphics = this.graphics;
         this.§521423139392313952123423632234§.text = param1;
         if(this.§521423139392313952123423632234§.textWidth > 200)
         {
            this.§521423139392313952123423632234§.width = 200;
            this.§521423139392313952123423632234§.multiline = true;
            this.§521423139392313952123423632234§.wordWrap = true;
         }
         _loc2_.clear();
         _loc2_.beginFill(16777215,0.4);
         _loc2_.drawRect(-3,-3,this.§521423139392313952123423632234§.textWidth + 9,this.§521423139392313952123423632234§.textHeight + 9);
         _loc2_.endFill();
      }
   }
}

