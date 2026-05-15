package §for switch catch§
{
   import projects.tanks.clients.fp10.libraries.tanksservices.service.helper.BubbleHelper;
   
   public class PanelBubbleHelper extends BubbleHelper
   {
      
      private var A:Number;
      
      private var B:Number;
      
      private var C:Number;
      
      public function PanelBubbleHelper(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.A = param1;
         this.B = param2;
         this.C = param3;
         §5214231245231258123423632234§ = 3;
         §5214234160234173123423632234§.y = 25;
      }
      
      override public function align(param1:int, param2:int) : void
      {
         if(param1 < 1000)
         {
            param1 = 1000;
         }
         §5214234160234173123423632234§.x = int(this.A * (param1 - this.B) + this.C);
         doAlign();
      }
   }
}

