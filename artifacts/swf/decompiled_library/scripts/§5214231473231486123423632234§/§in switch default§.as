package §5214231473231486123423632234§
{
   import §5214233214233227123423632234§.§521423115182311531123423632234§;
   import §5214233214233227123423632234§.§do set return§;
   import §import implements§.§5214232755232768123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.FriendStateChangeEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.NewFriendEvent;
   import services.contextmenu.ContextMenuServiceEvent;
   import services.contextmenu.IContextMenuService;
   
   public class §in switch default§ extends §521423129272312940123423632234§ implements §521423115182311531123423632234§
   {
      
      public static var §use in§:IFriendInfoService;
      
      public static var §52142335623369123423632234§:IContextMenuService;
      
      private var §5214232990233003123423632234§:§do set return§;
      
      public function §in switch default§(param1:§do set return§)
      {
         super();
         this.§5214232990233003123423632234§ = param1;
         init(§5214232755232768123423632234§);
         §521423124312312444123423632234§.§5214233046233059123423632234§ = this.§521423102822310295123423632234§;
      }
      
      public function §5214233631233644123423632234§() : void
      {
         §use in§.addEventListener("FriendsStateChangeEvent.CHANGE",this.§5214239323239336123423632234§);
         §use in§.addEventListener("NewFriendEvent.INCOMING_CHANGE",this.§finally var import§);
         §52142335623369123423632234§.addEventListener("ContextMenuServiceEvent.ACCEPT_REQUEST",this.§true package const§);
         §52142335623369123423632234§.addEventListener("ContextMenuServiceEvent.REJECT_REQUEST",this.§else var return§);
         §521423124312312444123423632234§.sortOn(["isNew","uid"],[0x10 | 2,1]);
         §5214237522237535123423632234§(FriendState.INCOMING);
         this.§final catch if§();
         §implements for true§.scrollToIndex(0);
         resize(§5214237851237864123423632234§,§do finally set§);
      }
      
      private function §else var return§(param1:ContextMenuServiceEvent) : void
      {
         §521423124312312444123423632234§.§default catch super§(param1.userId);
         this.§final catch if§();
         resize(§5214237851237864123423632234§,§do finally set§);
      }
      
      public function §else for class§() : void
      {
         §521423124312312444123423632234§.§else for class§();
         resize(§5214237851237864123423632234§,§do finally set§);
      }
      
      private function §521423102822310295123423632234§(param1:Object) : void
      {
         if(!§5214234472234485123423632234§(param1) && Boolean(param1.isNew))
         {
            §use in§.removeNewIncomingFriend(param1.id);
            §5214233553233566123423632234§(param1);
         }
      }
      
      private function §5214239323239336123423632234§(param1:FriendStateChangeEvent) : void
      {
         if(param1.state != FriendState.INCOMING)
         {
            §521423124312312444123423632234§.§default catch super§(param1.userId);
            this.§final catch if§();
            resize(§5214237851237864123423632234§,§do finally set§);
            return;
         }
         if(§521423124312312444123423632234§.§5214233729233742123423632234§("id",param1.userId,true) == -1)
         {
            §521423124312312444123423632234§.§super catch use§(param1.userId);
            this.§final catch if§();
            resize(§5214237851237864123423632234§,§do finally set§);
         }
      }
      
      private function §final catch if§() : void
      {
         this.§5214232990233003123423632234§.§default const extends§(§521423124312312444123423632234§.length != 0);
      }
      
      public function §5214239699239712123423632234§(param1:String, param2:String) : void
      {
         §false package§(param1,param2);
         resize(§5214237851237864123423632234§,§do finally set§);
      }
      
      public function §true package final§() : void
      {
         §52142335623369123423632234§.removeEventListener("ContextMenuServiceEvent.ACCEPT_REQUEST",this.§true package const§);
         §52142335623369123423632234§.removeEventListener("ContextMenuServiceEvent.REJECT_REQUEST",this.§else var return§);
         §use in§.removeEventListener("FriendsStateChangeEvent.CHANGE",this.§5214239323239336123423632234§);
         §use in§.removeEventListener("NewFriendEvent.INCOMING_CHANGE",this.§finally var import§);
         if(parent.contains(this))
         {
            parent.removeChild(this);
            §521423124312312444123423632234§.removeAll();
         }
      }
      
      private function §finally var import§(param1:NewFriendEvent) : void
      {
         §521423124312312444123423632234§.§in var import§(param1.userId);
      }
      
      private function §true package const§(param1:ContextMenuServiceEvent) : void
      {
         §521423124312312444123423632234§.§default catch super§(param1.userId);
         this.§final catch if§();
         resize(§5214237851237864123423632234§,§do finally set§);
      }
   }
}

