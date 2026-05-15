package protanki.launcher.controls.buttons
{
   import flash.events.Event;
   import protanki.launcher.Locale;
   import protanki.launcher.makeup.MakeUp;
   
   public class ExitButton extends Button
   {
      
      private static var buttonRed:Class = ExitButton_buttonRed;
      
      private static var buttonRedOver:Class = ExitButton_buttonRedOver;
      
      public function ExitButton()
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Deobfuscate code" option in Settings
          * Error type: ClassCastException (class com.jpexs.decompiler.graph.model.CommaExpressionItem cannot be cast to class com.jpexs.decompiler.flash.abc.avm2.model.NewFunctionAVM2Item (com.jpexs.decompiler.graph.model.CommaExpressionItem and com.jpexs.decompiler.flash.abc.avm2.model.NewFunctionAVM2Item are in unnamed module of loader 'app'))
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override public function switchLocale(param1:Locale) : void
      {
         textField.defaultTextFormat.font = MakeUp.getFont(param1);
         textField.text = param1.exitText;
         textField.width += 5;
         textFieldToCenter();
         textField.textColor = 16751998;
      }
      
      override protected function onResize(param1:Event) : void
      {
         x = stage.stageWidth >> 1;
         y = (stage.stageHeight >> 1) + 150;
      }
   }
}

