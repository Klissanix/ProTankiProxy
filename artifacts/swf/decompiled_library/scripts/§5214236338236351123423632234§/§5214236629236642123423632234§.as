package §5214236338236351123423632234§
{
   import flash.geom.Rectangle;
   
   public class §5214236629236642123423632234§
   {
      
      public var §52142369723710123423632234§:Vector.<Rectangle>;
      
      private var §continue each§:Number;
      
      private var §import set default§:Number;
      
      public function §5214236629236642123423632234§(param1:Number, param2:Number, param3:Number = 0)
      {
         super();
         §continue each§ = param1;
         §import set default§ = param2;
         §52142369723710123423632234§ = new <Rectangle>[new Rectangle(0,param3,param1,param2)];
      }
      
      public function §52142394423957123423632234§(param1:Number, param2:Number) : Rectangle
      {
         var _temp_1:* = param1;
         var _loc13_:Number = param2;
         var _loc9_:Number = _temp_1;
         var _loc6_:* = 2147483647;
         var _loc11_:Rectangle = new flash.geom.Rectangle();
         var _loc10_:int = 0;
         var _loc12_:int = int(this.§52142369723710123423632234§.length);
         while(_loc10_ < _loc12_)
         {
            var _loc7_:Rectangle = this.§52142369723710123423632234§[_loc10_];
            if(_loc7_.width >= _loc9_ && _loc7_.height >= _loc13_)
            {
               var _loc8_:Number = _loc7_.width * _loc7_.height - _loc9_ * _loc13_;
               if(_loc8_ < _loc6_)
               {
                  _loc11_.x = _loc7_.x;
                  _loc11_.y = _loc7_.y;
                  _loc11_.width = _loc9_;
                  _loc11_.height = _loc13_;
                  _loc6_ = int(_loc8_);
               }
            }
            _loc10_++;
         }
         var _loc5_:Rectangle = _loc11_;
         if(_loc5_.height == 0)
         {
            return null;
         }
         var _loc3_:int = int(§52142369723710123423632234§.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(§5214232531232544123423632234§(§52142369723710123423632234§[_loc4_],_loc5_))
            {
               §52142369723710123423632234§.removeAt(_loc4_);
               _loc3_--;
               _loc4_--;
            }
            _loc4_++;
         }
         §5214238430238443123423632234§();
         return _loc5_;
      }
      
      final private function §5214237748237761123423632234§(param1:Rectangle, param2:Rectangle) : Boolean
      {
         return param1.x >= param2.x && param1.y >= param2.y && param1.x + param1.width <= param2.x + param2.width && param1.y + param1.height <= param2.y + param2.height;
      }
      
      private function §5214232531232544123423632234§(param1:Rectangle, param2:Rectangle) : Boolean
      {
         var _loc3_:Rectangle = null;
         if(param2.x >= param1.x + param1.width || param2.x + param2.width <= param1.x || param2.y >= param1.y + param1.height || param2.y + param2.height <= param1.y)
         {
            return false;
         }
         if(param2.x < param1.x + param1.width && param2.x + param2.width > param1.x)
         {
            if(param2.y > param1.y && param2.y < param1.y + param1.height)
            {
               _loc3_ = param1.clone();
               _loc3_.height = param2.y - _loc3_.y;
               §52142369723710123423632234§[§52142369723710123423632234§.length] = _loc3_;
            }
            if(param2.y + param2.height < param1.y + param1.height)
            {
               _loc3_ = param1.clone();
               _loc3_.y = param2.y + param2.height;
               _loc3_.height = param1.y + param1.height - (param2.y + param2.height);
               §52142369723710123423632234§[§52142369723710123423632234§.length] = _loc3_;
            }
         }
         if(param2.y < param1.y + param1.height && param2.y + param2.height > param1.y)
         {
            if(param2.x > param1.x && param2.x < param1.x + param1.width)
            {
               _loc3_ = param1.clone();
               _loc3_.width = param2.x - _loc3_.x;
               §52142369723710123423632234§[§52142369723710123423632234§.length] = _loc3_;
            }
            if(param2.x + param2.width < param1.x + param1.width)
            {
               _loc3_ = param1.clone();
               _loc3_.x = param2.x + param2.width;
               _loc3_.width = param1.x + param1.width - (param2.x + param2.width);
               §52142369723710123423632234§[§52142369723710123423632234§.length] = _loc3_;
            }
         }
         return true;
      }
      
      final private function §implements const switch§(param1:Number, param2:Number) : Rectangle
      {
         var _loc5_:Number = NaN;
         var _loc4_:Rectangle = null;
         var _loc6_:int = 0;
         var _loc8_:int = 0;
         var _loc3_:* = 2147483647;
         var _loc7_:Rectangle = new Rectangle();
         _loc6_ = 0;
         _loc8_ = int(§52142369723710123423632234§.length);
         while(_loc6_ < _loc8_)
         {
            _loc4_ = §52142369723710123423632234§[_loc6_];
            if(_loc4_.width >= param1 && _loc4_.height >= param2)
            {
               _loc5_ = _loc4_.width * _loc4_.height - param1 * param2;
               if(_loc5_ < _loc3_)
               {
                  _loc7_.x = _loc4_.x;
                  _loc7_.y = _loc4_.y;
                  _loc7_.width = param1;
                  _loc7_.height = param2;
                  _loc3_ = int(_loc5_);
               }
            }
            _loc6_++;
         }
         return _loc7_;
      }
      
      private function §5214238430238443123423632234§() : void
      {
         var _loc5_:Rectangle = null;
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = int(§52142369723710123423632234§.length);
         while(_loc3_ < _loc1_)
         {
            _loc4_ = _loc3_ + 1;
            _loc5_ = §52142369723710123423632234§[_loc3_];
            while(_loc4_ < _loc1_)
            {
               _loc2_ = §52142369723710123423632234§[_loc4_];
               var _temp_5:* = _loc5_;
               var _loc7_:Rectangle = _loc2_;
               var _loc6_:Rectangle = _temp_5;
               if(§§pop().x >= _loc7_.x && _loc6_.y >= _loc7_.y && _loc6_.x + _loc6_.width <= _loc7_.x + _loc7_.width && _loc6_.y + _loc6_.height <= _loc7_.y + _loc7_.height)
               {
                  §52142369723710123423632234§.removeAt(_loc3_);
                  _loc3_--;
                  _loc1_--;
                  break;
               }
               var _temp_9:* = _loc2_;
               var _loc9_:Rectangle = _loc5_;
               var _loc8_:Rectangle = _temp_9;
               if(§§pop().x >= _loc9_.x && _loc8_.y >= _loc9_.y && _loc8_.x + _loc8_.width <= _loc9_.x + _loc9_.width && _loc8_.y + _loc8_.height <= _loc9_.y + _loc9_.height)
               {
                  §52142369723710123423632234§.removeAt(_loc4_);
                  _loc1_--;
                  _loc4_--;
               }
               _loc4_++;
            }
            _loc3_++;
         }
      }
   }
}

