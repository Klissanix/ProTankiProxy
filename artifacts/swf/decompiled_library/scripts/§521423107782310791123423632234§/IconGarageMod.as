package §521423107782310791123423632234§
{
   import flash.display.Bitmap;
   import flash.display.Sprite;
   
   public class IconGarageMod extends Sprite
   {
      
      private static const §for catch switch§:Class = D4a9076_png$03c804a0c4c0142b299a5a563cf793691573973697;
      
      private static const §function catch use§:Class = §S76658e_png$5ceab9233583910d171965d3ec48fa4c-641229752§;
      
      public function IconGarageMod(param1:int = 0)
      {
         var _loc4_:Bitmap = null;
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         super();
         var _loc2_:int = int(param1 > 3 ? param1 : 3);
         _loc5_ = 0;
         while(_loc5_ < param1)
         {
            _loc4_ = new §function catch use§();
            _loc4_.x = _loc3_;
            addChild(_loc4_);
            _loc3_ += 12;
            _loc5_++;
         }
         _loc5_ = 0;
         while(_loc5_ < _loc2_ - param1)
         {
            _loc4_ = new §for catch switch§();
            _loc4_.x = _loc3_;
            addChild(_loc4_);
            _loc3_ += 12;
            _loc5_++;
         }
      }
   }
}

