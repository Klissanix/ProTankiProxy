package §use continue§
{
   import §521423107142310727123423632234§.§5214231669231682123423632234§;
   import alternativa.tanks.gui.§521423138122313825123423632234§;
   import alternativa.tanks.models.service.ClanUserNotificationsManager;
   import §true switch true§.§5214237085237098123423632234§;
   
   public class §dynamic const include§ extends §5214237085237098123423632234§ implements §521423138122313825123423632234§
   {
      
      private var §5214238723100123423632234§:§5214231669231682123423632234§ = new §5214231669231682123423632234§();
      
      public function §dynamic const include§()
      {
         super();
         ClanUserNotificationsManager.addIncomingIndicatorListener(this);
         addChild(this.§5214238723100123423632234§);
         this.§5214238723100123423632234§.y = -6;
      }
      
      public function updateNotifications() : void
      {
         var _loc1_:int = ClanUserNotificationsManager.getIncomingNotificationsCount();
         this.§5214238723100123423632234§.§while set return§ = _loc1_;
      }
      
      public function destroy() : void
      {
         ClanUserNotificationsManager.removeIncomingIndicatorListener(this);
      }
      
      override public function set enable(param1:Boolean) : void
      {
         super.enable = param1;
         this.§5214238723100123423632234§.visible = param1 && ClanUserNotificationsManager.getIncomingNotificationsCount() > 0;
      }
      
      override public function set width(param1:Number) : void
      {
         super.width = param1;
         this.§5214238723100123423632234§.x = width + 3;
      }
   }
}

