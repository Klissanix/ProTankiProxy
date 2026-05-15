package §package use for§
{
   import flash.display.DisplayObject;
   
   public class §const use class§ extends §switch with§
   {
      
      public function §const use class§()
      {
         super();
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
         var _loc5_:int = §import use dynamic§(_loc2_);
         var _loc3_:int = §import use dynamic§(param1);
         var _loc4_:int = param1.x;
         param1.x = _loc2_.x + _loc5_ + §finally catch true§() + _loc4_;
         height = Math.max(int(height),param1.y + int(param1.height));
         width = _loc2_.x + _loc5_ + §finally catch true§() + _loc4_ + _loc3_;
      }
      
      private function §do use if§() : int
      {
         var _loc1_:int = 0;
         for each(var _loc2_ in §continue package set§)
         {
            _loc1_ = Math.max(_loc1_,_loc2_.y + _loc2_.height);
         }
         return _loc1_;
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
            height = this.§do use if§();
            width = §continue package set§[§continue package set§.length - 1].x - §import use dynamic§(§continue package set§[§continue package set§.length - 1]);
            return;
         }
         var _loc3_:int = §continue package set§[param1].x - param2.x;
         _loc4_ = param1;
         while(_loc4_ < §continue package set§.length)
         {
            §continue package set§[_loc4_].x -= _loc3_;
            _loc4_++;
         }
         width = §continue package set§[§continue package set§.length - 1].x + §import use dynamic§(§continue package set§[§continue package set§.length - 1]);
         height = this.§do use if§();
      }
   }
}

