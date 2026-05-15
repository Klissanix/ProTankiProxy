package alternativa.tanks.battle.events
{
   public class StateCorrectionEvent
   {
      
      public static const §5214232768232781123423632234§:StateCorrectionEvent = new StateCorrectionEvent(false);
      
      public static const §use var with§:StateCorrectionEvent = new StateCorrectionEvent(true);
      
      private var §5214237541237554123423632234§:Boolean;
      
      public function StateCorrectionEvent(param1:Boolean)
      {
         super();
         this.§5214237541237554123423632234§ = param1;
      }
      
      public function get mandatory() : Boolean
      {
         return this.§5214237541237554123423632234§;
      }
   }
}

