package §5214231473231486123423632234§
{
   import §521423121922312205123423632234§.ClientOnlineNotifierData;
   import §5214233214233227123423632234§.§521423115182311531123423632234§;
   import flash.utils.setTimeout;
   import §import implements§.§5214233541233554123423632234§;
   import §import implements§.§52142357723590123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.BattleInfoServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.FriendStateChangeEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.NewFriendEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.BattleInviteServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.IBattleInviteService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.battle.IBattleNotifierService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.battle.LeaveBattleNotifierServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.battle.SetBattleNotifierServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.online.IOnlineNotifierService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.online.OnlineNotifierServiceEvent;
   import services.contextmenu.ContextMenuServiceEvent;
   import services.contextmenu.IContextMenuService;
   import §throw package function§.BattleLinkData;
   
   public class §521423121112312124123423632234§ extends §521423129272312940123423632234§ implements §521423115182311531123423632234§
   {
      
      public static var §52142335623369123423632234§:IContextMenuService;
      
      public static var §5214238546238559123423632234§:IOnlineNotifierService;
      
      public static var §use use with§:IBattleNotifierService;
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §5214233439233452123423632234§:IBattleInviteService;
      
      public static var §dynamic var false§:Boolean;
      
      private var §super const class§:uint;
      
      private var §catch for get§:§52142357723590123423632234§;
      
      public function §521423121112312124123423632234§()
      {
         super();
         init(§5214233541233554123423632234§);
         §521423124312312444123423632234§.§5214233046233059123423632234§ = this.§521423102822310295123423632234§;
         this.§catch for get§ = new §52142357723590123423632234§();
         addChild(this.§catch for get§);
      }
      
      private function §finally var import§(param1:NewFriendEvent) : void
      {
         §521423124312312444123423632234§.§in var import§(param1.userId);
      }
      
      private function §5214236936236949123423632234§(param1:ContextMenuServiceEvent) : void
      {
         §521423124312312444123423632234§.§default catch super§(param1.userId);
         this.resize(§5214237851237864123423632234§,§do finally set§);
      }
      
      private function §521423108352310848123423632234§(param1:BattleInfoServiceEvent) : void
      {
         §521423124312312444123423632234§.§5214238644238657123423632234§();
      }
      
      public function §true package final§() : void
      {
         §52142335623369123423632234§.removeEventListener("ContextMenuServiceEvent.REMOVE_FROM_FRIENDS",this.§5214236936236949123423632234§);
         §use in§.removeEventListener("FriendsStateChangeEvent.CHANGE",this.§5214239323239336123423632234§);
         §use in§.removeEventListener("NewFriendEvent.ACCEPTED_CHANGE",this.§finally var import§);
         §5214238546238559123423632234§.removeEventListener("OnlineNotifierServiceEvent.SET_ONLINE",this.§5214238290238303123423632234§);
         §use use with§.removeEventListener("SetBattleNotifierServiceEvent.SET_BATTLE",this.§super catch var§);
         §use use with§.removeEventListener("LeaveBattleNotifierServiceEvent.LEAVE_BATTLE",this.§do const use§);
         §return set get§.removeEventListener("BattleInfoServiceEvent.SELECTION_BATTLE",this.§5214236074236087123423632234§);
         §return set get§.removeEventListener("BattleInfoServiceEvent.RESET_SELECTION_BATTLE",this.§521423108352310848123423632234§);
         §5214233439233452123423632234§.removeEventListener("BattleInviteServiceEvent.REMOVE_INVITE",this.§521423139902314003123423632234§);
         if(parent.contains(this))
         {
            parent.removeChild(this);
            §521423124312312444123423632234§.removeAll();
         }
      }
      
      private function §521423139902314003123423632234§(param1:BattleInviteServiceEvent) : void
      {
         §521423124312312444123423632234§.§if set each§(param1.userId);
      }
      
      override public function resize(param1:Number, param2:Number) : void
      {
         §5214237851237864123423632234§ = param1;
         §do finally set§ = param2;
         §521423121112312124123423632234§.§dynamic var false§ = §implements for true§.maxVerticalScrollPosition > 0;
         this.§catch for get§.width = §5214237851237864123423632234§;
         §implements for true§.y = 20;
         §implements for true§.width = §521423121112312124123423632234§.§dynamic var false§ ? §5214237851237864123423632234§ + 6 : §5214237851237864123423632234§;
         §implements for true§.height = §do finally set§ - 20;
      }
      
      public function §else for class§() : void
      {
         §521423124312312444123423632234§.§else for class§();
         this.resize(§5214237851237864123423632234§,§do finally set§);
      }
      
      private function §do const use§(param1:LeaveBattleNotifierServiceEvent) : void
      {
         §521423124312312444123423632234§.§static final§(param1.userId);
      }
      
      private function §5214239323239336123423632234§(param1:FriendStateChangeEvent) : void
      {
         if(param1.state != FriendState.ACCEPTED)
         {
            §521423124312312444123423632234§.§default catch super§(param1.userId);
            this.resize(§5214237851237864123423632234§,§do finally set§);
            return;
         }
         if(§521423124312312444123423632234§.§5214233729233742123423632234§("id",param1.userId,true) == -1)
         {
            §521423124312312444123423632234§.§super catch use§(param1.userId);
            this.resize(§5214237851237864123423632234§,§do finally set§);
         }
      }
      
      private function §521423102822310295123423632234§(param1:Object) : void
      {
         if(!§5214234472234485123423632234§(param1) && Boolean(param1.isNew))
         {
            §use in§.removeNewAcceptedFriend(param1.id);
            §5214233553233566123423632234§(param1);
         }
      }
      
      private function §5214238290238303123423632234§(param1:OnlineNotifierServiceEvent) : void
      {
         var _loc6_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:Vector.<ClientOnlineNotifierData> = param1.users;
         var _loc2_:int = int(_loc5_.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = §521423124312312444123423632234§.§case for do§(_loc5_[_loc3_],false);
            _loc6_ = !_loc6_ ? _loc4_ != -1 : false;
            _loc3_++;
         }
         if(_loc6_ && §super const class§ == 0)
         {
            §super const class§ = setTimeout(§5214235512235525123423632234§,200);
         }
      }
      
      private function §5214235512235525123423632234§() : void
      {
         §521423124312312444123423632234§.§52142326023273123423632234§();
         §super const class§ = 0;
      }
      
      private function §super catch var§(param1:SetBattleNotifierServiceEvent) : void
      {
         var _loc6_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:Vector.<BattleLinkData> = param1.users;
         var _loc2_:int = int(_loc5_.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = §521423124312312444123423632234§.§5214238505238518123423632234§(_loc5_[_loc3_],false);
            _loc6_ = !_loc6_ ? _loc4_ != -1 : false;
            _loc3_++;
         }
         if(_loc6_ && §super const class§ == 0)
         {
            §super const class§ = setTimeout(§5214235512235525123423632234§,200);
         }
      }
      
      public function §5214233631233644123423632234§() : void
      {
         §use in§.addEventListener("FriendsStateChangeEvent.CHANGE",this.§5214239323239336123423632234§);
         §use in§.addEventListener("NewFriendEvent.ACCEPTED_CHANGE",this.§finally var import§);
         §52142335623369123423632234§.addEventListener("ContextMenuServiceEvent.REMOVE_FROM_FRIENDS",this.§5214236936236949123423632234§);
         §5214238546238559123423632234§.addEventListener("OnlineNotifierServiceEvent.SET_ONLINE",this.§5214238290238303123423632234§);
         §use use with§.addEventListener("SetBattleNotifierServiceEvent.SET_BATTLE",this.§super catch var§);
         §use use with§.addEventListener("LeaveBattleNotifierServiceEvent.LEAVE_BATTLE",this.§do const use§);
         §return set get§.addEventListener("BattleInfoServiceEvent.SELECTION_BATTLE",this.§5214236074236087123423632234§);
         §return set get§.addEventListener("BattleInfoServiceEvent.RESET_SELECTION_BATTLE",this.§521423108352310848123423632234§);
         §5214233439233452123423632234§.addEventListener("BattleInviteServiceEvent.REMOVE_INVITE",this.§521423139902314003123423632234§);
         §521423124312312444123423632234§.sortOn(["isNew","online","isBattle","uid"],[0x10 | 2,0x10 | 2,0x10 | 2,1]);
         §implements for true§.scrollToIndex(0);
         this.resize(§5214237851237864123423632234§,§do finally set§);
         §5214237522237535123423632234§(FriendState.ACCEPTED);
      }
      
      public function §5214239699239712123423632234§(param1:String, param2:String) : void
      {
         §false package§(param1,param2);
         this.resize(§5214237851237864123423632234§,§do finally set§);
      }
      
      private function §5214236074236087123423632234§(param1:BattleInfoServiceEvent) : void
      {
         §521423124312312444123423632234§.§5214238644238657123423632234§();
      }
   }
}

