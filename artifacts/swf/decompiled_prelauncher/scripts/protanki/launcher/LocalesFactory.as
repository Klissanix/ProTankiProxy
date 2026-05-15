package protanki.launcher
{
   import flash.utils.Dictionary;
   import protanki.launcher.locales.BR.LocaleBR;
   import protanki.launcher.locales.EN.LocaleEn;
   import protanki.launcher.locales.Locales;
   import protanki.launcher.locales.RU.LocaleRU;
   import protanki.launcher.locales.UA.LocaleUA;
   
   public class LocalesFactory
   {
      
      private static var locales:Dictionary = new Dictionary();
      
      locales[Locales.RU] = new LocaleRU();
      locales[Locales.EN] = new LocaleEn();
      locales[Locales.BR] = new LocaleBR();
      locales[Locales.UA] = new LocaleUA();
      
      public function LocalesFactory()
      {
         super();
      }
      
      public static function getLocale(param1:String) : Locale
      {
         if(locales[param1] == null)
         {
            return locales[Locales.RU];
         }
         return locales[param1];
      }
   }
}

