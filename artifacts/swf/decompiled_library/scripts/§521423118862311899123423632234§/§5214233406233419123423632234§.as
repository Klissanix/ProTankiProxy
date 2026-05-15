package §521423118862311899123423632234§
{
   import §5214236944236957123423632234§.DiscreteSprite;
   import §do package super§.§521423117232311736123423632234§;
   
   public class §5214233406233419123423632234§ extends DiscreteSprite
   {
      
      public var §super package extends§:int = 3;
      
      public var §5214233008233021123423632234§:int = 3;
      
      public var §native use include§:int = 3;
      
      public var §continue package set§:Vector.<§521423117232311736123423632234§>;
      
      public function §5214233406233419123423632234§()
      {
         super();
         this.§continue package set§ = new Vector.<§521423117232311736123423632234§>();
      }
      
      public function render() : void
      {
         var _loc1_:§521423117232311736123423632234§ = null;
         _loc1_ = null;
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:int = 0;
         for each(_loc1_ in this.§continue package set§)
         {
            if(_loc1_.§var const dynamic§ || _loc2_ + _loc1_.§52142375723770123423632234§ > this.§super package extends§)
            {
               _loc2_ = 0;
               _loc4_ = 0;
               _loc5_ += this.§native use include§ + _loc3_;
               _loc3_ = 0;
            }
            _loc2_ += _loc1_.§52142375723770123423632234§;
            _loc1_.x = _loc4_;
            _loc1_.y = _loc5_;
            _loc4_ += _loc1_.width + this.§5214233008233021123423632234§;
            if(_loc1_.height > _loc3_)
            {
               _loc3_ = _loc1_.height;
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:§521423117232311736123423632234§ = null;
         for each(_loc1_ in this.§continue package set§)
         {
            _loc1_.destroy();
         }
         this.§continue package set§ = null;
      }
      
      public function addItem(param1:§521423117232311736123423632234§) : void
      {
         param1.gridPosition = this.§continue package set§.length;
         this.§continue package set§.push(param1);
         addChild(param1);
      }
      
      public function set §5214233870233883123423632234§(param1:int) : void
      {
         this.§5214233008233021123423632234§ = param1;
         this.§native use include§ = param1;
      }
   }
}

