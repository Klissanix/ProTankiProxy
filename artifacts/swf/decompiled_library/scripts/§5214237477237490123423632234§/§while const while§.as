package §5214237477237490123423632234§
{
   import §5214233087233100123423632234§.§include catch with§;
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §while const while§
   {
      
      private static const §5214235741235754123423632234§:int = 210;
      
      private static const §521423120032312016123423632234§:int = 29;
      
      private const §521423102012310214123423632234§:Object = {};
      
      public function §while const while§()
      {
         super();
      }
      
      private static function §521423131122313125123423632234§(param1:§include catch with§, param2:§include catch with§, param3:§include catch with§) : BitmapData
      {
         var _loc9_:int = 0;
         var _loc4_:BitmapData = param1.data;
         var _loc5_:BitmapData = param2.data;
         var _loc6_:BitmapData = param3.data;
         var _loc8_:BitmapData = new BitmapData(210 * 29,210,true,0);
         var _loc7_:String = "normal";
         _loc9_ = 1;
         while(_loc9_ < 29)
         {
            §521423113442311357123423632234§(_loc4_,_loc8_,_loc9_,210,_loc7_);
            §5214238111238124123423632234§(_loc5_,_loc8_,_loc9_,210,_loc7_);
            §5214234838234851123423632234§(_loc6_,_loc8_,_loc9_,210,_loc7_);
            _loc9_++;
         }
         return _loc8_;
      }
      
      private static function §5214238111238124123423632234§(param1:BitmapData, param2:BitmapData, param3:int, param4:int, param5:String) : void
      {
         var _loc7_:ColorTransform = new ColorTransform();
         if(param3 < 5)
         {
            _loc7_.alphaMultiplier = param3 / 5;
         }
         else if(param3 < 25)
         {
            _loc7_.alphaMultiplier = 1;
         }
         else
         {
            _loc7_.alphaMultiplier = 1 - (param3 - 24) / 5;
         }
         var _loc6_:Matrix = new Matrix();
         _loc6_.translate(-0.5 * param1.width,-0.5 * param1.height);
         _loc6_.rotate(2 * param3 * 3.141592653589793 / 180);
         _loc6_.translate((param3 - 1) * param4 + 0.5 * param4,0.5 * param4);
         param2.draw(param1,_loc6_,_loc7_,param5,null,true);
      }
      
      private static function §521423113442311357123423632234§(param1:BitmapData, param2:BitmapData, param3:int, param4:int, param5:String) : void
      {
         var _loc7_:ColorTransform = new ColorTransform();
         if(param3 < 14)
         {
            _loc7_.alphaMultiplier = param3 / 14;
         }
         else if(param3 < 25)
         {
            _loc7_.alphaMultiplier = 1;
         }
         else
         {
            _loc7_.alphaMultiplier = 1 - (param3 - 24) / 5;
         }
         var _loc6_:Matrix = new Matrix();
         _loc6_.tx = (param3 - 1) * param4 + 0.5 * (param4 - param1.width);
         _loc6_.ty = 0.5 * (param4 - param1.height);
         param2.draw(param1,_loc6_,_loc7_,param5,null,true);
      }
      
      private static function §5214234838234851123423632234§(param1:BitmapData, param2:BitmapData, param3:int, param4:int, param5:String) : void
      {
         var _loc7_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc9_:ColorTransform = new ColorTransform();
         if(param3 < 24)
         {
            _loc7_ = param3 / 24;
            _loc9_.alphaMultiplier = _loc7_;
            _loc6_ = 0.4 + 0.6 * _loc7_;
         }
         else if(param3 < 25)
         {
            _loc9_.alphaMultiplier = 1;
            _loc6_ = 1;
         }
         else
         {
            _loc7_ = 1 - (param3 - 24) / 5;
            _loc9_.alphaMultiplier = _loc7_;
            _loc6_ = 0.2 + 0.8 * _loc7_;
         }
         var _loc8_:Matrix = new Matrix();
         _loc8_.translate(-0.5 * param1.width,-0.5 * param1.height);
         _loc8_.scale(_loc6_,_loc6_);
         _loc8_.rotate(2 * -param3 * 3.141592653589793 / 180);
         _loc8_.translate((param3 - 1) * param4 + 0.5 * param4,0.5 * param4);
         param2.draw(param1,_loc8_,_loc9_,param5,null,true);
      }
      
      private static function §finally const in§(param1:§include catch with§, param2:§include catch with§, param3:§include catch with§) : String
      {
         var _loc4_:§include catch with§ = param1;
         var _loc5_:§include catch with§;
         var _loc6_:§include catch with§;
         return _loc4_.§5214239618239631123423632234§.id.toString() + "_" + (_loc5_ = param2).§5214239618239631123423632234§.id.toString() + "_" + (_loc6_ = param3).§5214239618239631123423632234§.id.toString();
      }
      
      public function §null package true§(param1:§include catch with§, param2:§include catch with§, param3:§include catch with§) : void
      {
         var _loc5_:String = §finally const in§(param1,param2,param3);
         var _loc4_:§if switch break§ = this.§521423102012310214123423632234§[_loc5_];
         if(_loc4_ != null)
         {
            --_loc4_.§if switch false§;
            if(_loc4_.§if switch false§ == 0)
            {
               _loc4_.§package catch package§.dispose();
               delete this.§521423102012310214123423632234§[_loc5_];
            }
         }
      }
      
      public function §5214239726239739123423632234§(param1:§include catch with§, param2:§include catch with§, param3:§include catch with§) : BitmapData
      {
         var _loc4_:§if switch break§ = this.§catch const default§(param1,param2,param3);
         ++_loc4_.§if switch false§;
         return _loc4_.§package catch package§;
      }
      
      private function §catch const default§(param1:§include catch with§, param2:§include catch with§, param3:§include catch with§) : §if switch break§
      {
         var _loc5_:String = §finally const in§(param1,param2,param3);
         var _loc4_:§if switch break§ = this.§521423102012310214123423632234§[_loc5_];
         if(_loc4_ == null)
         {
            _loc4_ = new §if switch break§();
            _loc4_.§package catch package§ = §521423131122313125123423632234§(param1,param2,param3);
            this.§521423102012310214123423632234§[_loc5_] = _loc4_;
         }
         return _loc4_;
      }
   }
}

