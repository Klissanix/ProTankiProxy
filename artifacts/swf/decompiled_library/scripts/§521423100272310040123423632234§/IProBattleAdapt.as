package §521423100272310040123423632234§
{
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class IProBattleAdapt implements §5214236663236676123423632234§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:§5214236663236676123423632234§;
      
      public function IProBattleAdapt(param1:§521423120252312038123423632234§, param2:§5214236663236676123423632234§)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function getTimeLeftInSec() : int
      {
         var _loc1_:int = 0;
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            _loc1_ = this.§extends class§.getTimeLeftInSec();
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
      
      public function getEnterPrice() : int
      {
         var _loc1_:int = 0;
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            _loc1_ = this.§extends class§.getEnterPrice();
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
   }
}

