package §5214236558236571123423632234§
{
   import §521423832396123423632234§.§5214234734234747123423632234§;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class §class var while§ implements §5214235818235831123423632234§
   {
      
      private var §throw use true§:§521423120252312038123423632234§;
      
      private var §extends class§:Vector.<Object>;
      
      public function §class var while§(param1:§521423120252312038123423632234§, param2:Vector.<Object>)
      {
         super();
         this.§throw use true§ = param1;
         this.§extends class§ = param2;
      }
      
      public function §5214233236233249123423632234§(param1:String, param2:§5214234734234747123423632234§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§5214235818235831123423632234§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc7_:§521423120252312038123423632234§ = this.§throw use true§;
            var _loc6_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc7_;
            _loc3_ = 0;
            while(_loc3_ < this.§extends class§.length)
            {
               _loc4_ = this.§extends class§[_loc3_] as §5214235818235831123423632234§;
               _loc4_.§5214233236233249123423632234§(param1,param2);
               _loc3_++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

