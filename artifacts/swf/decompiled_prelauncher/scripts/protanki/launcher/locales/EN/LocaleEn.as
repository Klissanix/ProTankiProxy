package protanki.launcher.locales.EN
{
   import protanki.launcher.Locale;
   import protanki.launcher.controls.bottompanel.PartnerLogo.PartnerLogo;
   import protanki.launcher.locales.Locales;
   import protanki.launcher.locales.TextLinkPair;
   
   public class LocaleEn extends Locale
   {
      
      public function LocaleEn()
      {
         super();
         name = Locales.EN;
         playText = "PLAY";
         exitText = "EXIT";
         partners.push(PartnerLogo.DISCORD,"https://discord.gg/protanki");
         partners.push(PartnerLogo.TELEGRAM,"https://t.me/protanki_official");
         game = new TextLinkPair("Game","https://pro-tanki.com/en");
         wiki = new TextLinkPair("Wiki","https://wiki.pro-tanki.com/en");
      }
   }
}

