package projects.tanks.clients.fp10.libraries.tanksservices.service.premium
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.clearInterval;
   import flash.utils.getTimer;
   import flash.utils.setInterval;
   
   public class PremiumServiceImpl extends EventDispatcher implements PremiumService
   {
      
      private const §5214236149236162123423632234§:int = 3600;
      
      private const §const catch finally§:int = 86400;
      
      private const §5214235273235286123423632234§:int = 60000;
      
      private var §const finally set§:int;
      
      private var §5214232675232688123423632234§:uint = 0;
      
      public function PremiumServiceImpl()
      {
         super();
      }
      
      private function e473e5c5() : void
      {
         if(this.§5214232675232688123423632234§ != 0)
         {
            clearInterval(this.§5214232675232688123423632234§);
            this.§5214232675232688123423632234§ = 0;
         }
      }
      
      public function hasPremium() : Boolean
      {
         return getTimer() < this.§const finally set§;
      }
      
      public function destroy() : void
      {
         this.e473e5c5();
      }
      
      public function getTimeLeft() : int
      {
         return this.§const finally set§ - getTimer();
      }
      
      private function update() : void
      {
         if(!this.hasPremium())
         {
            dispatchEvent(new Event("change"));
            this.e473e5c5();
         }
      }
      
      public function updateTimeLeft(param1:int) : void
      {
         param1 = Math.min(param1,86400 * 2);
         this.§const finally set§ = getTimer() + param1 * 1000;
         this.e473e5c5();
         if(param1 > 0)
         {
            this.§5214232675232688123423632234§ = setInterval(this.update,60000);
         }
         dispatchEvent(new Event("change"));
      }
   }
}

