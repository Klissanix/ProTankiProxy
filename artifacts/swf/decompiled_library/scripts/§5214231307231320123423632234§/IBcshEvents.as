package §5214231307231320123423632234§
{
   import flash.filters.BitmapFilter;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class IBcshEvents implements §class set return§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:Vector.<Object>;
      
      public function IBcshEvents(param1:§521423120252312038123423632234§, param2:Vector.<Object>)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function createFilter(param1:String) : BitmapFilter
      {
         var _loc2_:BitmapFilter = null;
         var _loc3_:int = 0;
         var _loc4_:§class set return§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc7_:§521423120252312038123423632234§ = this.object;
            var _loc6_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc7_;
            _loc3_ = 0;
            while(_loc3_ < this.§extends class§.length)
            {
               _loc4_ = this.§extends class§[_loc3_] as §class set return§;
               _loc2_ = _loc4_.createFilter(param1);
               _loc3_++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return _loc2_;
      }
   }
}

