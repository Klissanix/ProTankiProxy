package §catch get§
{
   import flash.display.Graphics;
   import flash.display.Sprite;
   
   internal class §var set switch§ extends Sprite
   {
      
      private static const §5214233494233507123423632234§:Class = b59eeb0_png$f1c5ae97d0b668e9594b1ffdf4f5a549389189048;
      
      public function §var set switch§()
      {
         super();
      }
      
      private function §5214231068231081123423632234§(param1:Graphics, param2:Number, param3:Number, param4:uint, param5:int = -1) : void
      {
         var _loc10_:Number = NaN;
         _loc10_ = 3;
         var _loc8_:Number = NaN;
         _loc8_ = 1;
         var _loc7_:Number = NaN;
         _loc7_ = 0.5;
         var _loc6_:Number = NaN;
         _loc6_ = 6;
         var _loc9_:Number = NaN;
         _loc9_ = 5.5;
         param1.clear();
         param1.lineStyle(3,param4,1,false,"normal","none","miter");
         param1.moveTo(param2,param3);
         param1.lineTo(param2,param3 + 5.5 * param5);
         param1.beginFill(param4);
         param1.moveTo(param2 - 1 / 2,param3 + 5.5 * param5);
         param1.lineTo(param2 + 1 / 2,param3 + 5.5 * param5);
         param1.lineTo(param2,param3 + 6 * param5);
         param1.lineTo(param2 - 1 / 2,param3 + 5.5 * param5);
         param1.endFill();
      }
      
      public function §5214232052232065123423632234§(param1:int) : void
      {
         if(numChildren > 0)
         {
            removeChildAt(0);
         }
         if(param1 == 1)
         {
            §5214231068231081123423632234§(graphics,3.5,0,16717056,1);
         }
         else if(param1 == 2)
         {
            addChildAt(new §5214233494233507123423632234§(),0);
            getChildAt(0).x = -1;
         }
         else
         {
            §5214231068231081123423632234§(graphics,3.5,8,831523,-1);
         }
      }
   }
}

