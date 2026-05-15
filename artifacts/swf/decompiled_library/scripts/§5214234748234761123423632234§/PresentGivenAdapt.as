package §5214234748234761123423632234§
{
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class PresentGivenAdapt implements §521423121342312147123423632234§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:§521423121342312147123423632234§;
      
      public function PresentGivenAdapt(param1:§521423120252312038123423632234§, param2:§521423121342312147123423632234§)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function removePresent(param1:int) : void
      {
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            this.§extends class§.removePresent(param1);
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

