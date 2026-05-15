package alternativa.tanks.services.ping
{
   public class PingServiceImpl implements PingService
   {
      
      private var ping:int;
      
      public function PingServiceImpl()
      {
         super();
      }
      
      public function setPing(param1:int) : void
      {
         this.ping = param1;
      }
      
      public function getPing() : int
      {
         return this.ping;
      }
   }
}

