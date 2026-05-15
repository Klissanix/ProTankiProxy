package alternativa.tanks.models.foreignclan
{
   import §521423108422310855123423632234§.§52142386123874123423632234§;
   import flash.events.IEventDispatcher;
   
   public interface ForeignClanService extends IEventDispatcher
   {
      
      function isShowForeignClan() : Boolean;
      
      function sendRequest() : void;
      
      function userSmallRankForAddClan() : void;
      
      function revokeRequest() : void;
      
      function alreadyInIncoming() : void;
      
      function alreadyInClanOutgoing() : void;
      
      function onJoinClan(param1:String) : void;
      
      function showForeignClan(param1:§52142386123874123423632234§) : void;
      
      function destroyWindow() : void;
      
      function clanBlocked(param1:String) : void;
      
      function resetWindow() : void;
      
      function acceptRequest() : void;
   }
}

