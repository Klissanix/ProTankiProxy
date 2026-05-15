package §get package override§
{
   import §5214231074231087123423632234§.CaptchaLocation;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   
   public class CaptchaParser
   {
      
      public function CaptchaParser()
      {
         super();
      }
      
      public static function parse(param1:Vector.<int>, param2:Function, param3:CaptchaLocation) : void
      {
         var i:int;
         var loader:Loader;
         var captcha:Vector.<int> = param1;
         var onBitmapParsedHandler:Function = param2;
         var location:CaptchaLocation = param3;
         var len:int = int(captcha.length);
         var byteArray:ByteArray = new ByteArray();
         byteArray.length = len;
         i = 0;
         while(i < len)
         {
            byteArray[i] = captcha[i];
            i = i + 1;
         }
         loader = new Loader();
         loader.contentLoaderInfo.addEventListener("complete",function(param1:Event):void
         {
            onBitmapParsedHandler.apply(null,[loader.content as Bitmap,location]);
            (param1.target as EventDispatcher).removeEventListener(param1.type,arguments.callee);
         });
         loader.loadBytes(byteArray);
      }
   }
}

