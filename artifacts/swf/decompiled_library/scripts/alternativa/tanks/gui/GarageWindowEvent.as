package alternativa.tanks.gui
{
   import flash.events.Event;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class GarageWindowEvent extends Event
   {
      
      public static const §5214238315238328123423632234§:String = "GarageWindowEventWirehouseItemSelected";
      
      public static const §5214233318233331123423632234§:String = "GarageWindowEventStoreItemSelected";
      
      public static const §5214231773231786123423632234§:String = "GarageWindowEventBuyItem";
      
      public static const §return catch continue§:String = "GarageWindowEventSetupItem";
      
      public static const §5214235923235936123423632234§:String = "GarageWindowEventUpgradeItem";
      
      public static const §521423242337123423632234§:String = "GarageWindowEventAddCrystals";
      
      public static const §5214239246239259123423632234§:String = "GarageWindowEventDeletePresent";
      
      public var item:§521423120252312038123423632234§;
      
      public var §5214231739231752123423632234§:int = 0;
      
      public function GarageWindowEvent(param1:String, param2:§521423120252312038123423632234§, param3:int = 0)
      {
         super(param1,true,false);
         this.item = param2;
         this.§5214231739231752123423632234§ = param3;
      }
   }
}

