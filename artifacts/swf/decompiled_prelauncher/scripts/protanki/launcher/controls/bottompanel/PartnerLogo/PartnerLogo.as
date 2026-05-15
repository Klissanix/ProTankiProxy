package protanki.launcher.controls.bottompanel.PartnerLogo
{
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class PartnerLogo extends Sprite
   {
      
      private static var discordIcon:Class = PartnerLogo_discordIcon;
      
      private static var telegramIcon:Class = PartnerLogo_telegramIcon;
      
      public static var DISCORD:String = "DISCORD";
      
      public static var TELEGRAM:String = "TELEGRAM";
      
      public var actualWidth:Number = 0;
      
      private var link:String;
      
      private var type:String;
      
      public function PartnerLogo(param1:String, param2:String)
      {
         var type:String = param1;
         var link:String = param2;
         super();
         this.link = link;
         this.type = type;
         addEventListener(MouseEvent.MOUSE_OVER,function(param1:MouseEvent):void
         {
            Mouse.cursor = MouseCursor.BUTTON;
         });
         addEventListener(MouseEvent.MOUSE_OUT,function(param1:MouseEvent):void
         {
            Mouse.cursor = MouseCursor.AUTO;
         });
         addEventListener(MouseEvent.CLICK,this.onClick);
         if(type != null)
         {
            this.addLogo(this.createIconByType(type));
         }
      }
      
      private function createIconByType(param1:String) : Bitmap
      {
         switch(param1)
         {
            case DISCORD:
               return new discordIcon();
            case TELEGRAM:
               return new telegramIcon();
            default:
               throw new Error("Undefined icon type: " + param1);
         }
      }
      
      private function addLogo(param1:Bitmap) : void
      {
         this.actualWidth = param1.width;
         addChild(param1);
         param1.x = -param1.width >> 1;
         param1.y = -param1.height >> 1;
      }
      
      private function onClick(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest(this.link));
      }
   }
}

