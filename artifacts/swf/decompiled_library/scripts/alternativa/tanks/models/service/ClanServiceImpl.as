package alternativa.tanks.models.service
{
   import §521423128372312850123423632234§.§continue§;
   import §5214231644231657123423632234§.§continue for case§;
   import §5214233242233255123423632234§.§null set native§;
   import §5214234825234838123423632234§.ConnectionCloseStatus;
   import §5214236935236948123423632234§.§true switch do§;
   import alternativa.tanks.service.panel.IPanelView;
   import flash.events.EventDispatcher;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class ClanServiceImpl extends EventDispatcher implements ClanService, §continue§
   {
      
      public static var §import use with§:IPanelView;
      
      private var §5214232203232216123423632234§:Vector.<String>;
      
      private var §5214231331231344123423632234§:String;
      
      private var §static for catch§:String;
      
      private var §5214237129237142123423632234§:String;
      
      private var §5214239378239391123423632234§:String;
      
      private var §do for try§:§521423120252312038123423632234§;
      
      private var §null var return§:Boolean;
      
      private var §with const override§:Boolean;
      
      private var §5214239400239413123423632234§:§continue for case§;
      
      private var §throw var in§:§null set native§;
      
      private var §5214232996233009123423632234§:int;
      
      private var §function switch finally§:int;
      
      private var §52142389023903123423632234§:Boolean;
      
      private var §get use catch§:int;
      
      public function ClanServiceImpl()
      {
         super();
      }
      
      public function get requestsEnabled() : Boolean
      {
         return this.§52142389023903123423632234§;
      }
      
      public function get creatorId() : String
      {
         return this.§5214239378239391123423632234§;
      }
      
      public function set requestsEnabled(param1:Boolean) : void
      {
         this.§52142389023903123423632234§ = param1;
      }
      
      public function set name(param1:String) : void
      {
         this.§5214231331231344123423632234§ = param1;
      }
      
      public function updateClanInfo(param1:String, param2:int, param3:§true switch do§, param4:Boolean) : void
      {
         dispatchEvent(new ClanServiceUpdateEvent("CreateClanServiceEvent.UPDATE",param1,param2,param3,param4));
      }
      
      public function get minRankForCreateClan() : int
      {
         return this.§5214232996233009123423632234§;
      }
      
      public function get isBlocked() : Boolean
      {
         return this.§with const override§;
      }
      
      public function set minRankForCreateClan(param1:int) : void
      {
         this.§5214232996233009123423632234§ = param1;
      }
      
      public function set maxCharactersDescription(param1:int) : void
      {
         this.§get use catch§ = param1;
      }
      
      public function get name() : String
      {
         return this.§5214231331231344123423632234§;
      }
      
      public function get tag() : String
      {
         return this.§static for catch§;
      }
      
      public function get creationDate() : String
      {
         return this.§5214237129237142123423632234§;
      }
      
      public function set isBlocked(param1:Boolean) : void
      {
         this.§with const override§ = param1;
      }
      
      public function get clanMembers() : Vector.<String>
      {
         return this.§5214232203232216123423632234§;
      }
      
      public function set creationDate(param1:String) : void
      {
         this.§5214237129237142123423632234§ = param1;
      }
      
      public function onConnectionClosed(param1:ConnectionCloseStatus) : void
      {
         this.clanMembers = new Vector.<String>();
      }
      
      public function set clanMembers(param1:Vector.<String>) : void
      {
         this.§5214232203232216123423632234§ = param1;
      }
      
      public function get membersCount() : int
      {
         return this.clanMembers.length;
      }
      
      public function get isSelf() : Boolean
      {
         return this.§null var return§;
      }
      
      public function objectUnloaded() : void
      {
         this.§do for try§ = null;
         this.§throw var in§.destroy();
      }
      
      public function set minRankForRequest(param1:int) : void
      {
         this.§function switch finally§ = param1;
      }
      
      public function set clanObject(param1:§521423120252312038123423632234§) : void
      {
         this.§do for try§ = param1;
         this.§throw var in§ = new §null set native§(this.§do for try§);
      }
      
      public function get clanManagementPanel() : §null set native§
      {
         return this.§throw var in§;
      }
      
      public function clanBlock(param1:String) : void
      {
         this.§with const override§ = true;
         dispatchEvent(new ClanServiceEvent("CreateClanServiceEvent.CLAN_BLOCK",param1));
      }
      
      public function set tag(param1:String) : void
      {
         this.§static for catch§ = param1;
      }
      
      public function get notInClanPanel() : §continue for case§
      {
         return this.§5214239400239413123423632234§;
      }
      
      public function set isSelf(param1:Boolean) : void
      {
         this.§null var return§ = param1;
      }
      
      public function maxMembers() : void
      {
         this.§throw var in§.§52142316723180123423632234§();
      }
      
      public function get clanObject() : §521423120252312038123423632234§
      {
         return this.§do for try§;
      }
      
      public function set creatorId(param1:String) : void
      {
         this.§5214239378239391123423632234§ = param1;
      }
      
      public function set notInClanPanel(param1:§continue for case§) : void
      {
         this.§5214239400239413123423632234§ = param1;
      }
      
      public function get minRankForRequest() : int
      {
         return this.§function switch finally§;
      }
      
      public function unloadMembers() : void
      {
         this.clanMembers = new Vector.<String>();
      }
      
      public function get maxCharactersDescription() : int
      {
         return this.§get use catch§;
      }
   }
}

