package alternativa.tanks.models.statistics
{
   import §5214231664231677123423632234§.ShortUserInfo;
   import §extends var import§.§5214231658231671123423632234§;
   
   public interface §5214238848238861123423632234§
   {
      
      function getBattleName() : String;
      
      function userDisconnect(param1:ShortUserInfo) : void;
      
      function userConnect(param1:ShortUserInfo) : void;
      
      function updateUserKills(param1:String, param2:int) : void;
      
      function getTimeLeftInSec() : int;
      
      function turnOffTimerToRestoreBalance() : void;
      
      function changeTeamScore(param1:§5214231658231671123423632234§, param2:int) : void;
      
      function turnOnTimerToRestoreBalance(param1:int) : void;
   }
}

