package alternativa.tanks.model.garage
{
   import flash.display.BitmapData;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class IPurchaseConfirmEvents implements §5214233988234001123423632234§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:Vector.<Object>;
      
      public function IPurchaseConfirmEvents(param1:§521423120252312038123423632234§, param2:Vector.<Object>)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function showConfirmAlert(param1:String, param2:int, param3:BitmapData, param4:Boolean, param5:int, param6:int = -1, param7:Boolean = false) : void
      {
         var _loc8_:int = 0;
         var _loc9_:§5214233988234001123423632234§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc12_:§521423120252312038123423632234§ = this.object;
            var _loc11_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc12_;
            _loc8_ = 0;
            while(_loc8_ < this.§extends class§.length)
            {
               _loc9_ = this.§extends class§[_loc8_] as §5214233988234001123423632234§;
               _loc9_.showConfirmAlert(param1,param2,param3,param4,param5,param6 = -1,param7 = false);
               _loc8_++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

