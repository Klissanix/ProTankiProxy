package §5214238576238589123423632234§
{
   import §521423133592313372123423632234§.DateFormatter;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.models.panel.create.service.ClanCreateService;
   import alternativa.tanks.models.service.ClanService;
   import alternativa.tanks.models.service.ClanServiceEvent;
   import alternativa.tanks.models.service.ClanServiceUpdateEvent;
   import §const const function§.§case catch in§;
   import §const const function§.§case import§;
   import §const const function§.§var finally use§;
   import flash.events.Event;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.model.§throw catch var§;
   
   public class §521423122142312227123423632234§ extends §case catch in§ implements §case import§, §521423128552312868123423632234§, §do set function§, §throw catch var§
   {
      
      public static var §const for import§:ClanService;
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §5214239670239683123423632234§:ClanCreateService;
      
      private var §var catch import§:String;
      
      public function §521423122142312227123423632234§()
      {
         super();
      }
      
      public function objectUnloaded() : void
      {
         §const for import§.unloadMembers();
         §const for import§.isSelf = false;
         §const for import§.removeEventListener("CreateClanServiceEvent.UPDATE",getFunctionWrapper(this.§break var in§));
         §const for import§.removeEventListener("CreateClanServiceEvent.CLAN_BLOCK",getFunctionWrapper(this.§5214236836236849123423632234§));
      }
      
      public function §in switch set§() : String
      {
         return §switch var switch§().§extends set case§;
      }
      
      private function §5214236836236849123423632234§(param1:ClanServiceEvent) : void
      {
         putData(Boolean,true);
         putData(String,param1.§get use in§);
      }
      
      public function objectLoaded() : void
      {
         §const for import§.addEventListener("CreateClanServiceEvent.UPDATE",getFunctionWrapper(this.§break var in§));
         var _loc1_:§var finally use§ = §switch var switch§();
         var _loc2_:Date = new Date(_loc1_.§var var static§);
         §const for import§.clanMembers = _loc1_.§else use while§.concat();
         §const for import§.name = _loc1_.§extends set case§;
         §const for import§.tag = _loc1_.§with set false§;
         §const for import§.minRankForRequest = _loc1_.§5214237841237854123423632234§;
         §const for import§.creatorId = _loc1_.§super for for§;
         §const for import§.creationDate = DateFormatter.formatDateToLocalized(_loc2_);
         §const for import§.isSelf = _loc1_.§5214239243239256123423632234§;
         putData(Boolean,_loc1_.§5214236305236318123423632234§);
         putData(String,_loc1_.§521423114802311493123423632234§);
         §const for import§.isBlocked = _loc1_.§5214236305236318123423632234§;
         §const for import§.requestsEnabled = _loc1_.§break const default§;
         §const for import§.maxCharactersDescription = _loc1_.§5214233516233529123423632234§;
         this.§var catch import§ = _loc1_.§var catch import§;
         §const for import§.addEventListener("CreateClanServiceEvent.CLAN_BLOCK",getFunctionWrapper(this.§5214236836236849123423632234§));
         §false switch use§.§521423119272311940123423632234§().dispatchEvent(new Event("ClanInfoDelayed." + platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.id.toString()));
      }
      
      public function §521423110742311087123423632234§() : int
      {
         return §switch var switch§().§else use while§.length;
      }
      
      public function §do var include§() : String
      {
         return §switch var switch§().§with set false§;
      }
      
      public function §break const default§() : Boolean
      {
         return §switch var switch§().§break const default§;
      }
      
      public function §dynamic switch else§() : int
      {
         return §switch var switch§().§5214237841237854123423632234§;
      }
      
      public function §false class§() : Long
      {
         return §switch var switch§().§var var static§;
      }
      
      public function §super use catch§() : String
      {
         return §switch var switch§().§super for for§;
      }
      
      private function §break var in§(param1:ClanServiceUpdateEvent) : void
      {
         this.§var catch import§ = param1.description;
         §521423120492312062123423632234§.§super var continue§(param1.description);
         §521423120492312062123423632234§.§5214239985239998123423632234§(param1.§521423119912312004123423632234§);
         §521423120492312062123423632234§.§with switch with§(param1.§5214239817239830123423632234§);
      }
      
      public function §5214239523239536123423632234§() : String
      {
         var _loc1_:Object = getData(Boolean);
         if(_loc1_)
         {
            return String(getData(String));
         }
         if(this.§var catch import§ != null)
         {
            return this.§var catch import§;
         }
         return "";
      }
   }
}

