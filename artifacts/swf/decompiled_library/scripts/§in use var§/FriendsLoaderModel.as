package §in use var§
{
   import §5214233214233227123423632234§.§class var for§;
   import §5214233214233227123423632234§.§package package while§;
   import alternativa.osgi.service.display.IDisplay;
   import §false catch get§.§5214238860238873123423632234§;
   import §false catch get§.§each use use§;
   import §include else§.§package switch set§;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import services.buttonbar.IButtonBarService;
   
   public class FriendsLoaderModel extends §each use use§ implements §5214238860238873123423632234§, §5214234168234181123423632234§, §throw catch var§
   {
      
      public static var display:IDisplay;
      
      public static var §use in§:IFriendInfoService;
      
      public static var §52142384323856123423632234§:IButtonBarService;
      
      private var §get package return§:§class var for§;
      
      public function FriendsLoaderModel()
      {
         super();
      }
      
      public function objectUnloaded() : void
      {
         this.§get package return§.destroy();
         §52142384323856123423632234§.removeEventListener("Close",this.d17c908c);
      }
      
      public function objectLoadedPost() : void
      {
         if(this.§get package return§ == null)
         {
            this.§get package return§ = new §class var for§();
         }
         §52142384323856123423632234§.addEventListener("Close",this.d17c908c);
      }
      
      private function d17c908c(param1:§package switch set§) : void
      {
         if(param1.§5214236155236168123423632234§ == "Friends")
         {
            §521423120492312062123423632234§.show();
         }
      }
      
      public function onUsersLoaded() : void
      {
         if(§use in§.newIncomingFriendsLength > 0)
         {
            this.§get package return§.show(§package package while§.§5214235747235760123423632234§);
         }
         else
         {
            this.§get package return§.show(§package package while§.§5214236353236366123423632234§);
         }
      }
   }
}

