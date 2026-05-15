package §5214239640239653123423632234§
{
   import alternativa.tanks.service.dailyquest.DailyQuestNotificationEvent;
   import alternativa.tanks.service.dailyquest.DailyQuestNotifierService;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §521423126142312627123423632234§ extends Sprite
   {
      
      public static var §521423107012310714123423632234§:DailyQuestNotifierService;
      
      private static var §for set else§:Class = §c42h146_png$da11891e81bf803c8b02716950136901-776867355§;
      
      private static var §5214238040238053123423632234§:BitmapData = Bitmap(new §for set else§()).bitmapData;
      
      public function §521423126142312627123423632234§()
      {
         super();
         var _loc1_:Bitmap = new Bitmap(§5214238040238053123423632234§);
         addChild(_loc1_);
         visible = false;
         §521423107012310714123423632234§.addEventListener("showNotification",this.§521423112982311311123423632234§);
         §521423107012310714123423632234§.addEventListener("hideNotification",this.§5214237578237591123423632234§);
      }
      
      private function §521423112982311311123423632234§(param1:DailyQuestNotificationEvent) : void
      {
         visible = true;
      }
      
      private function §5214237578237591123423632234§(param1:DailyQuestNotificationEvent) : void
      {
         visible = false;
      }
   }
}

