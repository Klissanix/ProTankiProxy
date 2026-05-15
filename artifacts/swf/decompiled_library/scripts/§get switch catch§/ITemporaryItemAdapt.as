package §get switch catch§
{
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class ITemporaryItemAdapt implements §catch§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:§catch§;
      
      public function ITemporaryItemAdapt(param1:§521423120252312038123423632234§, param2:§catch§)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function getTimeRemainingInMSec() : Number
      {
         var _loc1_:Number = NaN;
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            _loc1_ = this.§extends class§.getTimeRemainingInMSec();
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
      
      public function getStopDate() : Date
      {
         var _loc1_:Date = null;
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            _loc1_ = this.§extends class§.getStopDate();
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
      
      public function startTiming(param1:int) : void
      {
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            this.§extends class§.startTiming(param1);
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

