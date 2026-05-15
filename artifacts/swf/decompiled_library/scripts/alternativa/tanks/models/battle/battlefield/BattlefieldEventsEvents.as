package alternativa.tanks.models.battle.battlefield
{
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class BattlefieldEventsEvents implements §else catch switch§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:Vector.<Object>;
      
      public function BattlefieldEventsEvents(param1:§521423120252312038123423632234§, param2:Vector.<Object>)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function onBattleLoaded() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§else catch switch§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc5_:§521423120252312038123423632234§ = this.object;
            var _loc4_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc5_;
            _loc1_ = 0;
            while(_loc1_ < this.§extends class§.length)
            {
               _loc2_ = this.§extends class§[_loc1_] as §else catch switch§;
               _loc2_.onBattleLoaded();
               _loc1_++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

