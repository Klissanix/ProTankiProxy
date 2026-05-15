package platform.client.fp10.core.model
{
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class IObjectLoadListenerEvents implements §5214235049235062123423632234§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:Vector.<Object>;
      
      public function IObjectLoadListenerEvents(param1:§521423120252312038123423632234§, param2:Vector.<Object>)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function objectUnloaded() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§5214235049235062123423632234§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc5_:§521423120252312038123423632234§ = this.object;
            var _loc4_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc5_;
            _loc1_ = 0;
            while(_loc1_ < this.§extends class§.length)
            {
               _loc2_ = this.§extends class§[_loc1_] as §5214235049235062123423632234§;
               _loc2_.objectUnloaded();
               _loc1_++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function objectLoadedPost() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§5214235049235062123423632234§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc5_:§521423120252312038123423632234§ = this.object;
            var _loc4_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc5_;
            _loc1_ = 0;
            while(_loc1_ < this.§extends class§.length)
            {
               _loc2_ = this.§extends class§[_loc1_] as §5214235049235062123423632234§;
               _loc2_.objectLoadedPost();
               _loc1_++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function objectLoaded() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§5214235049235062123423632234§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc5_:§521423120252312038123423632234§ = this.object;
            var _loc4_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc5_;
            _loc1_ = 0;
            while(_loc1_ < this.§extends class§.length)
            {
               _loc2_ = this.§extends class§[_loc1_] as §5214235049235062123423632234§;
               _loc2_.objectLoaded();
               _loc1_++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function objectUnloadedPost() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§5214235049235062123423632234§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc5_:§521423120252312038123423632234§ = this.object;
            var _loc4_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc5_;
            _loc1_ = 0;
            while(_loc1_ < this.§extends class§.length)
            {
               _loc2_ = this.§extends class§[_loc1_] as §5214235049235062123423632234§;
               _loc2_.objectUnloadedPost();
               _loc1_++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

