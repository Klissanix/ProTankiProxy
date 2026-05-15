package §5214238382238395123423632234§
{
   import alternativa.tanks.gui.AvailableItemsAlert;
   import alternativa.tanks.service.notificationcategories.INotificationGarageCategoriesService;
   import §finally use true§.§do var set§;
   import flash.events.Event;
   import §in const continue§.§5214234498234511123423632234§;
   import §in const continue§.§52142387223885123423632234§;
   import §include else§.§52142345223465123423632234§;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import §super var do§.LobbyLayoutServiceEvent;
   
   public class AvailableItemsModel extends §5214234498234511123423632234§ implements §52142387223885123423632234§
   {
      
      public static var §continue for final§:ILobbyLayoutService;
      
      public static var §5214236480236493123423632234§:INotificationGarageCategoriesService;
      
      public static const §5214233216233229123423632234§:String = "available";
      
      private var items:Vector.<§do var set§> = new Vector.<§do var set§>();
      
      private var §true set use§:AvailableItemsAlert;
      
      public function AvailableItemsModel()
      {
         super();
      }
      
      private function b2914900(param1:LobbyLayoutServiceEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Vector.<§do var set§> = null;
         if(param1.state != LayoutState.BATTLE)
         {
            _loc2_ = true;
            if(_loc2_)
            {
               if(this.items != null)
               {
                  _loc3_ = this.items;
                  this.showAlert(_loc3_);
               }
            }
         }
      }
      
      public function showAvailableItems(param1:Vector.<§do var set§>) : void
      {
         if(§continue for final§.getCurrentState() == LayoutState.GARAGE)
         {
            this.showAlert(param1);
         }
         else
         {
            this.items = new Vector.<§do var set§>();
            this.items = param1;
            if(§continue for final§.inBattle())
            {
            }
            §continue for final§.addEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",this.b2914900);
         }
         §5214236480236493123423632234§.notifyAboutAvailableItems(param1);
      }
      
      private function showAlert(param1:Vector.<§do var set§>) : void
      {
         var _loc2_:AvailableItemsAlert = this.§true set use§;
         if(_loc2_ != null)
         {
            this.a35b4e12();
         }
         var _loc3_:AvailableItemsAlert = new AvailableItemsAlert(param1,null,"TEXT_GARAGE_NEW_ITEMS_ALERT");
         _loc3_.addEventListener("cancel",this.a2737b5f);
         _loc3_.addEventListener("SelectPartsListItem",this.c5c79c20);
         this.§true set use§ = _loc3_;
      }
      
      private function a35b4e12() : void
      {
         if(§continue for final§.hasEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH"))
         {
            §continue for final§.removeEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",this.b2914900);
         }
         var _loc1_:AvailableItemsAlert = this.§true set use§;
         _loc1_.removeEventListener("cancel",this.a2737b5f);
         _loc1_.removeEventListener("SelectPartsListItem",this.c5c79c20);
         this.items = null;
         this.§true set use§ = null;
      }
      
      private function a2737b5f(param1:Event) : void
      {
         this.a35b4e12();
      }
      
      private function c5c79c20(param1:§52142345223465123423632234§) : void
      {
         var _loc2_:AvailableItemsAlert = this.§true set use§;
         §521423120492312062123423632234§.§5214236239236252123423632234§(_loc2_.§5214236516236529123423632234§.selectedItem.name);
         this.a35b4e12();
      }
   }
}

