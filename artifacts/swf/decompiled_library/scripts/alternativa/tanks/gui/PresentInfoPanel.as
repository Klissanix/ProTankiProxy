package alternativa.tanks.gui
{
   import §521423133592313372123423632234§.DateFormatter;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Sprite;
   import §true switch true§.§5214231141231154123423632234§;
   import §try const default§.§5214234011234024123423632234§;
   
   public class PresentInfoPanel extends Sprite
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §true use import§:§5214231141231154123423632234§;
      
      private var §5214231485231498123423632234§:§5214234011234024123423632234§;
      
      private var §break for var§:§5214231141231154123423632234§;
      
      private var §extends for package§:§5214231141231154123423632234§;
      
      public function PresentInfoPanel(param1:int)
      {
         var _loc2_:§5214231141231154123423632234§ = null;
         super();
         this.§true use import§ = new §5214231141231154123423632234§();
         this.§true use import§.text = §5214236363236376123423632234§.getText("PRESENT_INFO_FROM_LABEL");
         this.§true use import§.color = 381208;
         addChild(this.§true use import§);
         this.§break for var§ = new §5214231141231154123423632234§();
         this.§break for var§.y = this.§true use import§.height;
         this.§break for var§.color = 381208;
         addChild(this.§break for var§);
         _loc2_ = new §5214231141231154123423632234§();
         _loc2_.y = this.§break for var§.y + this.§break for var§.height + 12;
         _loc2_.text = §5214236363236376123423632234§.getText("PRESENT_INFO_MESSAGE_LABEL");
         _loc2_.color = 381208;
         addChild(_loc2_);
         this.§extends for package§ = new §5214231141231154123423632234§();
         this.§extends for package§.multiline = true;
         this.§extends for package§.wordWrap = true;
         this.§extends for package§.width = param1;
         this.§extends for package§.color = 381208;
         this.§extends for package§.y = _loc2_.y + this.§break for var§.height + 12;
         addChild(this.§extends for package§);
      }
      
      public function destroyPresenterLabel() : void
      {
         if(this.§5214231485231498123423632234§ != null)
         {
            if(contains(this.§5214231485231498123423632234§))
            {
               removeChild(this.§5214231485231498123423632234§);
            }
            this.§5214231485231498123423632234§ = null;
         }
      }
      
      public function destroy() : void
      {
         this.destroyPresenterLabel();
      }
      
      public function setMessageWidth(param1:Number) : void
      {
         this.§extends for package§.width = param1;
      }
      
      public function update(param1:String, param2:Date, param3:String) : void
      {
         this.destroyPresenterLabel();
         this.§5214231485231498123423632234§ = new §5214234011234024123423632234§(param1);
         this.§5214231485231498123423632234§.x = this.§true use import§.textWidth + 2;
         addChild(this.§5214231485231498123423632234§);
         this.§break for var§.text = §5214236363236376123423632234§.getText("PRESENT_INFO_DATE_LABEL") + " " + DateFormatter.formatDateToLocalized(param2) + " " + DateFormatter.formatTime(param2);
         this.§extends for package§.text = param3;
      }
   }
}

