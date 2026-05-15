package platform.client.fp10.core.model
{
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class IObjectLoadListenerAdapt implements §5214235049235062123423632234§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:§5214235049235062123423632234§;
      
      public function IObjectLoadListenerAdapt(param1:§521423120252312038123423632234§, param2:§5214235049235062123423632234§)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function objectLoadedPost() : void
      {
         try
         {
            var _temp_1:* = Model;
            var _loc3_:§521423120252312038123423632234§ = this.object;
            var _loc2_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc3_;
            this.§extends class§.objectLoadedPost();
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function objectUnloaded() : void
      {
         try
         {
            var _temp_1:* = Model;
            var _loc3_:§521423120252312038123423632234§ = this.object;
            var _loc2_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc3_;
            this.§extends class§.objectUnloaded();
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function objectLoaded() : void
      {
         try
         {
            var _temp_1:* = Model;
            var _loc3_:§521423120252312038123423632234§ = this.object;
            var _loc2_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc3_;
            this.§extends class§.objectLoaded();
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function objectUnloadedPost() : void
      {
         try
         {
            var _temp_1:* = Model;
            var _loc3_:§521423120252312038123423632234§ = this.object;
            var _loc2_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc3_;
            this.§extends class§.objectUnloadedPost();
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

