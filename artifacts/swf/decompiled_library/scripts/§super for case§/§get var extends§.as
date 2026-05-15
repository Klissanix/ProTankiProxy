package §super for case§
{
   import §521423134112313424123423632234§.§while catch function§;
   import §5214233242233255123423632234§.§521423125692312582123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.models.service.ClanService;
   import §continue switch package§.§var use true§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoService;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   
   public class §get var extends§ extends DialogWindow implements §while catch function§
   {
      
      public static var §const for import§:ClanService;
      
      public static var §5214234066234079123423632234§:ClanUserInfoService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static const §5214236332236345123423632234§:Number = 11;
      
      public static const §import var use§:Number = 7;
      
      protected var closeButton:§5214237085237098123423632234§;
      
      protected var §521423108472310860123423632234§:§var use true§;
      
      private var §5214237851237864123423632234§:Number;
      
      private var §do finally set§:Number;
      
      public function §get var extends§()
      {
         super();
         §521423125692312582123423632234§.§5214232598232611123423632234§(this);
         this.§521423108472310860123423632234§ = §var use true§.§set for static§(this.getImageHeader());
         addEventListener("addedToStage",this.§switch override§);
         this.closeButton = new §5214237085237098123423632234§();
         this.closeButton.label = §5214236363236376123423632234§.getText("CLOSE_LABEL");
         this.closeButton.addEventListener("click",this.§in catch null§);
         addChild(this.§521423108472310860123423632234§);
         addChild(this.closeButton);
         this.§521423108472310860123423632234§.width = this.width;
         this.§521423108472310860123423632234§.height = this.height;
         this.closeButton.x = this.width - this.closeButton.width - 11;
         this.closeButton.y = this.height - this.closeButton.height - 11;
         §5214239382239395123423632234§.addDialog(this);
      }
      
      protected function getImageHeader() : String
      {
         return "";
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
      }
      
      public function destroy() : void
      {
         §521423125692312582123423632234§.§5214239033239046123423632234§(this);
         §5214239382239395123423632234§.removeDialog(this);
         this.removeEvents();
      }
      
      override public function forciblyClose() : void
      {
         display.stage.focus = null;
         this.destroy();
      }
      
      protected function §in catch null§(param1:MouseEvent) : void
      {
         display.stage.focus = null;
         this.destroy();
      }
      
      protected function removeEvents() : void
      {
      }
      
      override public function set height(param1:Number) : void
      {
         this.§do finally set§ = param1;
      }
      
      override public function get height() : Number
      {
         return 0;
      }
      
      public function updateActions() : void
      {
      }
      
      protected function §switch override§(param1:Event) : void
      {
         removeEventListener("addedToStage",this.§switch override§);
      }
      
      override public function get width() : Number
      {
         return 0;
      }
   }
}

