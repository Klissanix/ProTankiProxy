package §5214232607232620123423632234§
{
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import §catch get§.§while set if§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.ui.Mouse;
   import §implements for each§.§521423120332312046123423632234§;
   import §implements for each§.§include implements§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.UserPropertiesServiceEvent;
   
   public class §function set else§ extends Sprite
   {
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      public static var §with var try§:PremiumService;
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public var §5214236571236584123423632234§:§override set catch§ = new §override set catch§();
      
      public var §521423117142311727123423632234§:§5214238929238942123423632234§ = new §5214238929238942123423632234§();
      
      private var §finally switch case§:Boolean = false;
      
      private var §5214236045236058123423632234§:§include implements§ = new §521423120332312046123423632234§();
      
      public function §function set else§()
      {
         super();
         addEventListener("addedToStage",this.§5214239889239902123423632234§);
         §52142329523308123423632234§.addEventListener("UserPropertiesServiceEvent.UPDATE_RANK",this.§throw set for§);
         §with var try§.addEventListener("change",this.§final set else§);
         var _loc1_:DisplayObject = this.§5214236571236584123423632234§.§521423131172313130123423632234§;
         _loc1_.addEventListener("click",this.§dynamic use super§);
         _loc1_.addEventListener("mouseOut",this.§case continue§);
         _loc1_.addEventListener("mouseOver",this.§5214231956231969123423632234§);
      }
      
      private function §5214232611232624123423632234§(param1:MouseEvent) : Boolean
      {
         var _loc2_:§while set if§ = this.§5214236571236584123423632234§.§521423131172313130123423632234§;
         var _loc3_:Object = param1.target;
         return _loc3_ == _loc2_.§521423113202311333123423632234§ || _loc3_ == _loc2_.§5214231992232005123423632234§ || _loc3_ == _loc2_.§super var default§;
      }
      
      internal function §52142326923282123423632234§(param1:Event = null) : void
      {
         var _loc2_:int = §5214235917235930123423632234§.stage.stageWidth / Display.§521423132512313264123423632234§;
         var _loc3_:int = Math.max(770,_loc2_);
         this.§5214236571236584123423632234§.x = 15;
         this.§521423117142311727123423632234§.§use use super§ = _loc2_ < 1100;
         this.§521423117142311727123423632234§.§5214233910233923123423632234§();
         this.§5214236571236584123423632234§.width = _loc3_ - this.§521423117142311727123423632234§.width + 13 - this.§5214236571236584123423632234§.x - 4;
         this.§521423117142311727123423632234§.x = _loc3_ - this.§521423117142311727123423632234§.width - 4;
      }
      
      private function §5214239889239902123423632234§(param1:Event) : void
      {
         this.y = 3;
         addChild(this.§5214236045236058123423632234§);
         addChild(this.§5214236571236584123423632234§);
         addChild(this.§521423117142311727123423632234§);
         removeEventListener("addedToStage",this.§5214239889239902123423632234§);
         stage.addEventListener("resize",this.§52142326923282123423632234§);
         this.§52142326923282123423632234§(null);
      }
      
      private function §final set else§(param1:Event) : void
      {
         var _loc2_:int = Math.max(915,stage.stageWidth / Display.§521423132512313264123423632234§);
         this.§5214236571236584123423632234§.x = 15;
         this.§5214236571236584123423632234§.width = _loc2_ - this.§521423117142311727123423632234§.width + 13 - this.§5214236571236584123423632234§.x - 4;
         this.§521423117142311727123423632234§.x = _loc2_ - this.§521423117142311727123423632234§.width - 4;
         this.§5214236045236058123423632234§.init(§with var try§.hasPremium(),§52142329523308123423632234§.rank);
         this.§native use set§();
      }
      
      private function §case continue§(param1:MouseEvent) : void
      {
         Mouse.cursor = "auto";
      }
      
      private function §dynamic use super§(param1:MouseEvent) : void
      {
         var _loc2_:URLRequest = null;
         if(this.§5214232611232624123423632234§(param1))
         {
            _loc2_ = new URLRequest(§52142329523308123423632234§.getUserProfileUrl(this.§5214236571236584123423632234§.§52142375323766123423632234§));
            navigateToURL(_loc2_,"_blank");
         }
      }
      
      private function §native use set§() : void
      {
         this.§5214236045236058123423632234§.y = 29 - (this.§5214236045236058123423632234§.height >> 1);
         this.§5214236045236058123423632234§.x = 38 - (this.§5214236045236058123423632234§.width >> 1);
      }
      
      public function set §continue var do§(param1:Boolean) : void
      {
         this.§finally switch case§ = param1;
         this.§521423117142311727123423632234§.§continue var do§ = this.§finally switch case§;
         this.§52142326923282123423632234§(null);
      }
      
      public function get §continue var do§() : Boolean
      {
         return this.§finally switch case§;
      }
      
      private function §throw set for§(param1:UserPropertiesServiceEvent) : void
      {
         if(this.§521423117142311727123423632234§.§return for null§())
         {
            this.§52142326923282123423632234§();
            §52142329523308123423632234§.removeEventListener("UserPropertiesServiceEvent.UPDATE_RANK",this.§throw set for§);
         }
      }
      
      private function §5214231956231969123423632234§(param1:MouseEvent) : void
      {
         if(this.§5214232611232624123423632234§(param1))
         {
            Mouse.cursor = "button";
         }
      }
      
      public function §true package final§() : void
      {
         stage.removeEventListener("resize",this.§52142326923282123423632234§);
      }
      
      public function set §5214233023233036123423632234§(param1:int) : void
      {
         this.§5214236571236584123423632234§.§5214233023233036123423632234§ = param1;
         this.§5214236045236058123423632234§.init(§with var try§.hasPremium(),param1);
         this.§native use set§();
      }
   }
}

