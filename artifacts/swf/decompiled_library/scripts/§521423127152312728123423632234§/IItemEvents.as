package §521423127152312728123423632234§
{
   import §5214233087233100123423632234§.§include catch with§;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class IItemEvents implements §5214235968235981123423632234§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:Vector.<Object>;
      
      public function IItemEvents(param1:§521423120252312038123423632234§, param2:Vector.<Object>)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function getMaxRank() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:§5214235968235981123423632234§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc6_:§521423120252312038123423632234§ = this.object;
            var _loc5_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc6_;
            _loc2_ = 0;
            while(_loc2_ < this.§extends class§.length)
            {
               _loc3_ = this.§extends class§[_loc2_] as §5214235968235981123423632234§;
               _loc1_ = _loc3_.getMaxRank();
               _loc2_++;
            }
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
         var _loc2_:int = 0;
         var _loc3_:§5214235968235981123423632234§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc6_:§521423120252312038123423632234§ = this.object;
            var _loc5_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc6_;
            _loc2_ = 0;
            while(_loc2_ < this.§extends class§.length)
            {
               _loc3_ = this.§extends class§[_loc2_] as §5214235968235981123423632234§;
               _loc1_ = _loc3_.getPosition();
               _loc2_++;
            }
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
         var _loc2_:int = 0;
         var _loc3_:§5214235968235981123423632234§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc6_:§521423120252312038123423632234§ = this.object;
            var _loc5_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc6_;
            _loc2_ = 0;
            while(_loc2_ < this.§extends class§.length)
            {
               _loc3_ = this.§extends class§[_loc2_] as §5214235968235981123423632234§;
               _loc1_ = _loc3_.getPreviewResource();
               _loc2_++;
            }
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
         var _loc2_:int = 0;
         var _loc3_:§5214235968235981123423632234§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc6_:§521423120252312038123423632234§ = this.object;
            var _loc5_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc6_;
            _loc2_ = 0;
            while(_loc2_ < this.§extends class§.length)
            {
               _loc3_ = this.§extends class§[_loc2_] as §5214235968235981123423632234§;
               _loc1_ = _loc3_.getMinRank();
               _loc2_++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
   }
}

