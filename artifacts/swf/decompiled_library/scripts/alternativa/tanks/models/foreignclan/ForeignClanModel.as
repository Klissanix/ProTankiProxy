package alternativa.tanks.models.foreignclan
{
   import §521423108422310855123423632234§.§52142386123874123423632234§;
   import §521423108422310855123423632234§.§do use var§;
   import §521423108422310855123423632234§.§with const class§;
   import alternativa.tanks.models.panel.create.service.ClanCreateService;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.model.§throw catch var§;
   
   public class ForeignClanModel extends §with const class§ implements §do use var§, §do set function§, §throw catch var§
   {
      
      public static var §5214238647238660123423632234§:ForeignClanService;
      
      public static var §5214239670239683123423632234§:ClanCreateService;
      
      public function ForeignClanModel()
      {
         super();
      }
      
      public function userSmallRankForAddClan() : void
      {
         §5214238647238660123423632234§.userSmallRankForAddClan();
      }
      
      public function objectUnloaded() : void
      {
         §5214238647238660123423632234§.removeEventListener("ForeignClanEvent.SEND_REQUEST",getFunctionWrapper(this.f352c863));
         §5214238647238660123423632234§.removeEventListener("ForeignClanEvent.ACCEPT_REQUEST",getFunctionWrapper(this.c1a030e3));
         §5214238647238660123423632234§.removeEventListener("ForeignClanEvent.REJECT_REQUEST",getFunctionWrapper(this.d1e12daa));
      }
      
      private function f352c863(param1:ForeignClanEvent) : void
      {
         §521423120492312062123423632234§.§5214237736237749123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.name);
      }
      
      public function onJoinClan(param1:String) : void
      {
         §5214238647238660123423632234§.onJoinClan(param1);
      }
      
      private function d1e12daa(param1:ForeignClanEvent) : void
      {
         §521423120492312062123423632234§.§5214239305239318123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.name);
      }
      
      public function alreadyInIncomingForThisClan(param1:String) : void
      {
         §5214238647238660123423632234§.alreadyInIncoming();
      }
      
      private function c1a030e3(param1:ForeignClanEvent) : void
      {
         §521423120492312062123423632234§.§extends var native§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.name);
      }
      
      public function foreignClanBlocked(param1:String) : void
      {
         §5214238647238660123423632234§.clanBlocked(param1);
      }
      
      public function showForeignClanWindow(param1:§52142386123874123423632234§) : void
      {
         §5214238647238660123423632234§.showForeignClan(param1);
      }
      
      public function objectLoaded() : void
      {
         §5214238647238660123423632234§.addEventListener("ForeignClanEvent.SEND_REQUEST",getFunctionWrapper(this.f352c863));
         §5214238647238660123423632234§.addEventListener("ForeignClanEvent.ACCEPT_REQUEST",getFunctionWrapper(this.c1a030e3));
         §5214238647238660123423632234§.addEventListener("ForeignClanEvent.REJECT_REQUEST",getFunctionWrapper(this.d1e12daa));
      }
      
      public function alreadyInForeignClanOutgoing(param1:String) : void
      {
         §5214238647238660123423632234§.alreadyInClanOutgoing();
      }
   }
}

