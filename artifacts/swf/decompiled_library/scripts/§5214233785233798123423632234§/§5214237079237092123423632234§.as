package §5214233785233798123423632234§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   
   public class §5214237079237092123423632234§ extends §switch try§
   {
      
      protected var §if for while§:Bitmap;
      
      public function §5214237079237092123423632234§(param1:BitmapData = null)
      {
         super();
         if(param1 != null)
         {
            this.icon = param1;
         }
      }
      
      public function set icon(param1:BitmapData) : void
      {
         this.§if for while§ = new Bitmap(param1);
         addChild(this.§if for while§);
         this.§if for while§.x = 3;
         this.§if for while§.y = 3;
         this.width = §5214237851237864123423632234§;
      }
      
      override public function set width(param1:Number) : void
      {
         §5214237851237864123423632234§ = param1;
         §switch set do§.width = §521423110842311097123423632234§.width = §native const class§.width = §each throw§.width = §5214237851237864123423632234§;
         if(this.§if for while§ != null)
         {
            §521423139392313952123423632234§.x = 20;
            §521423139392313952123423632234§.width = §5214237851237864123423632234§ - 22;
         }
         else
         {
            §521423139392313952123423632234§.x = 2;
            §521423139392313952123423632234§.width = §5214237851237864123423632234§ - 4;
         }
      }
      
      override protected function onMouseEvent(param1:MouseEvent) : void
      {
         if(enable)
         {
            switch(param1.type)
            {
               case "mouseOver":
                  setState(2);
                  §521423139392313952123423632234§.y = 6;
                  if(this.§if for while§ != null)
                  {
                     this.§if for while§.y = 3;
                  }
                  break;
               case "mouseOut":
                  setState(1);
                  §521423139392313952123423632234§.y = 6;
                  if(this.§if for while§ != null)
                  {
                     this.§if for while§.y = 3;
                  }
                  break;
               case "mouseDown":
                  setState(3);
                  §521423139392313952123423632234§.y = 7;
                  if(this.§if for while§ != null)
                  {
                     this.§if for while§.y = 4;
                  }
                  break;
               case "mouseUp":
                  setState(1);
                  §521423139392313952123423632234§.y = 6;
                  if(this.§if for while§ != null)
                  {
                     this.§if for while§.y = 3;
                  }
            }
         }
      }
   }
}

