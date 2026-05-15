package §5214233242233255123423632234§
{
   import §521423112082311221123423632234§.§521423134572313470123423632234§;
   import §521423112082311221123423632234§.§catch use catch§;
   import §521423134112313424123423632234§.§521423140572314070123423632234§;
   import §521423134112313424123423632234§.§5214232045232058123423632234§;
   import §5214233785233798123423632234§.§include return§;
   import §521423832396123423632234§.§5214238194238207123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.clan.ClanMembersListEvent;
   import §class finally catch§.§521423138752313888123423632234§;
   import fl.controls.List;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanFunctionsService;
   import §super for case§.§get var extends§;
   import §super for import§.§switch package for§;
   import utils.ScrollStyleUtils;
   
   public class §const finally var§ extends §get var extends§
   {
      
      public static var §static package var§:ClanFunctionsService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static const §continue catch extends§:Number = 550;
      
      public static const §return switch if§:Number = 450;
      
      private var §return const set§:§include return§;
      
      private var §521423110602311073123423632234§:List;
      
      private var §override const finally§:§switch package for§;
      
      private var §catch for get§:§521423134572313470123423632234§;
      
      private var §521423140672314080123423632234§:§521423138752313888123423632234§;
      
      private var §function const var§:§521423140572314070123423632234§;
      
      public function §const finally var§(param1:§521423120252312038123423632234§)
      {
         super();
         this.§521423140672314080123423632234§ = §521423138752313888123423632234§(param1.adapt(§521423138752313888123423632234§));
         this.§521423140672314080123423632234§.§dynamic switch null§(this);
         this.§return const set§ = new §include return§(550,450,4278985229);
         §521423108472310860123423632234§.addChild(this.§return const set§);
         this.§catch for get§ = new §521423134572313470123423632234§();
         this.§return const set§.addChild(this.§catch for get§);
         this.§override const finally§ = new §switch package for§();
         this.§521423110602311073123423632234§ = new List();
         this.§521423110602311073123423632234§.rowHeight = 20;
         this.§521423110602311073123423632234§.setStyle("cellRenderer",§catch use catch§);
         this.§521423110602311073123423632234§.focusEnabled = true;
         this.§521423110602311073123423632234§.selectable = false;
         this.§521423110602311073123423632234§.dataProvider = this.§override const finally§;
         ScrollStyleUtils.setGreenStyle(this.§521423110602311073123423632234§);
         this.§return const set§.addChild(this.§521423110602311073123423632234§);
         var _loc2_:§5214232045232058123423632234§ = §5214232045232058123423632234§(param1.adapt(§5214232045232058123423632234§));
         this.§function const var§ = new §521423140572314070123423632234§(_loc2_,§5214236363236376123423632234§.getText("CLAN_SEND_INVITE"),§5214236363236376123423632234§.getText("FRIENDS_SEND_REQUEST_BUTTON"),"","");
         §521423108472310860123423632234§.addChild(this.§function const var§);
         ScrollStyleUtils.setGreenStyle(this.§521423110602311073123423632234§);
         this.§5214233993234006123423632234§();
         this.§521423110602311073123423632234§.addEventListener("ClanMembersListEvent.REVOKE_USER",this.§5214239795239808123423632234§);
         this.resize();
      }
      
      public function §default catch super§(param1:String) : void
      {
         var _loc2_:int = this.§override const finally§.§5214236930236943123423632234§(param1);
         if(_loc2_ >= 0)
         {
            this.§override const finally§.removeItemAt(_loc2_);
         }
         this.§default const else§();
         this.resize();
      }
      
      override public function get height() : Number
      {
         return 450;
      }
      
      public function §super catch use§(param1:String) : void
      {
         this.§override const finally§.addItem({"id":param1});
         this.§default const else§();
         this.resize();
      }
      
      private function §5214239795239808123423632234§(param1:ClanMembersListEvent) : void
      {
         §static package var§.revokeRequest(param1.userId);
      }
      
      public function §5214233993234006123423632234§() : void
      {
         this.§override const finally§.removeAll();
         for each(var _loc1_ in this.§521423140672314080123423632234§.§while const continue§())
         {
            this.§override const finally§.addItem({"id":_loc1_});
         }
         this.§default const else§();
         this.resize();
      }
      
      public function resize() : void
      {
         var _loc3_:int = 450 - closeButton.height - 11;
         this.§return const set§.x = 11;
         this.§return const set§.y = 11;
         var _loc1_:int = 528;
         this.§return const set§.width = _loc1_;
         this.§return const set§.height = closeButton.y - 11 - 7;
         this.§catch for get§.x = 3;
         this.§catch for get§.y = 3;
         this.§catch for get§.width = _loc1_ - 6;
         this.§521423110602311073123423632234§.x = 3;
         this.§521423110602311073123423632234§.y = 23;
         this.§521423110602311073123423632234§.height = this.§return const set§.height - 24;
         var _loc2_:Boolean = this.§521423110602311073123423632234§.maxVerticalScrollPosition > 0;
         this.§521423110602311073123423632234§.width = _loc2_ ? _loc1_ + 2 : _loc1_ - 6;
         if(this.§function const var§ != null)
         {
            this.§function const var§.x = 11;
            this.§function const var§.y = 409;
            this.§function const var§.width = 550 - 2 * 11 - 2 * closeButton.width - 17;
         }
      }
      
      override public function updateActions() : void
      {
         if(!§5214234066234079123423632234§.hasAction(§5214238194238207123423632234§.§throw for try§))
         {
            this.destroy();
         }
      }
      
      override public function get width() : Number
      {
         return 550;
      }
      
      override protected function getImageHeader() : String
      {
         return §5214236363236376123423632234§.getText("CLAN_HEADER_MANAGMENT");
      }
      
      private function §default const else§() : void
      {
         this.§override const finally§.sortOn(["id"],[16]);
      }
      
      override public function destroy() : void
      {
         this.§function const var§.§true package final§();
         super.destroy();
      }
   }
}

