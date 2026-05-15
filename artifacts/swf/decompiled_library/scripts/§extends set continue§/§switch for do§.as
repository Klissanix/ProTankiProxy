package §extends set continue§
{
   import §5214232446232459123423632234§.§52142351023523123423632234§;
   import §5214232446232459123423632234§.§if for switch§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.services.targeting.§521423108262310839123423632234§;
   import alternativa.tanks.services.targeting.TargetingInputManager;
   import §finally catch with§.§throw for continue§;
   import flash.events.Event;
   
   public class §switch for do§ implements §52142351023523123423632234§, §521423108262310839123423632234§
   {
      
      public static var §5214238800238813123423632234§:TargetingInputManager;
      
      public static var §5214237923237936123423632234§:LocalTankInfoService;
      
      public static var §521423998231011123423632234§:ISettingsService;
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      private static const §extends package switch§:Number = 0.0001;
      
      private static var §get catch default§:int = 0;
      
      protected var §finally continue§:§if for switch§;
      
      private var §5214231357231370123423632234§:Number;
      
      private var §5214234962234975123423632234§:Number;
      
      private var §521423131102313123123423632234§:Boolean;
      
      public function §switch for do§(param1:§if for switch§)
      {
         super();
         this.§finally continue§ = param1;
         this.§5214231357231370123423632234§ = 0;
         §get catch default§ = §521423998231011123423632234§.mouseSensitivity;
      }
      
      public function §else if§() : void
      {
         §5214238800238813123423632234§.addListener(this);
         §5214235917235930123423632234§.stage.addEventListener("mouseLeave",this.§set const super§);
         §get catch default§ = §521423998231011123423632234§.mouseSensitivity;
         var _loc1_:§5214239411239424123423632234§ = §5214237923237936123423632234§.getLocalTank();
         this.§5214234962234975123423632234§ = _loc1_.§5214237350237363123423632234§();
         this.§5214231357231370123423632234§ = §throw for continue§.§package use extends§(this.§5214234962234975123423632234§ + this.§5214234983234996123423632234§());
         this.§in switch use§();
         this.§finally continue§.§5214233569233582123423632234§(this.§5214231357231370123423632234§);
         this.§521423131102313123123423632234§ = false;
      }
      
      protected function §in switch use§() : void
      {
         this.§finally continue§.§in switch use§(this.§5214231357231370123423632234§ - this.§5214234962234975123423632234§);
      }
      
      public function mouseRightButton(param1:Boolean, param2:Boolean) : Boolean
      {
         this.§521423131102313123123423632234§ = param1;
         this.§finally continue§.§super const finally§();
         return true;
      }
      
      private function §set const super§(param1:Event) : void
      {
         this.§521423131102313123123423632234§ = false;
      }
      
      public function mouseWheel(param1:int) : void
      {
      }
      
      public function mouseLocked(param1:Boolean) : void
      {
         §get catch default§ = §521423998231011123423632234§.mouseSensitivity;
      }
      
      public function keyboardButton(param1:uint, param2:Boolean, param3:Boolean) : Boolean
      {
         return true;
      }
      
      public function mouseRelativeMovement(param1:Number, param2:Number) : void
      {
         this.§5214231357231370123423632234§ -= param1 * §get catch default§ * 0.0001;
         this.§5214231357231370123423632234§ = §throw for continue§.§package use extends§(this.§5214231357231370123423632234§);
      }
      
      public function mouseAbsoluteMovement(param1:Number, param2:Number) : void
      {
      }
      
      protected function §5214234983234996123423632234§() : Number
      {
         return this.§finally continue§.§final use throw§();
      }
      
      public function §use use null§() : void
      {
         §5214235917235930123423632234§.stage.removeEventListener("mouseLeave",this.§set const super§);
         §5214238800238813123423632234§.removeListener(this);
         this.§finally continue§.§5214234721234734123423632234§();
         this.§finally continue§.§include const if§();
      }
      
      public function mouseLeftButton(param1:Boolean, param2:Boolean) : Boolean
      {
         return true;
      }
      
      public function §5214232185232198123423632234§(param1:Number) : void
      {
         var _loc2_:§5214239411239424123423632234§ = §5214237923237936123423632234§.getLocalTank();
         this.§5214234962234975123423632234§ = _loc2_.§5214237350237363123423632234§();
         if(!this.§521423131102313123123423632234§)
         {
            this.§in switch use§();
         }
         this.§finally continue§.§5214233569233582123423632234§(this.§5214231357231370123423632234§);
      }
   }
}

