package §5214238968238981123423632234§
{
   import §5214239175239188123423632234§.LobbyLayoutNotifyModelBase;
   import §5214239175239188123423632234§.§use switch break§;
   import alternativa.tanks.loader.ILoaderWindowService;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import §super var do§.LobbyLayoutService;
   import §super var do§.LobbyLayoutServiceEvent;
   
   public class LobbyLayoutNotifyModel extends LobbyLayoutNotifyModelBase implements §use switch break§, §implements for function§
   {
      
      public static var §continue for final§:ILobbyLayoutService;
      
      public static var §521423101112310124123423632234§:ILoaderWindowService;
      
      private var §implements set switch§:uint;
      
      private var §521423136012313614123423632234§:Boolean = false;
      
      private var §static const for§:LayoutState;
      
      private var §5214236508236521123423632234§:LayoutState;
      
      private var §get use function§:Boolean;
      
      public function LobbyLayoutNotifyModel()
      {
         super();
      }
      
      private function b9a2325() : void
      {
         §521423101112310124123423632234§.unlockLoaderWindow();
         §521423101112310124123423632234§.showLoaderWindow();
      }
      
      public function beginLayoutSwitch(param1:LayoutState) : void
      {
         if(param1 != null)
         {
            this.§5214236508236521123423632234§ = param1;
         }
         if(this.§static const for§ == LayoutState.BATTLE_SELECT && param1 == LayoutState.BATTLE)
         {
            this.§get use function§ = true;
         }
         this.f56c4405();
      }
      
      public function getCurrentState() : LayoutState
      {
         return this.§5214236508236521123423632234§;
      }
      
      public function layoutSwitchPredicted() : void
      {
         this.f56c4405();
      }
      
      public function endLayoutSwitch(param1:LayoutState, param2:LayoutState) : void
      {
         this.§static const for§ = param1;
         this.§5214236508236521123423632234§ = param2;
         this.b12bc6c4();
      }
      
      public function isSwitchInProgress() : Boolean
      {
         return this.§521423136012313614123423632234§;
      }
      
      public function inBattle() : Boolean
      {
         return this.§static const for§ == LayoutState.BATTLE;
      }
      
      private function c4dc517e() : void
      {
         §521423101112310124123423632234§.lockLoaderWindow();
         §521423101112310124123423632234§.hideLoaderWindow();
      }
      
      private function f56c4405() : void
      {
         var _loc1_:LobbyLayoutService = null;
         if(!this.§521423136012313614123423632234§)
         {
            this.§521423136012313614123423632234§ = true;
            _loc1_ = LobbyLayoutService(§continue for final§);
            clearTimeout(this.§implements set switch§);
            this.§implements set switch§ = setTimeout(this.b9a2325,600);
            _loc1_.dispatchEvent(new LobbyLayoutServiceEvent("LobbyLayoutServiceEvent.BEGIN_LAYOUT_SWITCH",this.§5214236508236521123423632234§));
         }
      }
      
      private function b12bc6c4() : void
      {
         if(this.§521423136012313614123423632234§)
         {
            this.§521423136012313614123423632234§ = false;
            clearTimeout(this.§implements set switch§);
            §continue for final§.dispatchEvent(new LobbyLayoutServiceEvent("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",this.§5214236508236521123423632234§));
            this.c4dc517e();
         }
      }
      
      public function cancelPredictedLayoutSwitch() : void
      {
         this.b12bc6c4();
      }
   }
}

