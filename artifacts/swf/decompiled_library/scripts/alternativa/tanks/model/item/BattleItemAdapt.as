package alternativa.tanks.model.item
{
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class BattleItemAdapt implements §with package function§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:§with package function§;
      
      public function BattleItemAdapt(param1:§521423120252312038123423632234§, param2:§with package function§)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function onAddFriend(param1:String) : void
      {
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            this.§extends class§.onAddFriend(param1);
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function onDeleteFriend(param1:String) : void
      {
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            this.§extends class§.onDeleteFriend(param1);
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

