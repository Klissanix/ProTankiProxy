package projects.tanks.clients.flash.commons.services.notification
{
   import §521423128372312850123423632234§.§continue§;
   import §5214234825234838123423632234§.ConnectionCloseStatus;
   import §5214236145236158123423632234§.Signal;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import §super var do§.LobbyLayoutServiceEvent;
   
   public class NotificationService implements INotificationService, §continue§
   {
      
      private var §5214238166238179123423632234§:ILobbyLayoutService;
      
      private var §use const implements§:Vector.<§521423102072310220123423632234§>;
      
      private var §implements catch override§:§521423102072310220123423632234§;
      
      public function NotificationService(param1:ILobbyLayoutService)
      {
         super();
         this.§5214238166238179123423632234§ = param1;
         this.init();
      }
      
      public function hasNotification(param1:String, param2:String) : Boolean
      {
         var _loc6_:int = 0;
         var _loc4_:§521423102072310220123423632234§ = null;
         var _loc3_:Boolean = false;
         if(this.c25d9ca6(param1,param2))
         {
            return true;
         }
         var _loc5_:int = int(this.§use const implements§.length);
         while(_loc6_ < _loc5_)
         {
            _loc4_ = this.§use const implements§[_loc6_];
            if(_loc4_.userId == param1 && _loc4_.message == param2)
            {
               _loc3_ = true;
               break;
            }
            _loc6_++;
         }
         return _loc3_;
      }
      
      private function d50884f7() : void
      {
         this.§implements catch override§ = null;
         this.d3d16bde();
      }
      
      public function onConnectionClosed(param1:ConnectionCloseStatus) : void
      {
         if(this.§implements catch override§)
         {
            this.§implements catch override§.destroy();
            this.§implements catch override§ = null;
         }
         this.§use const implements§.length = 0;
      }
      
      private function ea9f454() : Boolean
      {
         return !this.§5214238166238179123423632234§.isSwitchInProgress() && this.§implements catch override§ == null && this.§use const implements§.length != 0;
      }
      
      private function d3d16bde() : void
      {
         var _loc1_:Signal = null;
         if(this.ea9f454())
         {
            this.§implements catch override§ = this.§use const implements§.shift();
            _loc1_ = new Signal();
            _loc1_.§if set static§(this.d50884f7);
            this.§implements catch override§.show(_loc1_);
         }
      }
      
      public function addNotification(param1:§521423102072310220123423632234§, param2:Boolean = false) : void
      {
         if(param2)
         {
            this.§use const implements§.unshift(param1);
         }
         else
         {
            this.§use const implements§[§use const implements§.length] = param1;
         }
         this.d3d16bde();
      }
      
      private function b2914900(param1:LobbyLayoutServiceEvent) : void
      {
         this.d3d16bde();
      }
      
      private function init() : void
      {
         this.§use const implements§ = new Vector.<§521423102072310220123423632234§>();
         this.§5214238166238179123423632234§.addEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",this.b2914900);
      }
      
      private function c25d9ca6(param1:String, param2:String) : Boolean
      {
         return this.§implements catch override§ != null && this.§implements catch override§.userId == param1 && this.§implements catch override§.message == param2;
      }
   }
}

