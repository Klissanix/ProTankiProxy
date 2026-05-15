package §package catch while§
{
   import flash.display.Graphics;
   import flash.display.Shape;
   
   public class AbrisSolo extends Shape
   {
      
      public function AbrisSolo(param1:Boolean, param2:Boolean)
      {
         super();
         var _loc3_:Graphics = graphics;
         _loc3_.lineStyle(1,param2 ? 8364155 : 10329501,1,false,"normal","round");
         _loc3_.beginFill(param1 ? 3158064 : 2579207);
         _loc3_.drawRoundRect(0.5,0.5,52,13,5,5);
         _loc3_.endFill();
      }
   }
}

