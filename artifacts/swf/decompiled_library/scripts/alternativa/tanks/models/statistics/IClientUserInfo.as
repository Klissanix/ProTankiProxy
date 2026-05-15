package alternativa.tanks.models.statistics
{
   import §5214231664231677123423632234§.ShortUserInfo;
   
   public interface IClientUserInfo
   {
      
      function getShortUserInfo(param1:String) : ShortUserInfo;
      
      function isLoaded(param1:String) : Boolean;
      
      function rankChanged(param1:String, param2:int) : void;
      
      function getUsersCount() : int;
      
      function suspiciousnessChanged(param1:String, param2:Boolean) : void;
   }
}

