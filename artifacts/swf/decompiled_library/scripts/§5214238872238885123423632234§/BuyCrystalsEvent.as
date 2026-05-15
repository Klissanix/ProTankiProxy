package §5214238872238885123423632234§
{
   import flash.events.Event;
   
   public class BuyCrystalsEvent extends Event
   {
      
      public static const §null for native§:String = "BuyCrystalsEvent.BuyCrystals";
      
      private var §5214231739231752123423632234§:int;
      
      public function BuyCrystalsEvent(param1:int)
      {
         super("BuyCrystalsEvent.BuyCrystals");
         this.§5214231739231752123423632234§ = param1;
      }
      
      public function getCrystalsToBuy() : int
      {
         return this.§5214231739231752123423632234§;
      }
   }
}

