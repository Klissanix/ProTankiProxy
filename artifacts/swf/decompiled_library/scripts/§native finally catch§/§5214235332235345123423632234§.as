package §native finally catch§
{
   import §const use implements§.§dynamic include§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §5214235332235345123423632234§ extends Sprite
   {
      
      private static const §521423131492313162123423632234§:Class = §e28gb43_png$de3c26d4c58eefeb1496209cf5329c78-1148992690§;
      
      private static const §521423134272313440123423632234§:BitmapData = Bitmap(new §521423131492313162123423632234§()).bitmapData;
      
      private static const §5214234014234027123423632234§:Class = e7073a4_png$95a7968aa735f3fd0e409172f9c059932087363846;
      
      private static const §use use set§:BitmapData = Bitmap(new §5214234014234027123423632234§()).bitmapData;
      
      private static const §5214237004237017123423632234§:Class = c781a4e_png$109390a520ba1ca2a85ce5e66303b222998292558;
      
      private static const §class const return§:BitmapData = Bitmap(new §5214237004237017123423632234§()).bitmapData;
      
      private static const §extends for while§:Class = §c5068g7_png$98840144c53ed81abb563b77b080c13c-2083276959§;
      
      private static const §if for get§:BitmapData = Bitmap(new §extends for while§()).bitmapData;
      
      private var §5214235131235144123423632234§:Boolean;
      
      private var §if for while§:Bitmap;
      
      private var §5214231122231135123423632234§:§dynamic include§;
      
      private var §521423140512314064123423632234§:Bitmap;
      
      private var §switch set§:Bitmap;
      
      private var §521423137222313735123423632234§:Bitmap;
      
      private var §5214238861238874123423632234§:Bitmap;
      
      public function §5214235332235345123423632234§(param1:§dynamic include§)
      {
         super();
         this.§5214231122231135123423632234§ = param1;
         this.§5214238861238874123423632234§ = new Bitmap(§class const return§);
         addChild(this.§5214238861238874123423632234§);
         this.§521423140512314064123423632234§ = new Bitmap(§521423134272313440123423632234§);
         addChild(this.§521423140512314064123423632234§);
         this.§switch set§ = new Bitmap(§if for get§);
         addChild(this.§switch set§);
         this.§521423137222313735123423632234§ = new Bitmap(§use use set§);
         addChild(this.§521423137222313735123423632234§);
         this.§if for while§ = new Bitmap(§var use implements§.§52142384723860123423632234§(param1));
         addChild(this.§if for while§);
         this.§if for while§.x = (width - this.§if for while§.width) / 2;
         this.§if for while§.y = (height - this.§if for while§.height) / 2;
         addEventListener("click",this.§default const get§);
         this.§5214235374235387123423632234§ = false;
         this.§521423130282313041123423632234§ = false;
      }
      
      public function get §throw var include§() : §dynamic include§
      {
         return this.§5214231122231135123423632234§;
      }
      
      private function §implements package null§(param1:MouseEvent) : void
      {
         this.setState(4);
      }
      
      public function set §5214235374235387123423632234§(param1:Boolean) : void
      {
         this.§5214235131235144123423632234§ = param1;
         if(this.§5214235131235144123423632234§)
         {
            this.§if for while§.y = (height - this.§if for while§.height) / 2 + 1;
            removeEventListener("mouseOver",this.§5214236640236653123423632234§);
            removeEventListener("mouseOut",this.§5214231199231212123423632234§);
            removeEventListener("mouseDown",this.§implements package null§);
            this.setState(3);
         }
         else
         {
            this.§if for while§.y = (height - this.§if for while§.height) / 2;
            this.setState(1);
            addEventListener("mouseOver",this.§5214236640236653123423632234§);
            addEventListener("mouseOut",this.§5214231199231212123423632234§);
            addEventListener("mouseDown",this.§implements package null§);
         }
      }
      
      private function §default const get§(param1:MouseEvent) : void
      {
         this.§5214235374235387123423632234§ = !this.§5214235131235144123423632234§;
         dispatchEvent(new Event("change"));
      }
      
      public function get §5214235374235387123423632234§() : Boolean
      {
         return this.§5214235131235144123423632234§;
      }
      
      private function §5214231199231212123423632234§(param1:MouseEvent) : void
      {
         this.setState(1);
      }
      
      private function §5214236640236653123423632234§(param1:MouseEvent) : void
      {
         this.setState(2);
      }
      
      public function set §521423130282313041123423632234§(param1:Boolean) : void
      {
         this.mouseChildren = !param1;
         this.mouseEnabled = !param1;
         this.buttonMode = !param1;
         this.useHandCursor = !param1;
      }
      
      private function setState(param1:int) : void
      {
         switch(param1 - 1)
         {
            case 0:
               this.§521423140512314064123423632234§.visible = true;
               this.§521423137222313735123423632234§.visible = false;
               this.§5214238861238874123423632234§.visible = false;
               this.§switch set§.visible = false;
               this.§if for while§.y = (height - this.§if for while§.height) / 2;
               break;
            case 1:
               this.§521423137222313735123423632234§.visible = true;
               this.§switch set§.visible = false;
               this.§if for while§.y = (height - this.§if for while§.height) / 2;
               break;
            case 2:
               this.§521423140512314064123423632234§.visible = false;
               this.§521423137222313735123423632234§.visible = false;
               this.§5214238861238874123423632234§.visible = true;
               this.§switch set§.visible = false;
               this.§if for while§.y = (height - this.§if for while§.height) / 2 + 1;
               break;
            case 3:
               this.§521423140512314064123423632234§.visible = false;
               this.§521423137222313735123423632234§.visible = false;
               this.§5214238861238874123423632234§.visible = false;
               this.§switch set§.visible = true;
               this.§if for while§.y = (height - this.§if for while§.height) / 2 + 1;
         }
      }
      
      public function destroy() : void
      {
         if(hasEventListener("click"))
         {
            removeEventListener("click",this.§default const get§);
         }
         if(hasEventListener("mouseOver"))
         {
            removeEventListener("mouseOver",this.§5214236640236653123423632234§);
         }
         if(hasEventListener("mouseOut"))
         {
            removeEventListener("mouseOut",this.§5214231199231212123423632234§);
         }
         if(hasEventListener("mouseDown"))
         {
            removeEventListener("mouseDown",this.§implements package null§);
         }
      }
   }
}

