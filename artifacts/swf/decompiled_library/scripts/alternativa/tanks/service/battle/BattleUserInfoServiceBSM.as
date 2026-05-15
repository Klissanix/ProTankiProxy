package alternativa.tanks.service.battle
{
   import flash.utils.Dictionary;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class BattleUserInfoServiceBSM implements IBattleUserInfoService
   {
      
      private var §521423106552310668123423632234§:Dictionary;
      
      public function BattleUserInfoServiceBSM()
      {
         super();
         this.§521423106552310668123423632234§ = new Dictionary();
      }
      
      public function connect(param1:String, param2:§521423120252312038123423632234§) : void
      {
         this.§521423106552310668123423632234§[param1] = param2;
      }
      
      public function disconnect(param1:String) : void
      {
         delete this.§521423106552310668123423632234§[param1];
      }
      
      public function userInBattle(param1:String) : Boolean
      {
         return param1 in this.§521423106552310668123423632234§;
      }
      
      public function deleteBattleItem(param1:§521423120252312038123423632234§) : void
      {
         var _loc3_:§521423120252312038123423632234§ = null;
         for(var _loc2_ in this.§521423106552310668123423632234§)
         {
            _loc3_ = this.§521423106552310668123423632234§[_loc2_];
            if(_loc3_ == param1)
            {
               this.disconnect(_loc2_);
            }
         }
      }
      
      public function getBattle(param1:String) : §521423120252312038123423632234§
      {
         return this.§521423106552310668123423632234§[param1];
      }
   }
}

