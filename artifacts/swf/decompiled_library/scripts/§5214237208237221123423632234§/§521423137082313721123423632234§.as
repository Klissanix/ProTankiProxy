package §5214237208237221123423632234§
{
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.math.Vector3;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class §521423137082313721123423632234§ implements §static set each§
   {
      
      private var §throw use true§:§521423120252312038123423632234§;
      
      private var §extends class§:Vector.<Object>;
      
      public function §521423137082313721123423632234§(param1:§521423120252312038123423632234§, param2:Vector.<Object>)
      {
         super();
         this.§throw use true§ = param1;
         this.§extends class§ = param2;
      }
      
      public function §with override§(param1:int, param2:int, param3:Vector3, param4:§5214239411239424123423632234§, param5:Vector3) : void
      {
         var _loc6_:int = 0;
         var _loc7_:§static set each§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc10_:§521423120252312038123423632234§ = this.§throw use true§;
            var _loc9_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc10_;
            _loc6_ = 0;
            while(_loc6_ < this.§extends class§.length)
            {
               _loc7_ = this.§extends class§[_loc6_] as §static set each§;
               _loc7_.§with override§(param1,param2,param3,param4,param5);
               _loc6_++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

