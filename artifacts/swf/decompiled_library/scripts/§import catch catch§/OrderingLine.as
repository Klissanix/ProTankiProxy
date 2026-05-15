package §import catch catch§
{
   import §521423100992310112123423632234§.PremiumAccountIcons;
   import §5214237509237522123423632234§.CrystalIcon;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class OrderingLine extends Sprite
   {
      
      protected var _width:Number;
      
      protected var §5214238030238043123423632234§:§5214231141231154123423632234§;
      
      protected var §5214233088233101123423632234§:§5214231141231154123423632234§;
      
      protected var §import finally§:Bitmap;
      
      public function OrderingLine(param1:String, param2:int, param3:Boolean = false)
      {
         super();
         this.§5214238030238043123423632234§ = this.c341e10b(param1);
         addChild(this.§5214238030238043123423632234§);
         this.§5214233088233101123423632234§ = this.c341e10b(param2.toString());
         addChild(this.§5214233088233101123423632234§);
         this.§import finally§ = param3 ? new Bitmap(PremiumAccountIcons.§5214236893236906123423632234§) : CrystalIcon.createSmallInstance();
         this.§import finally§.y = 4;
         addChild(this.§import finally§);
      }
      
      private function c341e10b(param1:String) : §5214231141231154123423632234§
      {
         var _loc2_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         _loc2_.autoSize = "left";
         _loc2_.wordWrap = false;
         _loc2_.multiline = true;
         _loc2_.align = "left";
         _loc2_.text = param1;
         _loc2_.§521423102842310297123423632234§ = 12;
         _loc2_.color = 5898034;
         return _loc2_;
      }
      
      override public function set width(param1:Number) : void
      {
         this._width = param1;
         var _loc2_:Number = this.§5214233088233101123423632234§.width + this.§import finally§.width;
         this.§5214233088233101123423632234§.x = this._width - _loc2_;
         this.§import finally§.x = this.§5214233088233101123423632234§.x + this.§5214233088233101123423632234§.width;
      }
   }
}

