package §extends set static§
{
   import §5214233191233204123423632234§.§52142316623179123423632234§;
   import §do package super§.§521423117232311736123423632234§;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   
   public class ButtonItemBase extends §521423117232311736123423632234§
   {
      
      private static const §5214233942233955123423632234§:int = 1;
      
      private static const §5214234560234573123423632234§:ColorTransform = new ColorTransform(1.09,1.09,1.09);
      
      protected var §catch use super§:Bitmap;
      
      protected var §var const§:Bitmap;
      
      protected var §5214232814232827123423632234§:int;
      
      public function ButtonItemBase(param1:§52142316623179123423632234§)
      {
         super();
         this.c6ed5f3e(param1);
         this.init();
      }
      
      private function c6ed5f3e(param1:§52142316623179123423632234§) : void
      {
         this.§catch use super§ = new Bitmap(param1.§catch use super§);
         this.§var const§ = new Bitmap(param1.§var const§);
         if(param1.§var const§ == null)
         {
            this.§var const§.bitmapData = param1.§catch use super§;
            this.§var const§.transform.colorTransform = §5214234560234573123423632234§;
         }
         addChildAt(this.§var const§,0);
         addChildAt(this.§catch use super§,0);
         this.§var const§.visible = false;
      }
      
      private function onMouseEvent(param1:MouseEvent) : void
      {
         this.§var const§.visible = param1.type == "mouseOver";
         this.§catch use super§.visible = !this.§var const§.visible;
         switch(param1.type)
         {
            case "mouseOver":
               this.§5214232814232827123423632234§ = y;
               break;
            case "mouseOut":
               y = this.§5214232814232827123423632234§;
               break;
            case "mouseUp":
               y = this.§5214232814232827123423632234§;
               break;
            case "mouseDown":
               y = this.§5214232814232827123423632234§ + 1;
         }
      }
      
      override public function destroy() : void
      {
         removeEventListener("mouseOver",this.onMouseEvent);
         removeEventListener("mouseOut",this.onMouseEvent);
         removeEventListener("mouseDown",this.onMouseEvent);
         removeEventListener("mouseUp",this.onMouseEvent);
      }
      
      public function setSkin(param1:§52142316623179123423632234§) : void
      {
         removeChild(this.§catch use super§);
         removeChild(this.§var const§);
         this.c6ed5f3e(param1);
      }
      
      protected function init() : void
      {
         buttonMode = true;
         addEventListener("mouseOver",this.onMouseEvent);
         addEventListener("mouseOut",this.onMouseEvent);
         addEventListener("mouseDown",this.onMouseEvent);
         addEventListener("mouseUp",this.onMouseEvent);
      }
   }
}

