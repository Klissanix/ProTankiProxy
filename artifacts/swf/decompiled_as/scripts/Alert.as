package
{
   import flash.events.LocationChangeEvent;
   import flash.media.StageWebView;
   
   public class Alert
   {
      
      public function Alert()
      {
         super();
      }
      
      public static function showMessage(param1:String) : void
      {
         var text:String = param1;
         var stageWebView:StageWebView = new StageWebView(true);
         var listener:Function = function(param1:LocationChangeEvent):void
         {
            if(param1.location == "about:blank")
            {
               stageWebView.removeEventListener("locationChanging",listener);
               stageWebView.dispose();
               stageWebView = null;
            }
         };
         stageWebView.addEventListener("locationChanging",listener);
         stageWebView.loadString("<!DOCTYPE html><html lang=\'en\'><head><meta charset=\'utf-8\'><title>ProTanki</title><script>alert(\'" + text + "\');this.location=\'about:blank\';</script></head><body></body></html>");
      }
   }
}

