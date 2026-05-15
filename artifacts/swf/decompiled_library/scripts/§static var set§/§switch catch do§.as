package §static var set§
{
   import §5214235774235787123423632234§.§super var dynamic§;
   import §5214235774235787123423632234§.§throw catch return§;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import flash.events.Event;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import §set package in§.ClientObject;
   
   public class §switch catch do§ implements §521423117662311779123423632234§
   {
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §5214237923237936123423632234§:LocalTankInfoService;
      
      private var §use catch do§:ClientObject;
      
      public function §switch catch do§(param1:ClientObject)
      {
         super();
         this.§use catch do§ = param1;
         §5214235917235930123423632234§.stage.addEventListener("activate",this.§521423100172310030123423632234§);
         §5214235917235930123423632234§.stage.addEventListener("deactivate",this.§521423128212312834123423632234§);
      }
      
      private function §521423128212312834123423632234§(param1:Event) : void
      {
         var _loc2_:§throw catch return§ = this.§5214237440237453123423632234§();
         _loc2_.§get catch import§(32,true);
      }
      
      private function §521423100172310030123423632234§(param1:Event) : void
      {
         var _loc2_:§throw catch return§ = this.§5214237440237453123423632234§();
         _loc2_.§52142390823921123423632234§(32);
      }
      
      public function close() : void
      {
         this.§use catch do§ = null;
         §5214235917235930123423632234§.stage.removeEventListener("activate",this.§521423100172310030123423632234§);
         §5214235917235930123423632234§.stage.removeEventListener("deactivate",this.§521423128212312834123423632234§);
      }
      
      private function §5214237440237453123423632234§() : §throw catch return§
      {
         var _loc1_:§super var dynamic§ = §super var dynamic§(§5214237923237936123423632234§);
         return _loc1_.§5214237440237453123423632234§(this.§use catch do§);
      }
   }
}

