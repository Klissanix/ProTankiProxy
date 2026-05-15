package protanki.launcher
{
   import flash.html.HTMLLoader;
   
   public class Alert
   {
      
      private static var htmlLoader:HTMLLoader;
      
      private static const html:String = "<!DOCTYPE html><html><head><meta charset=\'utf-8\'><title>ProTanki</title><script></script></head><body></body></html>";
      
      public function Alert()
      {
         super();
      }
      
      public static function showMessage(param1:String) : void
      {
         if(htmlLoader == null)
         {
            htmlLoader = new HTMLLoader();
            htmlLoader.loadString(html);
         }
         htmlLoader.window.alert(param1);
      }
   }
}

