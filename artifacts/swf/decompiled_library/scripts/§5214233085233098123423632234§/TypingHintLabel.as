package §5214233085233098123423632234§
{
   import flash.events.FocusEvent;
   import flash.text.TextField;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class TypingHintLabel extends §5214231141231154123423632234§
   {
      
      private var §5214237335237348123423632234§:TextField;
      
      public function TypingHintLabel(param1:TextField)
      {
         super();
         this.§5214237335237348123423632234§ = param1;
         param1.addEventListener("focusIn",this.a623e2f4);
         param1.addEventListener("focusOut",this.f1466490);
         mouseEnabled = false;
         color = 10987948;
      }
      
      private function f1466490(param1:FocusEvent) : void
      {
         if(this.§5214237335237348123423632234§.text.length == 0)
         {
            visible = true;
         }
      }
      
      private function a623e2f4(param1:FocusEvent) : void
      {
         visible = false;
      }
   }
}

