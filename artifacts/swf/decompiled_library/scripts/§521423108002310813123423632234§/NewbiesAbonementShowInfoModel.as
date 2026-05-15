package §521423108002310813123423632234§
{
   import §5214233087233100123423632234§.§include catch with§;
   import §5214237327237340123423632234§.§function default§;
   import §5214237327237340123423632234§.§super var return§;
   import alternativa.tanks.gui.§try var if§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import §super var do§.LobbyLayoutServiceEvent;
   import §switch package extends§.NewbiesAbonementInfoWindow;
   
   public class NewbiesAbonementShowInfoModel extends §super var return§ implements §function default§, §throw catch var§
   {
      
      public static var §continue for final§:ILobbyLayoutService;
      
      private var §5214231647231660123423632234§:Date;
      
      private var §if import§:int;
      
      private var §5214238208238221123423632234§:int;
      
      private var image:§include catch with§;
      
      public function NewbiesAbonementShowInfoModel()
      {
         super();
      }
      
      public function showInfoWindow(param1:int, param2:int, param3:int, param4:§include catch with§) : void
      {
         this.§5214231647231660123423632234§ = new Date(new Date().getTime() + param1 * 1000);
         this.§if import§ = param2;
         this.§5214238208238221123423632234§ = param3;
         this.image = param4;
         if(§continue for final§.isSwitchInProgress() || §continue for final§.getCurrentState() == LayoutState.BATTLE)
         {
            this.b4c1c956();
         }
         else
         {
            this.d1a0870a();
         }
      }
      
      private function d1a0870a() : void
      {
         var _loc1_:§try var if§ = null;
         _loc1_ = new NewbiesAbonementInfoWindow(this.§5214231647231660123423632234§,this.§if import§,this.§5214238208238221123423632234§,this.image);
      }
      
      private function b2914900(param1:LobbyLayoutServiceEvent) : void
      {
         if(param1.state != LayoutState.BATTLE)
         {
            §continue for final§.removeEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",this.b2914900);
            this.d1a0870a();
         }
      }
      
      public function objectUnloaded() : void
      {
         §continue for final§.removeEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",getFunctionWrapper(this.b2914900));
         var _loc1_:§try var if§ = §try var if§(getData(§try var if§));
         if(_loc1_ != null)
         {
            _loc1_.destroy();
         }
      }
      
      private function b4c1c956() : void
      {
         §continue for final§.addEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",this.b2914900);
      }
   }
}

