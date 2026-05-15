package alternativa.tanks.models.foreignclan
{
   import §521423108422310855123423632234§.§52142386123874123423632234§;
   import §const const default§.ForeignClanWindow;
   import flash.events.EventDispatcher;
   
   public class ForeignClanServiceImpl extends EventDispatcher implements ForeignClanService
   {
      
      private var §5214231232231245123423632234§:ForeignClanWindow;
      
      private var §else var with§:Boolean;
      
      public function ForeignClanServiceImpl()
      {
         super();
      }
      
      public function sendRequest() : void
      {
         dispatchEvent(new ForeignClanEvent("ForeignClanEvent.SEND_REQUEST"));
      }
      
      public function onJoinClan(param1:String) : void
      {
         if(this.§5214231232231245123423632234§ != null)
         {
            this.§5214231232231245123423632234§.joinClan(param1);
         }
      }
      
      public function clanBlocked(param1:String) : void
      {
         if(this.§5214231232231245123423632234§ != null)
         {
            this.§5214231232231245123423632234§.clanBlocked(param1);
         }
      }
      
      public function destroyWindow() : void
      {
         this.§5214231232231245123423632234§.destroy();
      }
      
      public function acceptRequest() : void
      {
         dispatchEvent(new ForeignClanEvent("ForeignClanEvent.ACCEPT_REQUEST"));
      }
      
      public function resetWindow() : void
      {
         this.§5214231232231245123423632234§ = null;
         this.§else var with§ = false;
      }
      
      public function userSmallRankForAddClan() : void
      {
         this.§5214231232231245123423632234§.showAlertSmallRank();
      }
      
      public function showForeignClan(param1:§52142386123874123423632234§) : void
      {
         this.§else var with§ = true;
         this.§5214231232231245123423632234§ = new ForeignClanWindow(param1);
      }
      
      public function revokeRequest() : void
      {
         dispatchEvent(new ForeignClanEvent("ForeignClanEvent.REJECT_REQUEST"));
      }
      
      public function isShowForeignClan() : Boolean
      {
         return this.§else var with§;
      }
      
      public function alreadyInIncoming() : void
      {
         if(this.§5214231232231245123423632234§ != null)
         {
            this.§5214231232231245123423632234§.alreadyInIncoming();
         }
      }
      
      public function alreadyInClanOutgoing() : void
      {
         if(this.§5214231232231245123423632234§ != null)
         {
            this.§5214231232231245123423632234§.alreadyInClanOutgoing();
         }
      }
   }
}

