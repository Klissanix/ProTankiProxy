package §5214231307231320123423632234§
{
   import flash.filters.BitmapFilter;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class IBcshAdapt implements §class set return§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:§class set return§;
      
      public function IBcshAdapt(param1:§521423120252312038123423632234§, param2:§class set return§)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function createFilter(param1:String) : BitmapFilter
      {
         var _loc2_:BitmapFilter = null;
         try
         {
            var _temp_1:* = Model;
            var _loc5_:§521423120252312038123423632234§ = this.object;
            var _loc4_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc5_;
            _loc2_ = this.§extends class§.createFilter(param1);
         }
         finally
         {
            Model.popObject();
         }
         return _loc2_;
      }
   }
}

