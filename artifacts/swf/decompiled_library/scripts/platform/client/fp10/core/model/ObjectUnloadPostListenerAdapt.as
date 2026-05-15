package platform.client.fp10.core.model
{
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class ObjectUnloadPostListenerAdapt implements §import use const§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:§import use const§;
      
      public function ObjectUnloadPostListenerAdapt(param1:§521423120252312038123423632234§, param2:§import use const§)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
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

