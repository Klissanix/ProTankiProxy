package protanki.launcher.locales.RU
{
   import protanki.launcher.Locale;
   import protanki.launcher.controls.bottompanel.PartnerLogo.PartnerLogo;
   import protanki.launcher.locales.Locales;
   import protanki.launcher.locales.TextLinkPair;
   
   public class LocaleRU extends Locale
   {
      
      public function LocaleRU()
      {
         super();
         name = Locales.RU;
         playText = "ИГРАТЬ";
         exitText = "ВЫХОД";
         partners.push(PartnerLogo.DISCORD,"https://discord.gg/protanki");
         partners.push(PartnerLogo.TELEGRAM,"https://t.me/protanki_official");
         game = new TextLinkPair("Игра","https://pro-tanki.com/ru");
         wiki = new TextLinkPair("Вики","https://wiki.pro-tanki.com/ru");
      }
   }
}

