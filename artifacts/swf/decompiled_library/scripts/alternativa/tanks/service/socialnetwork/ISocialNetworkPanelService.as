package alternativa.tanks.service.socialnetwork
{
   import flash.events.IEventDispatcher;
   
   public interface ISocialNetworkPanelService extends IEventDispatcher
   {
      
      function snLinkExists(param1:String) : Boolean;
      
      function method_1769(param1:String) : void;
      
      function get passwordCreated() : Boolean;
      
      function method_506(param1:String) : Boolean;
      
      function method_2468(param1:String) : void;
      
      function set passwordCreated(param1:Boolean) : void;
      
      function method_1669(param1:String) : void;
      
      function set googleLinkExists(param1:Boolean) : void;
      
      function set facebookLinkExists(param1:Boolean) : void;
      
      function set vkLinkExists(param1:Boolean) : void;
      
      function method_2360(param1:String) : void;
   }
}

