package §extends use§
{
   import §5214233785233798123423632234§.§native for dynamic§;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.events.MouseEvent;
   import flash.utils.setTimeout;
   import §get for try§.§5214239113239126123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §true switch true§.§5214237566237579123423632234§;
   import §var var with§.DialogWindow;
   
   public class §case set do§ extends DialogWindow
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §default finally§:IDialogsService;
      
      private static const §implements return§:int = 100;
      
      private static const §implements package extends§:int = 220;
      
      private var §521423108472310860123423632234§:§native for dynamic§ = new §native for dynamic§(220,100);
      
      public var §null var for§:§5214237566237579123423632234§ = new §5214237566237579123423632234§("Clan1",true);
      
      public var §for for class§:§5214237566237579123423632234§ = new §5214237566237579123423632234§("Clab2",true);
      
      private var §5214236164236177123423632234§:§5214237085237098123423632234§ = new §5214237085237098123423632234§();
      
      private var §521423113902311403123423632234§:§5214237085237098123423632234§ = new §5214237085237098123423632234§();
      
      private var §5214238219238232123423632234§:§5214239113239126123423632234§;
      
      public function §case set do§(param1:§5214239113239126123423632234§)
      {
         super();
         this.§5214238219238232123423632234§ = param1;
         addChild(this.§521423108472310860123423632234§);
         this.§null var for§.x = 15;
         this.§null var for§.y = 20;
         this.§null var for§.§get const in§ = 27;
         this.§null var for§.width = 80;
         this.§null var for§.§false set false§ = 5;
         this.§null var for§.§break use continue§ = this.§5214232709232722123423632234§;
         addChild(this.§null var for§);
         var _loc2_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         _loc2_.text = "vs";
         _loc2_.x = 100;
         _loc2_.y = 25;
         addChild(_loc2_);
         this.§for for class§.x = this.§null var for§.x + this.§null var for§.width + 15;
         this.§for for class§.y = this.§null var for§.y;
         this.§for for class§.§get const in§ = 27;
         this.§for for class§.width = 80;
         this.§for for class§.§false set false§ = 5;
         this.§for for class§.§break use continue§ = this.§5214238575238588123423632234§;
         addChild(this.§for for class§);
         this.§5214236164236177123423632234§.x = 220 - 105;
         this.§5214236164236177123423632234§.y = 100 - 40;
         this.§5214236164236177123423632234§.label = §5214236363236376123423632234§.getText("ALERT_ANSWER_OK");
         this.§5214236164236177123423632234§.addEventListener("click",this.§5214232493232506123423632234§);
         this.§5214236164236177123423632234§.enable = false;
         addChild(this.§5214236164236177123423632234§);
         this.§521423113902311403123423632234§.x = 10;
         this.§521423113902311403123423632234§.y = 100 - 40;
         this.§521423113902311403123423632234§.label = §5214236363236376123423632234§.getText("ALERT_ANSWER_CANCEL");
         this.§521423113902311403123423632234§.addEventListener("click",this.§5214233152233165123423632234§);
         addChild(this.§521423113902311403123423632234§);
      }
      
      private function §5214232493232506123423632234§(param1:MouseEvent) : void
      {
         this.confirmationKeyPressed();
      }
      
      override protected function confirmationKeyPressed() : void
      {
         §default finally§.removeDialog(this);
      }
      
      override protected function cancelKeyPressed() : void
      {
         §default finally§.removeDialog(this);
         this.§5214238219238232123423632234§.§return for case§ = false;
      }
      
      public function show() : void
      {
         §default finally§.addDialog(this);
      }
      
      private function §5214233152233165123423632234§(param1:MouseEvent) : void
      {
         this.cancelKeyPressed();
      }
      
      private function §5214232709232722123423632234§() : void
      {
         setTimeout(this.§null var for§.§break var override§,1000);
      }
      
      private function §5214238575238588123423632234§() : void
      {
         setTimeout(this.§for for class§.§super var get§,2000);
      }
   }
}

