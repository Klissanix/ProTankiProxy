package §5214238876238889123423632234§
{
   import §5214231817231830123423632234§.§5214233863233876123423632234§;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class §5214233651233664123423632234§ implements §try use continue§
   {
      
      private var §throw use true§:§521423120252312038123423632234§;
      
      private var §extends class§:Vector.<Object>;
      
      public function §5214233651233664123423632234§(param1:§521423120252312038123423632234§, param2:Vector.<Object>)
      {
         super();
         this.§throw use true§ = param1;
         this.§extends class§ = param2;
      }
      
      public function getResource3DS() : §5214233863233876123423632234§
      {
         var _loc1_:§5214233863233876123423632234§ = null;
         var _loc2_:int = 0;
         var _loc3_:§try use continue§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc6_:§521423120252312038123423632234§ = this.§throw use true§;
            var _loc5_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc6_;
            _loc2_ = 0;
            while(_loc2_ < this.§extends class§.length)
            {
               _loc3_ = this.§extends class§[_loc2_] as §try use continue§;
               _loc1_ = _loc3_.getResource3DS();
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

