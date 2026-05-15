package §static switch in§
{
   import §5214233785233798123423632234§.§native for dynamic§;
   import alternativa.osgi.service.display.Display;
   import §extends package get§.§5214235856235869123423632234§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §true switch true§.§5214237555237568123423632234§;
   
   public class §521423125282312541123423632234§ extends Sprite
   {
      
      private const §52142343223445123423632234§:int = 11;
      
      private const §5214237400237413123423632234§:Point = new Point(104,33);
      
      private const §true finally const§:int = 300;
      
      private var §521423108472310860123423632234§:§native for dynamic§;
      
      private var label:§5214231141231154123423632234§;
      
      private var §5214237335237348123423632234§:§5214237555237568123423632234§;
      
      private var §5214236164236177123423632234§:§5214237085237098123423632234§;
      
      public function §521423125282312541123423632234§()
      {
         super();
         addEventListener("addedToStage",this.§switch override§);
      }
      
      public function get §import var true§() : String
      {
         return this.§5214237335237348123423632234§.§52142339223405123423632234§.text;
      }
      
      private function §continue use each§(param1:Event) : void
      {
         stage.removeEventListener("resize",§finally package package§);
      }
      
      private function §5214232493232506123423632234§(param1:MouseEvent) : void
      {
         dispatchEvent(new §5214235856235869123423632234§());
      }
      
      private function §switch override§(param1:Event) : void
      {
         this.§521423108472310860123423632234§ = new §native for dynamic§();
         addChild(this.§521423108472310860123423632234§);
         this.§521423108472310860123423632234§.width = 300 + 11 * 2;
         this.label = new §5214231141231154123423632234§();
         addChild(this.label);
         this.label.bold = true;
         this.label.text = "Please, enter your invite code and keep it:";
         this.label.x = Math.round((this.§521423108472310860123423632234§.width - this.label.textWidth) * 0.5) - 7;
         this.label.y = 11;
         this.§5214237335237348123423632234§ = new §5214237555237568123423632234§();
         addChild(this.§5214237335237348123423632234§);
         this.§5214237335237348123423632234§.width = 300;
         this.§5214237335237348123423632234§.x = Math.round((this.§521423108472310860123423632234§.width - this.§5214237335237348123423632234§.width) * 0.5) + 5;
         this.§5214237335237348123423632234§.y = this.label.y + this.label.textHeight + 5;
         this.§5214237335237348123423632234§.§false set false§ = 32;
         this.§5214236164236177123423632234§ = new §5214237085237098123423632234§();
         addChild(this.§5214236164236177123423632234§);
         this.§5214236164236177123423632234§.label = "Ok";
         this.§5214236164236177123423632234§.x = Math.round((this.§521423108472310860123423632234§.width - this.§5214237400237413123423632234§.x) * 0.5);
         this.§5214236164236177123423632234§.y = this.§5214237335237348123423632234§.y + this.§5214237335237348123423632234§.height + 5;
         this.§5214236164236177123423632234§.addEventListener("click",this.§5214232493232506123423632234§,false,0,true);
         this.§5214237335237348123423632234§.addEventListener("keyDown",this.§null var class§,false,0,true);
         this.§521423108472310860123423632234§.height = this.§5214236164236177123423632234§.y + this.§5214237400237413123423632234§.y + 11;
         this.§finally package package§();
         stage.addEventListener("resize",this.§finally package package§);
         addEventListener("removedFromStage",this.§continue use each§);
      }
      
      private function §null var class§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 13)
         {
            dispatchEvent(new §5214235856235869123423632234§());
         }
      }
      
      private function §finally package package§(param1:Event = null) : void
      {
         x = Math.round((stage.stageWidth / Display.§521423132512313264123423632234§ - width) * 0.5);
         y = Math.round((stage.stageHeight / Display.§521423132512313264123423632234§ - height) * 0.5);
      }
      
      public function §5214232013232026123423632234§() : void
      {
         this.label.text = "Invite code is not valid";
         this.label.color = 6684672;
         this.label.thickness = 100;
         this.label.sharpness = -100;
         this.label.x = Math.round((this.§521423108472310860123423632234§.width - this.label.textWidth) * 0.5) - 7;
      }
      
      public function set §import var true§(param1:String) : void
      {
         this.§5214237335237348123423632234§.§52142339223405123423632234§.text = param1;
      }
   }
}

