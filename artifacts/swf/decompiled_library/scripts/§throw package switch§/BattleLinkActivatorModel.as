package §throw package switch§
{
   import §521423106142310627123423632234§.AlertAnswer;
   import alternativa.osgi.service.locale.ILocaleService;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.BattleLinkActivatorServiceEvent;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.BattleLinkAliveEvent;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.IBattleLinkActivatorService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import §var use const§.§5214231675231688123423632234§;
   import §var use const§.LinkActivatorModelBase;
   
   public class BattleLinkActivatorModel extends LinkActivatorModelBase implements §5214231675231688123423632234§, §do set function§, §throw catch var§
   {
      
      public static var §5214231686231699123423632234§:IBattleLinkActivatorService;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      public static var §break use do§:IAlertService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §if catch include§:IStorageService;
      
      public static var §true switch package§:IUserPropertiesService;
      
      public function BattleLinkActivatorModel()
      {
         super();
      }
      
      public function battleNotFound() : void
      {
         var _loc1_:String = §true switch package§.userName;
         if(§if catch include§.getStorage().data.showAlertDeadBattle == _loc1_ + "_true")
         {
            §break use do§.showAlert(§5214236363236376123423632234§.getText("STRING_BATTLE_CANNOT_BE_FOUND_ALERT"),Vector.<String>([§5214236363236376123423632234§.getText(AlertAnswer.OK)]));
            §if catch include§.getStorage().data.showAlertDeadBattle = _loc1_ + "_false";
         }
      }
      
      public function dead(param1:String) : void
      {
         §5214231686231699123423632234§.dead(param1);
      }
      
      public function objectLoaded() : void
      {
         §5214231686231699123423632234§.addEventListener("BattleLinkActivatorServiceEvent.ACTIVATE_LINK",this.e436e2c6);
         §5214231686231699123423632234§.addEventListener("BattleLinkAliveEvent.IS_ALIVE",this.d736105);
      }
      
      public function objectUnloaded() : void
      {
         §5214231686231699123423632234§.removeEventListener("BattleLinkActivatorServiceEvent.ACTIVATE_LINK",this.e436e2c6);
         §5214231686231699123423632234§.removeEventListener("BattleLinkAliveEvent.IS_ALIVE",this.d736105);
      }
      
      private function e436e2c6(param1:BattleLinkActivatorServiceEvent) : void
      {
         if(!§continue for final§.isSwitchInProgress())
         {
            server.activateLink(param1.link);
         }
      }
      
      public function alive(param1:String) : void
      {
         §5214231686231699123423632234§.alive(param1);
      }
      
      private function d736105(param1:BattleLinkAliveEvent) : void
      {
         server.isAlive(param1.battleId);
      }
   }
}

