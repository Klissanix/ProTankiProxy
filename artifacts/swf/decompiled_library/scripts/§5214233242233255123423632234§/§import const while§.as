package §5214233242233255123423632234§
{
   import §521423112082311221123423632234§.§521423134572313470123423632234§;
   import §521423112082311221123423632234§.§52142367923692123423632234§;
   import §5214233785233798123423632234§.§include return§;
   import §521423832396123423632234§.§5214238194238207123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.models.service.ClanNotificationsManager;
   import alternativa.tanks.service.clan.ClanMembersListEvent;
   import fl.controls.List;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanFunctionsService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.§5214231456231469123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import §super for case§.§get var extends§;
   import §super for import§.§switch package for§;
   import §true switch true§.§5214237085237098123423632234§;
   import utils.ScrollStyleUtils;
   import §with use return§.§52142324323256123423632234§;
   
   public class §import const while§ extends §get var extends§
   {
      
      public static var §static package var§:ClanFunctionsService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §while for package§:IUserInfoService;
      
      public static const §continue catch extends§:Number = 550;
      
      public static const §return switch if§:Number = 450;
      
      private var §if switch dynamic§:Dictionary;
      
      private var §return const set§:§include return§;
      
      private var §521423110602311073123423632234§:List;
      
      private var §override const finally§:§switch package for§;
      
      private var §catch for get§:§521423134572313470123423632234§;
      
      private var §true for final§:§5214237085237098123423632234§;
      
      private var §5214232889232902123423632234§:§52142324323256123423632234§;
      
      public function §import const while§(param1:§521423120252312038123423632234§)
      {
         super();
         this.§if switch dynamic§ = new Dictionary();
         this.§5214232889232902123423632234§ = §52142324323256123423632234§(param1.adapt(§52142324323256123423632234§));
         this.§5214232889232902123423632234§.§native package true§(this);
         this.§return const set§ = new §include return§(550,450,4278985229);
         §521423108472310860123423632234§.addChild(this.§return const set§);
         this.§catch for get§ = new §521423134572313470123423632234§();
         this.§return const set§.addChild(this.§catch for get§);
         this.§override const finally§ = new §switch package for§();
         this.§override const finally§.§5214233046233059123423632234§ = this.§521423102822310295123423632234§;
         this.§521423110602311073123423632234§ = new List();
         this.§521423110602311073123423632234§.rowHeight = 20;
         this.§521423110602311073123423632234§.setStyle("cellRenderer",§52142367923692123423632234§);
         this.§521423110602311073123423632234§.focusEnabled = true;
         this.§521423110602311073123423632234§.selectable = false;
         this.§521423110602311073123423632234§.dataProvider = this.§override const finally§;
         ScrollStyleUtils.setGreenStyle(this.§521423110602311073123423632234§);
         this.§return const set§.addChild(this.§521423110602311073123423632234§);
         ScrollStyleUtils.setGreenStyle(this.§521423110602311073123423632234§);
         this.§5214233993234006123423632234§();
         this.§true for final§ = new §5214237085237098123423632234§();
         this.§true for final§.label = §5214236363236376123423632234§.getText("FRIENDS_DECLINE_ALL_BUTTON");
         §521423108472310860123423632234§.addChild(this.§true for final§);
         this.§521423110602311073123423632234§.addEventListener("ClanMembersListEvent.REJECT_USER",this.§with catch default§);
         this.§521423110602311073123423632234§.addEventListener("ClanMembersListEvent.ACCEPTED_USER",this.§while while§);
         this.§true for final§.addEventListener("click",this.§5214236078236091123423632234§);
         this.resize();
      }
      
      protected function §5214234472234485123423632234§(param1:Object) : Boolean
      {
         return param1 in this.§if switch dynamic§;
      }
      
      override protected function getImageHeader() : String
      {
         return §5214236363236376123423632234§.getText("CLAN_HEADER_MANAGMENT");
      }
      
      private function §while while§(param1:ClanMembersListEvent) : void
      {
         §static package var§.acceptRequest(param1.userId);
      }
      
      override public function updateActions() : void
      {
         if(!§5214234066234079123423632234§.hasAction(§5214238194238207123423632234§.§52142378523798123423632234§))
         {
            destroy();
         }
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
      
      override protected function §in catch null§(param1:MouseEvent) : void
      {
         this.§5214236671236684123423632234§();
         super.§in catch null§(param1);
      }
      
      public function §5214233993234006123423632234§() : void
      {
         var _loc2_:§5214231456231469123423632234§ = null;
         var _loc1_:Object = null;
         this.§override const finally§.removeAll();
         for each(var _loc3_ in this.§5214232889232902123423632234§.§while const continue§())
         {
            _loc2_ = §while for package§.getOrCreateUpdater(_loc3_);
            _loc1_ = {};
            _loc1_.id = _loc3_;
            _loc1_.isNew = ClanNotificationsManager.userInIncomingNotifications(_loc3_);
            _loc1_.uid = _loc2_.uid;
            this.§override const finally§.addItem(_loc1_);
         }
         this.§default const else§();
         this.resize();
      }
      
      private function §default const else§() : void
      {
         this.§override const finally§.sortOn(["isNew","uid"],[0x10 | 2,1]);
      }
      
      private function §5214236078236091123423632234§(param1:MouseEvent) : void
      {
         §static package var§.rejectAllRequests();
      }
      
      private function §521423102822310295123423632234§(param1:Object) : void
      {
         if(!this.§5214234472234485123423632234§(param1))
         {
            this.§5214233553233566123423632234§(param1);
         }
      }
      
      public function §5214236671236684123423632234§() : void
      {
         for(var _loc1_ in this.§if switch dynamic§)
         {
            ClanNotificationsManager.removeIncomingNotification(_loc1_.id);
         }
      }
      
      override public function get height() : Number
      {
         return 450;
      }
      
      protected function §5214233553233566123423632234§(param1:Object) : void
      {
         this.§if switch dynamic§[param1] = true;
      }
      
      public function §super catch use§(param1:String) : void
      {
         this.§override const finally§.addItem({"id":param1});
         this.§default const else§();
         this.resize();
      }
      
      override public function get width() : Number
      {
         return 550;
      }
      
      public function resize() : void
      {
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
         if(this.§true for final§ != null)
         {
            this.§true for final§.x = 11;
            this.§true for final§.y = this.height - 11 - this.§true for final§.height;
         }
      }
      
      private function §with catch default§(param1:ClanMembersListEvent) : void
      {
         §static package var§.rejectRequest(param1.userId);
      }
   }
}

