package alternativa.tanks.service.socialnetwork
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.events.EventDispatcher;
   
   public class SocialNetworkPanelService extends EventDispatcher implements ISocialNetworkPanelService
   {
      
      public static var §5214236363236376123423632234§:ILocaleService = OSGi.getInstance().getService(ILocaleService) as ILocaleService;
      
      private const §5214237828237841123423632234§:String = "vkontakte";
      
      private const §5214235659235672123423632234§:String = "facebook";
      
      private const §do var class§:String = "google";
      
      private var §if use continue§:Boolean;
      
      private var §while switch in§:Boolean;
      
      private var §5214239075239088123423632234§:Boolean;
      
      private var §521423123122312325123423632234§:Boolean;
      
      public function SocialNetworkPanelService()
      {
         super();
      }
      
      public function set vkLinkExists(param1:Boolean) : void
      {
         this.§while switch in§ = param1;
      }
      
      public function method_1769(param1:String) : void
      {
         dispatchEvent(new SocialNetworkServiceEvent("SocialNetworkServiceEvent.CREATE_LINK",param1));
      }
      
      public function method_506(param1:String) : Boolean
      {
         var _loc2_:String = param1;
         if("vkontakte" !== _loc2_)
         {
            return false;
         }
         return true;
      }
      
      public function method_1669(param1:String) : void
      {
         if(param1 == "vkontakte")
         {
            this.§while switch in§ = true;
         }
         else if(param1 == "google")
         {
            this.§521423123122312325123423632234§ = true;
         }
         else
         {
            this.§5214239075239088123423632234§ = true;
         }
         dispatchEvent(new SocialNetworkServiceEvent("SocialNetworkServiceEvent.LINK_SUCCESS",param1));
      }
      
      public function get passwordCreated() : Boolean
      {
         return this.§if use continue§;
      }
      
      public function set passwordCreated(param1:Boolean) : void
      {
         this.§if use continue§ = param1;
      }
      
      public function method_2468(param1:String) : void
      {
         dispatchEvent(new SocialNetworkServiceEvent("SocialNetworkServiceEvent.UNLINK",param1));
      }
      
      public function set facebookLinkExists(param1:Boolean) : void
      {
         this.§5214239075239088123423632234§ = param1;
      }
      
      public function set googleLinkExists(param1:Boolean) : void
      {
         this.§521423123122312325123423632234§ = param1;
      }
      
      public function method_2360(param1:String) : void
      {
         if(param1 == "vkontakte")
         {
            this.§while switch in§ = false;
         }
         else if(param1 == "google")
         {
            this.§521423123122312325123423632234§ = false;
         }
         else
         {
            this.§5214239075239088123423632234§ = false;
         }
         dispatchEvent(new SocialNetworkServiceEvent("SocialNetworkServiceEvent.UNLINK_SUCCESS",param1));
      }
      
      public function snLinkExists(param1:String) : Boolean
      {
         switch(param1)
         {
            case "vkontakte":
               return this.§while switch in§;
            case "facebook":
               return this.§5214239075239088123423632234§;
            case "google":
               return this.§521423123122312325123423632234§;
            default:
               return false;
         }
      }
   }
}

