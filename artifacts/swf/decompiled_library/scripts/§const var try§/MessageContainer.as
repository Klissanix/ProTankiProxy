package §const var try§
{
   import flash.display.Sprite;
   
   public class MessageContainer extends Sprite
   {
      
      protected var §for switch const§:int = 3;
      
      protected var container:Sprite = new Sprite();
      
      protected var shift:Number;
      
      public function MessageContainer()
      {
         super();
         addChild(this.container);
      }
      
      protected function pushBack(param1:MessageLine) : void
      {
         param1.y = this.container.numChildren > 0 ? int(this.container.height + this.§for switch const§) : 0;
         this.container.addChild(param1);
      }
      
      protected function pushFront(param1:MessageLine) : void
      {
         param1.y = 0;
         param1.alpha = 1;
         this.container.addChildAt(param1,0);
         var _loc2_:int = this.container.numChildren;
         var _loc3_:int = 1;
         while(_loc3_ < _loc2_)
         {
            this.container.getChildAt(_loc3_).y = this.container.getChildAt(_loc3_).y + (int(param1.height + this.§for switch const§));
            _loc3_++;
         }
      }
      
      public function removeFirstMessage(param1:Boolean = false) : MessageLine
      {
         var _loc2_:int = this.container.numChildren;
         if(_loc2_ == 0)
         {
            return null;
         }
         var _loc4_:MessageLine = MessageLine(this.container.getChildAt(0));
         this.shift = int(_loc4_.height + _loc4_.y + this.§for switch const§);
         this.container.removeChild(_loc4_);
         _loc2_--;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.container.getChildAt(_loc3_).y = this.container.getChildAt(_loc3_).y - this.shift;
            _loc3_++;
         }
         return _loc4_;
      }
   }
}

