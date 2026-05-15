package protanki.launcher.locales.UA
{
   import protanki.launcher.Locale;
   import protanki.launcher.controls.bottompanel.PartnerLogo.PartnerLogo;
   import protanki.launcher.locales.Locales;
   import protanki.launcher.locales.TextLinkPair;
   
   public class LocaleUA extends Locale
   {
      
      public function LocaleUA()
      {
         super();
         name = Locales.UA;
         playText = "ГРАТИ";
         exitText = "ВИХІД";
         partners.push(PartnerLogo.DISCORD,"https://discord.gg/protanki");
         partners.push(PartnerLogo.TELEGRAM,"https://t.me/protanki_official");
         game = new TextLinkPair("Гра","https://pro-tanki.com/ua");
         wiki = new TextLinkPair("Вікі","https://wiki.pro-tanki.com/ua");
      }
   }
}

