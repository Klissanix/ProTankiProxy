package §override finally§
{
   import flash.display.Sprite;
   
   public class WindowInnerBlink extends Sprite
   {
      
      private static const §each for final§:Class = a6dfehh_jpg$baa45781a8933f8d7415551b6e68b4d3610715355;
      
      private static const RED:Class = a32b4h7_jpg$d1392e77c6f9bce75dc94f5a8b0e42be1373983476;
      
      private static const BLUE:Class = D7934bd_jpg$dcfa57f469a893d2b0cf1c25b374fcf12061939548;
      
      public function WindowInnerBlink()
      {
         super();
         addChildAt(new §each for final§(),0);
      }
      
      public function gotoAndStop(param1:Object, param2:String = null) : void
      {
         removeChildAt(0);
         if(param1 == 1)
         {
            addChildAt(new §each for final§(),0);
         }
         else if(param1 == 2)
         {
            addChildAt(new BLUE(),0);
         }
         else
         {
            addChildAt(new RED(),0);
         }
      }
   }
}

