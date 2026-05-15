package §null set var§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.helper.BubbleHelper;
   
   public class FirstBattleFightHelper extends BubbleHelper
   {
      
      public function FirstBattleFightHelper()
      {
         super();
         var _loc1_:ILocaleService = ILocaleService(OSGi.getInstance().getService(ILocaleService));
         text = _loc1_.getText("HELP_PANEL_ACHIEVEMENTS_FIRST_BATTLE_TEXT");
         arrowLehgth = int(_loc1_.getText("HELP_PANEL_ACHIEVEMENTS_FIRST_BATTLE_ARROW_LENGTH"));
         arrowAlign = 33;
         §5214231245231258123423632234§ = 3;
      }
   }
}

