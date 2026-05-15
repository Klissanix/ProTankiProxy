package §521423100242310037123423632234§
{
   import §5214233785233798123423632234§.§5214232496232509123423632234§;
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import utils.§if set for§;
   
   public class §521423139032313916123423632234§ extends §5214232496232509123423632234§
   {
      
      private static const §5214233985233998123423632234§:Class = D30gefe_png$0d2dbe435a2dbe2492129128abf884d9925933771;
      
      private static const §5214234073234086123423632234§:Class = S17f431_png$c17591a32ebbea3ea2a08c22ac0272ca987010338;
      
      private var §5214235389235402123423632234§:BitmapData;
      
      private var §default use const§:BitmapData;
      
      public function §521423139032313916123423632234§()
      {
         super();
         §class package while§ = new §5214233985233998123423632234§().bitmapData;
         §true const break§ = new §5214234073234086123423632234§().bitmapData;
         §5214234027234040123423632234§ = §if set for§.flipH(§class package while§);
         this.§5214235389235402123423632234§ = new BitmapData(10,40);
         this.§default use const§ = new BitmapData(10,40);
         var _loc1_:Point = new Point();
         var _loc2_:Rectangle = new Rectangle(0,0,10,40);
         this.§5214235389235402123423632234§.copyPixels(§class package while§,_loc2_,_loc1_);
         _loc2_.x = 10;
         this.§default use const§.copyPixels(§5214234027234040123423632234§,_loc2_,_loc1_);
      }
      
      override public function draw() : void
      {
         var _loc1_:Graphics = null;
         if(§5214237851237864123423632234§ >= 40)
         {
            _loc1_ = §521423100042310017123423632234§.graphics;
            _loc1_.clear();
            _loc1_.beginBitmapFill(§class package while§);
            _loc1_.drawRect(0,0,20,40);
            _loc1_.endFill();
            §521423100042310017123423632234§.x = 0;
            §521423100042310017123423632234§.y = 0;
            _loc1_ = §5214236214236227123423632234§.graphics;
            _loc1_.clear();
            _loc1_.beginBitmapFill(§true const break§);
            _loc1_.drawRect(0,0,§5214237851237864123423632234§ - 40,40);
            _loc1_.endFill();
            §5214236214236227123423632234§.x = 20;
            §5214236214236227123423632234§.y = 0;
            _loc1_ = §with var false§.graphics;
            _loc1_.clear();
            _loc1_.beginBitmapFill(§5214234027234040123423632234§);
            _loc1_.drawRect(0,0,20,40);
            _loc1_.endFill();
            §with var false§.x = §5214237851237864123423632234§ - 20;
            §with var false§.y = 0;
         }
         else
         {
            _loc1_ = §521423100042310017123423632234§.graphics;
            _loc1_.clear();
            _loc1_.beginBitmapFill(this.§5214235389235402123423632234§);
            _loc1_.drawRect(0,0,10,40);
            _loc1_.endFill();
            §521423100042310017123423632234§.x = 0;
            §521423100042310017123423632234§.y = 0;
            _loc1_ = §5214236214236227123423632234§.graphics;
            _loc1_.clear();
            _loc1_.beginBitmapFill(§true const break§);
            _loc1_.drawRect(0,0,§5214237851237864123423632234§ - 20,40);
            _loc1_.endFill();
            §5214236214236227123423632234§.x = 10;
            §5214236214236227123423632234§.y = 0;
            _loc1_ = §with var false§.graphics;
            _loc1_.clear();
            _loc1_.beginBitmapFill(this.§default use const§);
            _loc1_.drawRect(0,0,10,40);
            _loc1_.endFill();
            §with var false§.x = §5214237851237864123423632234§ - 10;
            §with var false§.y = 0;
         }
      }
   }
}

