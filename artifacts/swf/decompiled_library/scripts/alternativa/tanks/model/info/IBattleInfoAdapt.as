package alternativa.tanks.model.info
{
   import §5214233087233100123423632234§.§include catch with§;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.client.battleselect.model.info.BattleInfoCC;
   
   public class IBattleInfoAdapt implements §5214234313234326123423632234§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:§5214234313234326123423632234§;
      
      public function IBattleInfoAdapt(param1:§521423120252312038123423632234§, param2:§5214234313234326123423632234§)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function getConstructor() : BattleInfoCC
      {
         var _loc1_:BattleInfoCC = null;
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            _loc1_ = this.§extends class§.getConstructor();
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
   }
}

