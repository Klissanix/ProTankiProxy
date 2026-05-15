package §class switch in§
{
   import §5214232683232696123423632234§.§var var each§;
   import alternativa.osgi.service.locale.ILocaleService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blockuser.IBlockUserService;
   
   public class §super var function§ implements §5214237664237677123423632234§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §5214232378232391123423632234§:IBlockUserService;
      
      private var §super set continue§:§var var each§;
      
      public function §super var function§(param1:§var var each§)
      {
         super();
         this.§super set continue§ = param1;
      }
      
      public function §5214239313239326123423632234§(param1:Array) : Boolean
      {
         if(param1.length == 0)
         {
            return false;
         }
         var _loc2_:String = param1[0];
         §5214232378232391123423632234§.blockUser(_loc2_);
         this.§super set continue§.§while var var§(§5214236363236376123423632234§.getText("CHAT_PANEL_COMMAND_BLOCK",_loc2_));
         return true;
      }
   }
}

