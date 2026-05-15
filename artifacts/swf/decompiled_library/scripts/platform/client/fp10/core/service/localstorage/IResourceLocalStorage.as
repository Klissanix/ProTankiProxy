package platform.client.fp10.core.service.localstorage
{
   public interface IResourceLocalStorage
   {
      
      function clear() : void;
      
      function set enabled(param1:Boolean) : void;
      
      function get enabled() : Boolean;
   }
}

