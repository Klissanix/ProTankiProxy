package §switch set for§
{
   import flash.display.Bitmap;
   
   public class §52142393623949123423632234§ extends §5214237394237407123423632234§
   {
      
      protected var icon:Bitmap;
      
      public function §52142393623949123423632234§(param1:String, param2:Class)
      {
         super(new §5214232540232553123423632234§());
         enabled = true;
         §5214236090236103123423632234§ = 12;
         §true catch with§ = 22;
         §case catch import§ = 6;
         §521423139392313952123423632234§.align = "left";
         §521423139392313952123423632234§.autoSize = "left";
         §521423139392313952123423632234§.text = param1;
         this.icon = new param2();
         §default var break§.addChild(this.icon);
         this.§do import§();
      }
      
      protected function §do import§() : void
      {
         this.icon.x = 30 - this.icon.bitmapData.width >> 1;
         this.icon.y = 30 - this.icon.bitmapData.height >> 1;
      }
      
      override public function set width(param1:Number) : void
      {
         if(§521423139392313952123423632234§.visible)
         {
            if(Boolean(this.icon) && this.icon.visible)
            {
               §521423139392313952123423632234§.x = 21 + (param1 - 21 - §521423139392313952123423632234§.width >> 1);
            }
            else
            {
               §521423139392313952123423632234§.x = param1 - §521423139392313952123423632234§.width >> 1;
            }
         }
         super.width = param1;
      }
   }
}

