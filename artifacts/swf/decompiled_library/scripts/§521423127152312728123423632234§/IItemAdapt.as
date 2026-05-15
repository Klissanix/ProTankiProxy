package §521423127152312728123423632234§
{
   import §5214233087233100123423632234§.§include catch with§;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class IItemAdapt implements §5214235968235981123423632234§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:§5214235968235981123423632234§;
      
      public function IItemAdapt(param1:§521423120252312038123423632234§, param2:§5214235968235981123423632234§)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function getMaxRank() : int
      {
         var _loc1_:int = 0;
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            _loc1_ = this.§extends class§.getMaxRank();
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
      
      public function getPreviewResource() : §include catch with§
      {
         var _loc1_:§include catch with§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            _loc1_ = this.§extends class§.getPreviewResource();
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
      
      public function getMinRank() : int
      {
         var _loc1_:int = 0;
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            _loc1_ = this.§extends class§.getMinRank();
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
      
      public function getPosition() : int
      {
         var _loc1_:int = 0;
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            _loc1_ = this.§extends class§.getPosition();
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
   }
}

