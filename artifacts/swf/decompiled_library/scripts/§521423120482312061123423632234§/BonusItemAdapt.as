package §521423120482312061123423632234§
{
   import §5214238696238709123423632234§.§5214231187231200123423632234§;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class BonusItemAdapt implements BonusItem
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:BonusItem;
      
      public function BonusItemAdapt(param1:§521423120252312038123423632234§, param2:BonusItem)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function getItem() : §5214231187231200123423632234§
      {
         var _loc1_:§5214231187231200123423632234§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            _loc1_ = this.§extends class§.getItem();
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
   }
}

