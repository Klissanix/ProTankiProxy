package services.contextmenu
{
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.events.EventDispatcher;
   import §package for final§.§5214235239235252123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.AlertServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendActionService;
   
   public class ContextMenuService extends EventDispatcher implements IContextMenuService
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §break use do§:IAlertService;
      
      public static var §5214232180232193123423632234§:IFriendActionService;
      
      private var §5214238855238868123423632234§:§5214235239235252123423632234§;
      
      private var §5214238475238488123423632234§:String;
      
      private var §5214236957236970123423632234§:String;
      
      public function ContextMenuService()
      {
         super();
         this.§5214238855238868123423632234§ = new §5214235239235252123423632234§();
      }
      
      public function removeFromFriends(param1:String, param2:String) : void
      {
         this.§5214238475238488123423632234§ = param1;
         this.§5214236957236970123423632234§ = param2;
         var _loc3_:String = §5214236363236376123423632234§.getText("FRIENDS_REMOVE_USER").replace("%USERNAME%",param2);
         §break use do§.showAlert(_loc3_,Vector.<String>([§5214236363236376123423632234§.getText("FRIENDS_YES"),§5214236363236376123423632234§.getText("FRIENDS_NO")]));
         §break use do§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.df5ca0b);
      }
      
      public function show(param1:int, param2:int, param3:String, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:Boolean, param12:Boolean, param13:Boolean = false, param14:Boolean = true, param15:Boolean = false) : void
      {
         this.§5214238855238868123423632234§.show(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function cancelRequest(param1:String, param2:String) : void
      {
         §5214232180232193123423632234§.revoke(param1);
         dispatchEvent(new ContextMenuServiceEvent("ContextMenuServiceEvent.CANCEL_REQUEST",param1,param2));
      }
      
      public function addToFriend(param1:String) : void
      {
         §5214232180232193123423632234§.add(param1);
      }
      
      public function acceptRequest(param1:String, param2:String) : void
      {
         §5214232180232193123423632234§.accept(param1);
         dispatchEvent(new ContextMenuServiceEvent("ContextMenuServiceEvent.ACCEPT_REQUEST",param1,param2));
      }
      
      public function rejectRequest(param1:String, param2:String) : void
      {
         §5214232180232193123423632234§.reject(param1);
         dispatchEvent(new ContextMenuServiceEvent("ContextMenuServiceEvent.REJECT_REQUEST",param1,param2));
      }
      
      public function focusOnUser(param1:String, param2:String) : void
      {
         dispatchEvent(new ContextMenuServiceEvent("ContextMenuServiceEvent.FOCUS_ON_USER",param1,param2));
      }
      
      public function writeInChat(param1:String, param2:String) : void
      {
         dispatchEvent(new ContextMenuServiceEvent("ContextMenuServiceEvent.WRITE_IN_CHAT",param1,param2));
      }
      
      private function df5ca0b(param1:AlertServiceEvent) : void
      {
         §break use do§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.df5ca0b);
         if(param1.typeButton == §5214236363236376123423632234§.getText("FRIENDS_YES"))
         {
            §5214232180232193123423632234§.breakItOff(this.§5214238475238488123423632234§);
            dispatchEvent(new ContextMenuServiceEvent("ContextMenuServiceEvent.REMOVE_FROM_FRIENDS",this.§5214238475238488123423632234§,this.§5214236957236970123423632234§));
         }
      }
   }
}

