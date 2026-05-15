package alternativa.tanks.gui
{
   import assets.§if use implements§;
   import flash.events.MouseEvent;
   import §true switch true§.§5214237085237098123423632234§;
   
   public class ReferalStatButton extends §5214237085237098123423632234§
   {
      
      private static var §default for final§:§if use implements§ = new §if use implements§();
      
      private var §521423139112313924123423632234§:Boolean = true;
      
      public function ReferalStatButton()
      {
         super();
         addChild(§default for final§);
         §default for final§.y = 10;
      }
      
      override public function set width(param1:Number) : void
      {
         §5214237851237864123423632234§ = param1;
         §switch set do§.width = §521423110842311097123423632234§.width = §native const class§.width = §each throw§.width = §5214237851237864123423632234§;
         §521423139392313952123423632234§.width = §5214237851237864123423632234§ - 4 - §default for final§.width;
      }
      
      override public function get enable() : Boolean
      {
         return this.§521423139112313924123423632234§;
      }
      
      override public function get width() : Number
      {
         return §5214237851237864123423632234§;
      }
      
      override public function set enable(param1:Boolean) : void
      {
         this.§521423139112313924123423632234§ = param1;
         if(this.§521423139112313924123423632234§)
         {
            §catch var native§();
         }
         else
         {
            §continue catch each§();
         }
      }
      
      override protected function onMouseEvent(param1:MouseEvent) : void
      {
         if(this.§521423139112313924123423632234§)
         {
            switch(param1.type)
            {
               case "mouseOver":
                  setState(2);
                  §521423139392313952123423632234§.y = 6;
                  §default for final§.y = 10;
                  break;
               case "mouseOut":
                  setState(1);
                  §521423139392313952123423632234§.y = 6;
                  §default for final§.y = 10;
                  break;
               case "mouseDown":
                  setState(3);
                  §521423139392313952123423632234§.y = 7;
                  §default for final§.y = 11;
                  break;
               case "mouseUp":
                  setState(1);
                  §521423139392313952123423632234§.y = 6;
                  §default for final§.y = 10;
            }
         }
      }
      
      override public function set label(param1:String) : void
      {
         super.label = param1;
         §default for final§.x = §521423139392313952123423632234§.textWidth + (§521423139392313952123423632234§.width - §521423139392313952123423632234§.textWidth) / 2 + 7;
      }
   }
}

