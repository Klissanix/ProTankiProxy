package §dynamic for switch§
{
   import §override catch default§.Long;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class IModificationAdapt implements §521423107332310746123423632234§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:§521423107332310746123423632234§;
      
      public function IModificationAdapt(param1:§521423120252312038123423632234§, param2:§521423107332310746123423632234§)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function getModificationIndex() : int
      {
         var _loc1_:int = 0;
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            _loc1_ = this.§extends class§.getModificationIndex();
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
      
      public function getBaseItemId() : Long
      {
         var _loc1_:Long = null;
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            _loc1_ = this.§extends class§.getBaseItemId();
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
   }
}

