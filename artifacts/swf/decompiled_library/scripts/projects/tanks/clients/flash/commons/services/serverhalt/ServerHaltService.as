package projects.tanks.clients.flash.commons.services.serverhalt
{
   public class ServerHaltService implements IServerHaltService
   {
      
      private var §5214236283236296123423632234§:Boolean;
      
      public function ServerHaltService()
      {
         super();
      }
      
      public function setServerHalt(param1:Boolean) : void
      {
         this.§5214236283236296123423632234§ = param1;
      }
      
      public function get isServerHalt() : Boolean
      {
         return this.§5214236283236296123423632234§;
      }
   }
}

