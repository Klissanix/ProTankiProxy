package §true switch true§
{
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   
   public class §5214231141231154123423632234§ extends §5214238529238542123423632234§
   {
      
      private var _autoSize:String;
      
      private var §package const with§:Boolean;
      
      public function §5214231141231154123423632234§()
      {
         super();
         sharpness = 40;
         thickness = 70;
         this._autoSize = super.autoSize;
         this.§package const with§ = true;
      }
      
      private function §5214231199231212123423632234§(param1:MouseEvent) : void
      {
         Mouse.cursor = "auto";
      }
      
      public function set §521423111822311195123423632234§(param1:Boolean) : void
      {
         this.§package const with§ = param1;
         this.§final for catch§();
      }
      
      public function get §521423111822311195123423632234§() : Boolean
      {
         return this.§package const with§;
      }
      
      override public function set autoSize(param1:String) : void
      {
         super.autoSize = param1;
         this._autoSize = param1;
      }
      
      private function §5214236640236653123423632234§(param1:MouseEvent) : void
      {
         Mouse.cursor = "ibeam";
      }
      
      override public function set selectable(param1:Boolean) : void
      {
         super.selectable = param1;
         this.§final for catch§();
      }
      
      override public function set htmlText(param1:String) : void
      {
         var _loc2_:Number = NaN;
         super.autoSize = this._autoSize;
         super.htmlText = param1;
         if(super.autoSize == "center")
         {
            _loc2_ = super.width;
            super.autoSize = "none";
            super.width = Math.ceil(_loc2_) + 1;
         }
      }
      
      private function §final for catch§() : void
      {
         if(super.selectable && this.§package const with§)
         {
            addEventListener("mouseOver",this.§5214236640236653123423632234§);
            addEventListener("mouseOut",this.§5214231199231212123423632234§);
         }
         else if(hasEventListener("mouseOver"))
         {
            removeEventListener("mouseOver",this.§5214236640236653123423632234§);
            removeEventListener("mouseOut",this.§5214231199231212123423632234§);
         }
      }
   }
}

