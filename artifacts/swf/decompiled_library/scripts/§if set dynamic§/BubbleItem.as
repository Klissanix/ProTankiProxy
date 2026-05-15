package §if set dynamic§
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.helper.BubbleHelper;
   
   public class BubbleItem extends BubbleHelper
   {
      
      private static var instance:BubbleItem;
      
      public function BubbleItem()
      {
         super();
         addEventListener("click",this.onMouseClick);
      }
      
      public static function hide() : void
      {
         if(instance != null)
         {
            instance.hide();
         }
      }
      
      public static function createBubble(param1:String, param2:DisplayObject, param3:DisplayObjectContainer) : BubbleItem
      {
         if(instance == null)
         {
            instance = new BubbleItem();
         }
         instance.text = param1;
         instance.arrowLehgth = 20;
         instance.arrowAlign = 12;
         instance.x = param2.x;
         instance.y = param2.y - 45;
         instance.targetPoint = new Point(param2.x,20);
         instance.draw(instance.size);
         param3.addChild(instance);
         return instance;
      }
      
      private function hide() : void
      {
         if(parent)
         {
            parent.removeChild(this);
         }
      }
      
      private function onMouseClick(param1:MouseEvent) : void
      {
         this.hide();
      }
   }
}

