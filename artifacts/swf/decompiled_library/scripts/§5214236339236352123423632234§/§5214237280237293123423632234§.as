package §5214236339236352123423632234§
{
   import §5214235774235787123423632234§.§super var dynamic§;
   import alternativa.tanks.battle.§dynamic switch break§;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import flash.utils.getTimer;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   
   public class §5214237280237293123423632234§ implements §dynamic switch break§
   {
      
      public static var §continue for final§:ILobbyLayoutService;
      
      public static var §5214237923237936123423632234§:LocalTankInfoService;
      
      private var §521423712384123423632234§:§521423120252312038123423632234§;
      
      private var §const finally set§:int;
      
      public function §5214237280237293123423632234§(param1:int, param2:§521423120252312038123423632234§)
      {
         super();
         this.§521423712384123423632234§ = param2;
         this.§const finally set§ = getTimer() + param1;
      }
      
      public function §5214232290232303123423632234§(param1:§521423120252312038123423632234§) : void
      {
         this.§521423712384123423632234§ = param1;
      }
      
      public function runLogic(param1:int, param2:int) : void
      {
         var _loc3_:§super var dynamic§ = null;
         if(param1 >= this.§const finally set§ && !§continue for final§.isWindowOpenOverBattle() && !§continue for final§.isSwitchInProgress())
         {
            _loc3_ = §super var dynamic§(§5214237923237936123423632234§);
            _loc3_.§package var each§();
         }
      }
   }
}

