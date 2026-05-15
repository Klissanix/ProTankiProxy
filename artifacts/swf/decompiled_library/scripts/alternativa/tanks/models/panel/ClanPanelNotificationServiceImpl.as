package alternativa.tanks.models.panel
{
   import alternativa.tanks.service.clan.ClanPanelNotificationEvent;
   import alternativa.tanks.service.clan.ClanPanelNotificationService;
   import alternativa.tanks.service.panel.IPanelView;
   import flash.events.EventDispatcher;
   import flash.utils.setTimeout;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.RestrictionJoinClanEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   
   public class ClanPanelNotificationServiceImpl extends EventDispatcher implements ClanPanelNotificationService
   {
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      public static var panel:IPanelView;
      
      private var §const catch while§:int = 0;
      
      private var §if const continue§:int;
      
      private var §521423111972311210123423632234§:Boolean;
      
      public function ClanPanelNotificationServiceImpl()
      {
         super();
      }
      
      private function d2ea3852() : void
      {
         this.§if const continue§ = 0;
         dispatchEvent(new RestrictionJoinClanEvent("RestrictionJoinClanEvent.UPDATE"));
      }
      
      public function remove() : void
      {
         --this.§const catch while§;
         if(this.§const catch while§ < 0)
         {
            this.§const catch while§ = 0;
         }
         this.c1a7364f();
      }
      
      public function get clanButtonVisible() : Boolean
      {
         return this.§521423111972311210123423632234§;
      }
      
      public function add() : void
      {
         ++this.§const catch while§;
         this.c1a7364f();
      }
      
      public function numberNotification() : int
      {
         return this.§const catch while§;
      }
      
      private function c1a7364f() : void
      {
         dispatchEvent(new ClanPanelNotificationEvent("ClanPanelNotificationEvent.UPDATE",this.§const catch while§));
      }
      
      public function set clanButtonVisible(param1:Boolean) : void
      {
         this.§521423111972311210123423632234§ = param1;
         if(panel.getPanel() != null)
         {
            if(this.§521423111972311210123423632234§)
            {
               panel.getPanel().§521423117142311727123423632234§.§null set override§();
            }
            else
            {
               panel.getPanel().§521423117142311727123423632234§.§in set import§();
            }
         }
      }
      
      public function get restrictionTimeJoinClanInSec() : int
      {
         return this.§if const continue§;
      }
      
      public function init(param1:int) : void
      {
         this.§const catch while§ = param1;
         this.c1a7364f();
      }
      
      public function set restrictionTimeJoinClanInSec(param1:int) : void
      {
         this.§if const continue§ = param1;
         dispatchEvent(new RestrictionJoinClanEvent("RestrictionJoinClanEvent.UPDATE"));
         if(param1 > 0)
         {
            setTimeout(this.d2ea3852,param1 * 1000);
         }
      }
   }
}

