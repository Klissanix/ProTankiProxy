package projects.tanks.clients.fp10.libraries.tanksservices.utils
{
   import alternativa.osgi.service.locale.ILocaleService;
   import §each var do§.§521423127822312795123423632234§;
   
   public class BattleFormatUtil
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public function BattleFormatUtil()
      {
         super();
      }
      
      public function getParkourFormatName() : String
      {
         return §5214236363236376123423632234§.getText("FORMAT_NAME_PARKOUR");
      }
      
      public function isFormatBattle(param1:§521423127822312795123423632234§, param2:Boolean) : Boolean
      {
         return param2 || param1 != §521423127822312795123423632234§.§dynamic use false§;
      }
      
      public function getShortFormatName(param1:§521423127822312795123423632234§, param2:Boolean) : String
      {
         if(param2)
         {
            return this.getParkourFormatName();
         }
         switch(param1)
         {
            case §521423127822312795123423632234§.§dynamic use false§:
               return "";
            case §521423127822312795123423632234§.§each const for§:
               return §5214236363236376123423632234§.getText("FORMAT_NAME_XP");
            case §521423127822312795123423632234§.§5214237311237324123423632234§:
               return §5214236363236376123423632234§.getText("FORMAT_NAME_BR");
            case §521423127822312795123423632234§.§try class§:
               return §5214236363236376123423632234§.getText("FORMAT_NAME_XPBR");
            default:
               return "";
         }
      }
      
      public function getEquipConstraintsFormatName(param1:§521423127822312795123423632234§) : String
      {
         if(param1 == §521423127822312795123423632234§.§dynamic use false§)
         {
            return §5214236363236376123423632234§.getText("FORMAT_NAME_NONE");
         }
         return this.getShortFormatName(param1,false);
      }
   }
}

