package §521423124882312501123423632234§
{
   import §5214233785233798123423632234§.§include return§;
   import §5214236944236957123423632234§.DiscreteSprite;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.service.clan.user.ClanUserService;
   import §false set native§.§do var try§;
   import §false set native§.§super var catch§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.AlertUtils;
   
   public class §override switch with§ extends DiscreteSprite
   {
      
      public static var §switch use var§:ClanUserService;
      
      public static var §5214234066234079123423632234§:ClanUserInfoService;
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static const §5214236332236345123423632234§:Number = 11;
      
      public static const §521423110342311047123423632234§:Number = 9;
      
      public var §5214233258233271123423632234§:int = 0;
      
      protected var §for use each§:§do var try§;
      
      protected var §5214234519234532123423632234§:§include return§;
      
      protected var §5214233532233545123423632234§:int = 30;
      
      private var §5214237851237864123423632234§:Number;
      
      private var §do finally set§:Number;
      
      public function §override switch with§()
      {
         super();
         this.§5214234519234532123423632234§ = new §include return§(0,0,4278985229);
         addChild(this.§5214234519234532123423632234§);
         this.§for use each§ = new §do var try§();
         addChild(this.§for use each§);
         this.§52142326923282123423632234§();
      }
      
      protected function §5214232970232983123423632234§(param1:§super var catch§) : void
      {
         this.§for use each§.§include package static§(param1.§finally package with§);
      }
      
      protected function §521423135372313550123423632234§(param1:KeyboardEvent) : void
      {
         if(AlertUtils.isConfirmationKey(param1.keyCode))
         {
            param1.stopImmediatePropagation();
            this.confirmationKeyPressed();
         }
      }
      
      protected function §5214237138237151123423632234§(param1:MouseEvent) : void
      {
      }
      
      protected function §5214237071237084123423632234§(param1:§super var catch§) : void
      {
         var _loc2_:String = null;
         if(param1.type.lastIndexOf("ClansListEvent.INCOMING") >= 0)
         {
            _loc2_ = "INCOMING";
         }
         if(param1.type.lastIndexOf("ClansListEvent.OUTGOING") >= 0)
         {
            _loc2_ = "OUTGOING";
         }
         this.§for use each§.§521423999231012123423632234§(param1.§finally package with§,_loc2_);
      }
      
      override public function get height() : Number
      {
         return this.§do finally set§;
      }
      
      protected function removeEvents() : void
      {
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
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§52142326923282123423632234§();
      }
      
      public function destroy() : void
      {
         this.removeEvents();
      }
      
      protected function §52142326923282123423632234§(param1:Event = null) : void
      {
         this.§5214234519234532123423632234§.x = 9;
         this.§5214234519234532123423632234§.y = 0;
         this.§5214234519234532123423632234§.width = this.width - 2 * 9;
         this.§5214234519234532123423632234§.height = this.height - this.§5214233532233545123423632234§ - 11 - 9;
         this.§for use each§.x = this.§5214234519234532123423632234§.x + 3;
         this.§for use each§.y = 3;
         this.§for use each§.resize(this.§5214234519234532123423632234§.width - 6,this.§5214234519234532123423632234§.height - 4);
      }
      
      protected function confirmationKeyPressed() : void
      {
      }
   }
}

