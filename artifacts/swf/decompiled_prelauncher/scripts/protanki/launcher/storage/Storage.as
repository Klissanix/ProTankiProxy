package protanki.launcher.storage
{
   import flash.filesystem.File;
   import flash.filesystem.FileMode;
   import flash.filesystem.FileStream;
   import flash.net.SharedObject;
   import protanki.launcher.Locale;
   import protanki.launcher.LocalesFactory;
   import protanki.launcher.locales.Locales;
   
   public class Storage
   {
      
      private static const DISPLAY_STATE:String = "display.bin";
      
      private static const LAST_LOCALE:String = "LAST_LOCALE";
      
      private static const LAST_SERVER:String = "LAST_SERVER";
      
      private static const DEFAULT_STATE:DisplayState = new DisplayState(100,100,1024,768,false);
      
      private static var sharedObject:SharedObject = SharedObject.getLocal("launcherStorage");
      
      public function Storage()
      {
         super();
      }
      
      private static function getProperty(param1:String) : Object
      {
         return sharedObject.data.hasOwnProperty(param1) ? sharedObject.data[param1] : null;
      }
      
      public static function set lastSessionLocale(param1:int) : void
      {
         sharedObject.data[LAST_LOCALE] = param1;
         sharedObject.flush();
      }
      
      public static function setBattleServer(param1:int) : void
      {
         sharedObject.data[LAST_SERVER] = param1;
         sharedObject.flush();
      }
      
      public static function setDisplayState(param1:int, param2:int, param3:int, param4:int, param5:Boolean) : void
      {
         var fileStream:FileStream = null;
         var x:int = param1;
         var y:int = param2;
         var width:int = param3;
         var height:int = param4;
         var isInFullscreen:Boolean = param5;
         var file:File = File.applicationStorageDirectory.resolvePath(DISPLAY_STATE);
         try
         {
            fileStream = new FileStream();
            fileStream.open(file,FileMode.WRITE);
            fileStream.writeInt(x);
            fileStream.writeInt(y);
            fileStream.writeInt(width);
            fileStream.writeInt(height);
            fileStream.writeBoolean(isInFullscreen);
            fileStream.close();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function getLastSessionLocale(param1:Locale) : Locale
      {
         var _loc2_:Object = getProperty(LAST_LOCALE);
         return _loc2_ == null ? param1 : LocalesFactory.getLocale(Locales.list[int(_loc2_)]);
      }
      
      public static function getDisplayState() : DisplayState
      {
         var state:DisplayState;
         var fileStream:FileStream = null;
         var file:File = File.applicationStorageDirectory.resolvePath(DISPLAY_STATE);
         if(!file.exists)
         {
            return DEFAULT_STATE;
         }
         state = null;
         try
         {
            fileStream = new FileStream();
            fileStream.open(file,FileMode.READ);
            state = new DisplayState(fileStream.readInt(),fileStream.readInt(),fileStream.readInt(),fileStream.readInt(),fileStream.readBoolean());
            fileStream.close();
         }
         catch(e:Error)
         {
            state = DEFAULT_STATE;
         }
         finally
         {
            return state;
         }
      }
   }
}

