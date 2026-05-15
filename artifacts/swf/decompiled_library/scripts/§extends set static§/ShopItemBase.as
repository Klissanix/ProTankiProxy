package §extends set static§
{
   import §5214233191233204123423632234§.§52142316623179123423632234§;
   import §5214234291234304123423632234§.§function var implements§;
   import flash.events.MouseEvent;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class ShopItemBase extends ButtonItemBase
   {
      
      protected static const WIDTH:int = 279;
      
      protected static const §return switch if§:int = 143;
      
      protected var itemId:String;
      
      public function ShopItemBase(param1:String, param2:§52142316623179123423632234§)
      {
         this.itemId = param1;
         addEventListener("click",this.onMouseClick);
         super(param2);
      }
      
      override public function get width() : Number
      {
         return 279;
      }
      
      override public function get height() : Number
      {
         return 143;
      }
      
      protected function fixChineseCurrencyLabelRendering(param1:§5214231141231154123423632234§) : void
      {
      }
      
      public function activateDisabledFilter() : void
      {
         alpha = 0.9;
      }
      
      private function onMouseClick(param1:MouseEvent) : void
      {
         dispatchEvent(new §function var implements§(this.itemId));
      }
      
      public function method_2161() : String
      {
         return this.itemId;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         removeEventListener("click",this.onMouseClick);
      }
   }
}

