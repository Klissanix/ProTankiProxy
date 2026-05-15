package §5214232607232620123423632234§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import §continue switch package§.§var use true§;
   import flash.display.Stage;
   import flash.events.Event;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import §var var with§.DialogWindow;
   
   public class §native set finally§ extends DialogWindow
   {
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §default finally§:IDialogsService;
      
      protected var §5214232433232446123423632234§:§var use true§;
      
      private var §5214237851237864123423632234§:Number;
      
      private var §do finally set§:Number;
      
      public function §native set finally§()
      {
         super();
         this.setEventListeners();
         this.§52142326923282123423632234§();
         §default finally§ = OSGi.getInstance().getService(IDialogsService) as IDialogsService;
         §default finally§.addDialog(this);
      }
      
      override public function removeEventListeners() : void
      {
         §5214235917235930123423632234§.stage.removeEventListener("resize",this.§52142326923282123423632234§);
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§52142326923282123423632234§();
      }
      
      override public function setEventListeners() : void
      {
         §5214235917235930123423632234§.stage.addEventListener("resize",this.§52142326923282123423632234§);
      }
      
      override public function get height() : Number
      {
         return this.§do finally set§;
      }
      
      public function destroy() : void
      {
         this.removeEventListeners();
         if(this.§5214232433232446123423632234§ != null)
         {
            removeChild(this.§5214232433232446123423632234§);
         }
         this.§5214232433232446123423632234§ = null;
         §5214239382239395123423632234§.removeDialog(this);
      }
      
      public function §52142326923282123423632234§(param1:Event = null) : void
      {
         var _loc2_:Stage = §5214235917235930123423632234§.stage;
         var _loc3_:int = Math.min(Math.max(970,_loc2_.stageWidth / Display.§521423132512313264123423632234§ - 40),1000);
         this.§5214237851237864123423632234§ = _loc3_;
         this.§do finally set§ = Math.min(Math.max(§5214235917235930123423632234§.stage.stageHeight / Display.§521423132512313264123423632234§ - 60,499),800);
         this.§5214232433232446123423632234§.width = this.§5214237851237864123423632234§;
      }
      
      override public function get width() : Number
      {
         return this.§5214237851237864123423632234§;
      }
      
      override public function set height(param1:Number) : void
      {
         this.§do finally set§ = param1;
         this.§52142326923282123423632234§();
      }
   }
}

