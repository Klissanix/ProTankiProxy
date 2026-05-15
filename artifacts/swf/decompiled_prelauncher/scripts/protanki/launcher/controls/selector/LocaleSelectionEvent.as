package protanki.launcher.controls.selector
{
   import flash.events.Event;
   import protanki.launcher.Locale;
   
   public class LocaleSelectionEvent extends Event
   {
      
      public static const SELECTION:String = "selection";
      
      public var locale:Locale;
      
      public function LocaleSelectionEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}

