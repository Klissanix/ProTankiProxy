package §5214231473231486123423632234§
{
   import §5214233214233227123423632234§.§521423115182311531123423632234§;
   import §import implements§.§5214236229236242123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.FriendStateChangeEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import services.contextmenu.ContextMenuServiceEvent;
   import services.contextmenu.IContextMenuService;
   
   public class §case catch package§ extends §521423129272312940123423632234§ implements §521423115182311531123423632234§
   {
      
      public static var §use in§:IFriendInfoService;
      
      public static var §52142335623369123423632234§:IContextMenuService;
      
      public function §case catch package§()
      {
         super();
         init(§5214236229236242123423632234§);
      }
      
      private function §5214232970232983123423632234§(param1:ContextMenuServiceEvent) : void
      {
         §521423124312312444123423632234§.§default catch super§(param1.userId);
         resize(§5214237851237864123423632234§,§do finally set§);
      }
      
      public function §true package final§() : void
      {
         §52142335623369123423632234§.removeEventListener("ContextMenuServiceEvent.CANCEL_REQUEST",this.§5214232970232983123423632234§);
         §use in§.removeEventListener("FriendsStateChangeEvent.CHANGE",this.§5214239323239336123423632234§);
         if(parent.contains(this))
         {
            parent.removeChild(this);
            §521423124312312444123423632234§.removeAll();
         }
      }
      
      private function §5214239323239336123423632234§(param1:FriendStateChangeEvent) : void
      {
         if(param1.state != FriendState.OUTGOING)
         {
            §521423124312312444123423632234§.§default catch super§(param1.userId);
            resize(§5214237851237864123423632234§,§do finally set§);
            return;
         }
         if(§521423124312312444123423632234§.§5214233729233742123423632234§("id",param1.userId,true) == -1)
         {
            §521423124312312444123423632234§.§super catch use§(param1.userId);
            resize(§5214237851237864123423632234§,§do finally set§);
         }
      }
      
      public function §5214233631233644123423632234§() : void
      {
         §521423124312312444123423632234§.sortOn(["uid"],[1]);
         §5214237522237535123423632234§(FriendState.OUTGOING);
         §implements for true§.scrollToIndex(0);
         resize(§5214237851237864123423632234§,§do finally set§);
         §use in§.addEventListener("FriendsStateChangeEvent.CHANGE",this.§5214239323239336123423632234§);
         §52142335623369123423632234§.addEventListener("ContextMenuServiceEvent.CANCEL_REQUEST",this.§5214232970232983123423632234§);
      }
      
      public function §else for class§() : void
      {
         §521423124312312444123423632234§.§else for class§();
         resize(§5214237851237864123423632234§,§do finally set§);
      }
      
      public function §5214239699239712123423632234§(param1:String, param2:String) : void
      {
         §false package§(param1,param2);
         resize(§5214237851237864123423632234§,§do finally set§);
      }
   }
}

