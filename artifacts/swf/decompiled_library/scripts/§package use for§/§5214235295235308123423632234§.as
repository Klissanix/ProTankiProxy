package §package use for§
{
   import flash.display.DisplayObject;
   
   public class §5214235295235308123423632234§ extends §switch with§
   {
      
      public function §5214235295235308123423632234§()
      {
         super();
      }
      
      override protected function §5214234644234657123423632234§(param1:int, param2:DisplayObject) : void
      {
         var _loc4_:int = 0;
         if(param1 <= 0)
         {
            width = 0;
            height = 0;
            return;
         }
         if(param1 == §continue package set§.length)
         {
            width = this.§5214235455235468123423632234§();
            height = §continue package set§[§continue package set§.length - 1].y + int(§continue package set§[§continue package set§.length - 1].height);
            return;
         }
         var _loc3_:int = §continue package set§[param1].y - param2.y;
         _loc4_ = param1;
         while(_loc4_ < §continue package set§.length)
         {
            §continue package set§[_loc4_].y -= _loc3_;
            _loc4_++;
         }
         height = §continue package set§[§continue package set§.length - 1].y + int(§continue package set§[§continue package set§.length - 1].height);
         width = this.§5214235455235468123423632234§();
      }
      
      override protected function §else package include§(param1:DisplayObject) : void
      {
         if(§continue package set§.length < 2)
         {
            height = param1.y + int(param1.height);
            width = param1.x + §import use dynamic§(param1);
            return;
         }
         var _loc2_:DisplayObject = §continue package set§[§continue package set§.length - 2];
         var _loc3_:int = param1.y;
         param1.y = _loc2_.y + int(_loc2_.height) + §finally catch true§() + param1.y;
         height = _loc2_.y + int(_loc2_.height) + §finally catch true§() + _loc3_ + int(param1.height);
         width = Math.max(int(width),param1.x + §import use dynamic§(param1));
      }
      
      private function §5214235455235468123423632234§() : int
      {
         var _loc2_:int = 0;
         for each(var _loc1_ in §continue package set§)
         {
            _loc2_ = Math.max(_loc2_,_loc1_.x + §import use dynamic§(_loc1_));
         }
         return _loc2_;
      }
   }
}

