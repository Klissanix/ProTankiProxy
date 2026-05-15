package protanki.launcher.locales.BR
{
   import protanki.launcher.Locale;
   import protanki.launcher.controls.bottompanel.PartnerLogo.PartnerLogo;
   import protanki.launcher.locales.Locales;
   import protanki.launcher.locales.TextLinkPair;
   
   public class LocaleBR extends Locale
   {
      
      public function LocaleBR()
      {
         super();
         name = Locales.BR;
         playText = "JOGUE";
         exitText = "EXIT";
         partners.push(PartnerLogo.DISCORD,"https://discord.gg/protanki");
         partners.push(PartnerLogo.TELEGRAM,"https://t.me/protanki");
         game = new TextLinkPair("Jogo","https://pro-tanki.com/br");
         wiki = new TextLinkPair("Wiki","https://wiki.pro-tanki.com/br");
      }
   }
}

