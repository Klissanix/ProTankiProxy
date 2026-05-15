package alternativa.tanks.service
{
   public interface IExternalEntranceService
   {
      
      function get facebookEnabled() : Boolean;
      
      function setEnabled(param1:String, param2:Boolean) : void;
      
      function get vkontakteEnabled() : Boolean;
      
      function get googleEnabled() : Boolean;
   }
}

