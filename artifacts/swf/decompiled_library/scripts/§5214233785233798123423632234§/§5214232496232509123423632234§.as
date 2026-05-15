package §5214233785233798123423632234§
{
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   
   public class §5214232496232509123423632234§ extends Sprite
   {
      
      public const §521423100042310017123423632234§:Shape = new Shape();
      
      public const §5214236214236227123423632234§:Shape = new Shape();
      
      public const §with var false§:Shape = new Shape();
      
      public var §class package while§:BitmapData;
      
      public var §true const break§:BitmapData;
      
      public var §5214234027234040123423632234§:BitmapData;
      
      public var §5214237851237864123423632234§:int;
      
      public function §5214232496232509123423632234§()
      {
         super();
         addChild(this.§521423100042310017123423632234§);
         addChild(this.§5214236214236227123423632234§);
         addChild(this.§with var false§);
      }
      
      public function draw() : void
      {
         var _loc1_:Graphics = this.§521423100042310017123423632234§.graphics;
         _loc1_.clear();
         if(§class package while§)
         {
            _loc1_.beginBitmapFill(this.§class package while§);
         }
         _loc1_.drawRect(0,0,7,30);
         _loc1_.endFill();
         this.§521423100042310017123423632234§.x = 0;
         this.§521423100042310017123423632234§.y = 0;
         _loc1_ = this.§5214236214236227123423632234§.graphics;
         _loc1_.clear();
         if(§true const break§)
         {
            _loc1_.beginBitmapFill(this.§true const break§);
         }
         _loc1_.drawRect(0,0,this.§5214237851237864123423632234§ - 14,30);
         _loc1_.endFill();
         this.§5214236214236227123423632234§.x = 7;
         this.§5214236214236227123423632234§.y = 0;
         _loc1_ = this.§with var false§.graphics;
         _loc1_.clear();
         if(§5214234027234040123423632234§)
         {
            _loc1_.beginBitmapFill(this.§5214234027234040123423632234§);
         }
         _loc1_.drawRect(0,0,7,30);
         _loc1_.endFill();
         this.§with var false§.x = this.§5214237851237864123423632234§ - 7;
         this.§with var false§.y = 0;
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.draw();
      }
   }
}

