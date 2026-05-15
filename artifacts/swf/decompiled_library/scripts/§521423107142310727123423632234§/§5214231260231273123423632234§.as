package §521423107142310727123423632234§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.NewFriendEvent;
   
   public class §5214231260231273123423632234§ extends Sprite
   {
      
      public static var §use in§:IFriendInfoService;
      
      public static var §521423103532310366123423632234§:Class = §c42h146_png$da11891e81bf803c8b02716950136901-776867355§;
      
      private static var §5214237050237063123423632234§:BitmapData = Bitmap(new §521423103532310366123423632234§()).bitmapData;
      
      private var §521423110882311101123423632234§:Bitmap;
      
      public function §5214231260231273123423632234§()
      {
         super();
         this.init();
      }
      
      private function §case var switch§() : void
      {
         this.visible = §use in§.newAcceptedFriendsLength + §use in§.newIncomingFriendsLength > 0;
      }
      
      private function init() : void
      {
         this.§521423110882311101123423632234§ = new Bitmap(§5214237050237063123423632234§);
         addChild(this.§521423110882311101123423632234§);
         this.§case var switch§();
         §use in§.addEventListener("NewFriendEvent.ACCEPTED_CHANGE",this.§52142385623869123423632234§);
         §use in§.addEventListener("NewFriendEvent.INCOMING_CHANGE",this.§5214238979238992123423632234§);
      }
      
      private function §5214238979238992123423632234§(param1:NewFriendEvent) : void
      {
         this.§case var switch§();
      }
      
      private function §52142385623869123423632234§(param1:NewFriendEvent) : void
      {
         this.§case var switch§();
      }
   }
}

