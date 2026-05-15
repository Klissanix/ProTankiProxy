package §5214239706239719123423632234§
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class §if finally finally§ extends Sprite
   {
      
      private var §5214237851237864123423632234§:int = 100;
      
      public function §if finally finally§(param1:Boolean)
      {
         var _loc2_:DisplayObject = null;
         super();
         if(param1)
         {
            _loc2_ = new §5214237397237410123423632234§();
         }
         else
         {
            _loc2_ = new §get set static§();
         }
         addChild(_loc2_);
         this.resize();
      }
      
      protected function resize() : void
      {
         var _loc1_:DisplayObject = getChildAt(0) as DisplayObject;
         _loc1_.width = this.§5214237851237864123423632234§ - 3;
         _loc1_.height = 18;
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.resize();
      }
   }
}

