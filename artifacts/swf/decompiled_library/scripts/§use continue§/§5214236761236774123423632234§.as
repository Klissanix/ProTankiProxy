package §use continue§
{
   import alternativa.tanks.gui.§521423138122313825123423632234§;
   import alternativa.tanks.models.service.ClanUserNotificationsManager;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import §true switch true§.§do var const§;
   
   public class §5214236761236774123423632234§ extends §do var const§ implements §521423138122313825123423632234§
   {
      
      public static var §521423103532310366123423632234§:Class = §c42h146_png$da11891e81bf803c8b02716950136901-776867355§;
      
      private static var §5214237050237063123423632234§:BitmapData = Bitmap(new §521423103532310366123423632234§()).bitmapData;
      
      private var §521423110882311101123423632234§:Bitmap = new Bitmap(§5214237050237063123423632234§);
      
      public function §5214236761236774123423632234§()
      {
         super();
         addChild(this.§521423110882311101123423632234§);
         this.§521423110882311101123423632234§.y = -6;
         ClanUserNotificationsManager.addIncomingIndicatorListener(this);
      }
      
      public function destroy() : void
      {
         ClanUserNotificationsManager.removeIncomingIndicatorListener(this);
      }
      
      override public function set width(param1:Number) : void
      {
         super.width = param1;
         this.§521423110882311101123423632234§.x = width - this.§521423110882311101123423632234§.width / 2;
      }
      
      public function updateNotifications() : void
      {
         this.§521423110882311101123423632234§.visible = ClanUserNotificationsManager.getIncomingNotificationsCount() > 0;
      }
   }
}

