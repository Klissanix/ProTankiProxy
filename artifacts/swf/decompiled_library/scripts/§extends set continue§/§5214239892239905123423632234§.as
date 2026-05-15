package §extends set continue§
{
   import §5214232446232459123423632234§.§5214231834231847123423632234§;
   import §5214232446232459123423632234§.§52142351023523123423632234§;
   import §5214232446232459123423632234§.§if for switch§;
   import alternativa.tanks.service.settings.keybinding.GameActionEnum;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.services.targeting.§521423108262310839123423632234§;
   import alternativa.tanks.services.targeting.TargetingInputManager;
   import alternativa.tanks.services.targeting.TargetingModeService;
   
   public class §5214239892239905123423632234§ implements §52142351023523123423632234§, §521423108262310839123423632234§
   {
      
      public static var §5214235930235943123423632234§:TargetingModeService;
      
      public static var §5214234884234897123423632234§:TargetingInputManager;
      
      public static var §extends package override§:KeysBindingService;
      
      protected var §finally continue§:§if for switch§;
      
      protected var §case const set§:§5214231834231847123423632234§;
      
      protected var §5214239491239504123423632234§:§5214231834231847123423632234§;
      
      public function §5214239892239905123423632234§(param1:§if for switch§)
      {
         super();
         this.§finally continue§ = param1;
         this.§null break§(§5214231834231847123423632234§.§return for true§);
         §5214235930235943123423632234§.setKeyMap(§5214231834231847123423632234§.§return for true§);
      }
      
      public function mouseLeftButton(param1:Boolean, param2:Boolean) : Boolean
      {
         return true;
      }
      
      public function §else if§() : void
      {
         §5214234884234897123423632234§.addListener(this);
         if(this.§5214239491239504123423632234§ == null)
         {
            this.§5214239491239504123423632234§ = §5214235930235943123423632234§.getKeyMap();
            §5214235930235943123423632234§.setKeyMap(this.§case const set§);
         }
         this.§5214239692239705123423632234§();
      }
      
      protected function §null break§(param1:§5214231834231847123423632234§) : void
      {
         this.§case const set§ = param1;
      }
      
      public function §use use null§() : void
      {
         §5214234884234897123423632234§.removeListener(this);
         if(this.§5214239491239504123423632234§ != null)
         {
            §5214235930235943123423632234§.setKeyMap(this.§5214239491239504123423632234§);
            this.§5214239491239504123423632234§ = null;
         }
      }
      
      public function mouseLocked(param1:Boolean) : void
      {
      }
      
      public function mouseRightButton(param1:Boolean, param2:Boolean) : Boolean
      {
         return true;
      }
      
      private function §5214235494235507123423632234§(param1:GameActionEnum) : void
      {
         if(!param1)
         {
            return;
         }
         if(this.§finally continue§.§finally for case§(param1.value))
         {
            this.§class set static§(param1,true);
         }
      }
      
      public function mouseRelativeMovement(param1:Number, param2:Number) : void
      {
      }
      
      public function keyboardButton(param1:uint, param2:Boolean, param3:Boolean) : Boolean
      {
         var _loc4_:GameActionEnum = §extends package override§.getBindingAction(param1,false);
         if(!_loc4_)
         {
            return true;
         }
         this.§finally continue§.§5214231438231451123423632234§(_loc4_.value,param2);
         this.§class set static§(_loc4_,param2);
         return true;
      }
      
      public function §5214232185232198123423632234§(param1:Number) : void
      {
      }
      
      private function §5214239692239705123423632234§() : void
      {
         this.§5214235494235507123423632234§(this.§case const set§.§5214234885234898123423632234§);
         this.§5214235494235507123423632234§(this.§case const set§.§super var extends§);
         this.§5214235494235507123423632234§(this.§case const set§.§5214231099231112123423632234§);
         this.§5214235494235507123423632234§(this.§case const set§.§super set extends§);
         this.§5214235494235507123423632234§(this.§case const set§.§5214238638238651123423632234§);
      }
      
      public function mouseWheel(param1:int) : void
      {
      }
      
      public function mouseAbsoluteMovement(param1:Number, param2:Number) : void
      {
      }
      
      protected function §class set static§(param1:GameActionEnum, param2:Boolean) : void
      {
         switch(param1)
         {
            case this.§case const set§.§5214231099231112123423632234§:
               this.§finally continue§.§521423129752312988123423632234§(param2);
               break;
            case this.§case const set§.§super set extends§:
               this.§finally continue§.§5214233933233946123423632234§(param2);
               break;
            case this.§case const set§.§5214238638238651123423632234§:
               this.§finally continue§.§const package case§(param2);
               break;
            case this.§case const set§.§super var extends§:
               this.§finally continue§.§extends set true§(param2);
               break;
            case this.§case const set§.§5214234885234898123423632234§:
               this.§finally continue§.§521423114982311511123423632234§(param2);
         }
      }
   }
}

