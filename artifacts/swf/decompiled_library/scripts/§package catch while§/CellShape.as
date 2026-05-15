package §package catch while§
{
   import flash.display.Graphics;
   import flash.display.Shape;
   
   public class CellShape extends Shape
   {
      
      private var _width:int;
      
      private var color:uint;
      
      public function CellShape(param1:uint)
      {
         super();
         this.color = param1;
      }
      
      override public function get width() : Number
      {
         return _width;
      }
      
      override public function set width(param1:Number) : void
      {
         this._width = param1;
         this.draw();
      }
      
      public function draw() : void
      {
         var _loc1_:Graphics = graphics;
         _loc1_.clear();
         _loc1_.beginFill(color);
         _loc1_.drawRoundRectComplex(0,0,_width,18,3.4,3.4,3.7,3.7);
         _loc1_.endFill();
         _loc1_.beginFill(0,0);
         _loc1_.drawRect(0,0,1,20);
         _loc1_.endFill();
      }
   }
}

