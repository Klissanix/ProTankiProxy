package §include use continue§
{
   import flash.display.DisplayObject;
   
   public class §true use set§
   {
      
      private var §switch catch break§:int;
      
      private var §5214233633233646123423632234§:int;
      
      private var §5214232225232238123423632234§:int;
      
      private var §do use for§:int;
      
      private var §5214235207235220123423632234§:int;
      
      public function §true use set§(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         this.§switch catch break§ = param1;
         this.§5214233633233646123423632234§ = param2;
         this.§5214232225232238123423632234§ = param3;
         this.§do use for§ = param4;
      }
      
      public function §final use var§(param1:Array) : int
      {
         var _loc2_:int = 0;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc3_:DisplayObject = null;
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            _loc5_ = param1[_loc4_];
            _loc6_ = 0;
            while(_loc6_ < _loc5_.length)
            {
               if(_loc5_[_loc6_] != null)
               {
                  _loc3_ = _loc5_[_loc6_];
                  _loc3_.x = this.§switch catch break§ + _loc6_ * this.§5214232225232238123423632234§;
                  _loc3_.y = this.§5214233633233646123423632234§ + _loc4_ * this.§do use for§ + this.§5214235207235220123423632234§ * _loc4_;
                  _loc2_ = _loc3_.y + _loc3_.height;
               }
               _loc6_++;
            }
            _loc4_++;
         }
         return _loc2_;
      }
   }
}

