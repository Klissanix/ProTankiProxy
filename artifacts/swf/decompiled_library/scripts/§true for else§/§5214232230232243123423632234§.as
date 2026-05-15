package §true for else§
{
   import §5214232446232459123423632234§.§if for switch§;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.utils.removeDisplayObject;
   import §finally if§.§521423107292310742123423632234§;
   import §finally if§.§5214233691233704123423632234§;
   import flash.events.Event;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import §set package in§.ClientObject;
   
   public class §5214232230232243123423632234§ implements §521423117662311779123423632234§
   {
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §case const default§:BattleGUIService;
      
      public static var §52142380523818123423632234§:BattleService;
      
      private var §extends var else§:§5214233691233704123423632234§;
      
      private var §5214232643232656123423632234§:§521423107292310742123423632234§;
      
      private var §finally continue§:§if for switch§;
      
      private var §for catch do§:§521423108212310834123423632234§;
      
      public function §5214232230232243123423632234§(param1:ClientObject, param2:§521423108212310834123423632234§)
      {
         super();
         this.§for catch do§ = param2;
         this.§finally continue§ = param1.getParams(§if for switch§) as §if for switch§;
         this.§extends var else§ = new §5214233691233704123423632234§();
         this.§5214232643232656123423632234§ = new §521423107292310742123423632234§();
         this.§extends var else§.§521423135922313605123423632234§(param2.§extends const const§());
         this.§5214232643232656123423632234§.§5214239463239476123423632234§(0,0);
         §case const default§.getViewportContainer().addChild(this.§extends var else§);
         §case const default§.getViewportContainer().addChild(this.§5214232643232656123423632234§);
         this.§extends var else§.addEventListener("enterFrame",this.§521423120402312053123423632234§,false,-2147483648);
         §5214235917235930123423632234§.stage.addEventListener("resize",this.§52142326923282123423632234§,false,-2147483648);
         this.§52142326923282123423632234§();
      }
      
      private function §use switch case§() : Number
      {
         return -this.§finally continue§.§final use throw§() * 180 / 3.141592653589793;
      }
      
      public function close() : void
      {
         removeDisplayObject(this.§extends var else§);
         removeDisplayObject(this.§5214232643232656123423632234§);
         this.§extends var else§.removeEventListener("enterFrame",this.§521423120402312053123423632234§);
         §5214235917235930123423632234§.stage.removeEventListener("resize",this.§52142326923282123423632234§);
      }
      
      private function §52142326923282123423632234§(param1:Event = null) : void
      {
         var _loc2_:int = §5214235917235930123423632234§.stage.stageWidth / Display.§521423132512313264123423632234§ >> 1;
         this.§extends var else§.x = _loc2_ - 70;
         this.§extends var else§.y = (§5214235917235930123423632234§.stage.stageHeight / Display.§521423132512313264123423632234§ >> 1) + 50;
         this.§5214232643232656123423632234§.x = _loc2_ + 70;
         this.§5214232643232656123423632234§.y = this.§extends var else§.y;
      }
      
      private function §521423120402312053123423632234§(param1:Event) : void
      {
         var _loc2_:int = 0;
         if(this.§for catch do§.§true use catch§())
         {
            _loc2_ = §52142380523818123423632234§.getPhysicsTime();
            this.§5214232643232656123423632234§.§5214239463239476123423632234§(this.§for catch do§.§false catch return§(_loc2_),this.§for catch do§.§5214231442231455123423632234§(_loc2_));
         }
         this.§52142326923282123423632234§();
      }
   }
}

