package §false set native§
{
   import §5214231792231805123423632234§.NewClanItemIndicator;
   import §5214233396233409123423632234§.§521423126092312622123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import §override catch default§.Long;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import §super for import§.§5214238310238323123423632234§;
   
   public class §return use default§ extends §const package var§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §default finally use§:§5214238310238323123423632234§ = new §5214238310238323123423632234§();
      
      public var §package set for§:NewClanItemIndicator;
      
      private var §final var catch§:int;
      
      private var §521423116842311697123423632234§:uint = 0;
      
      public function §return use default§(param1:Long)
      {
         this.§package set for§ = this.§include switch extends§(param1);
         super(param1);
      }
      
      override public function §5214233115233128123423632234§() : void
      {
         super.§5214233115233128123423632234§();
         if(this.§default finally use§ != null && this.§final var catch§ <= 0)
         {
            this.§default finally use§.visible = true;
         }
      }
      
      private function §for catch false§() : void
      {
         clearInterval(this.§521423116842311697123423632234§);
         this.§521423116842311697123423632234§ = 0;
         this.§final var catch§ = 0;
      }
      
      public function §while const try§() : void
      {
         this.§final var catch§ = §5214234066234079123423632234§.restrictionTime;
         if(this.§final var catch§ > 0 && this.§521423116842311697123423632234§ == 0)
         {
            this.§521423116842311697123423632234§ = setInterval(this.§for catch false§,this.§final var catch§ * 1000);
         }
      }
      
      private function §include switch extends§(param1:Long) : NewClanItemIndicator
      {
         var _loc2_:NewClanItemIndicator = new NewClanItemIndicator(param1);
         _loc2_.autoSize = "left";
         _loc2_.align = "left";
         _loc2_.color = 5898034;
         _loc2_.text = §5214236363236376123423632234§.getText("FRIENDS_NEW");
         _loc2_.mouseEnabled = false;
         return _loc2_;
      }
      
      private function §521423111852311198123423632234§(param1:MouseEvent) : void
      {
         this.§default finally use§.visible = false;
         var _loc3_:§521423120252312038123423632234§ = §switch use var§.getObjectById(§finally package with§);
         var _loc2_:§521423126092312622123423632234§ = §switch use var§.userObject.adapt(§521423126092312622123423632234§) as §521423126092312622123423632234§;
         _loc2_.§extends switch package§(_loc3_);
      }
      
      override public function resize() : void
      {
         super.resize();
         this.§package set for§.x = width - 3 * 11 - this.§package set for§.width + 2;
         this.§default finally use§.x = §521423111612311174123423632234§.x - this.§default finally use§.width - 3;
         this.§default finally use§.y = §521423111612311174123423632234§.y;
      }
      
      override protected function §override do§(param1:Event = null) : void
      {
         super.§override do§();
         this.§default finally use§.visible = false;
         this.§default finally use§.addEventListener("click",this.§521423111852311198123423632234§);
         addChild(this.§default finally use§);
         this.§package set for§.updateNotifications();
         if(param1 != null)
         {
            this.§package set for§.visible = true;
         }
         addChild(this.§package set for§);
         §5214231776231789123423632234§();
         this.§while const try§();
      }
      
      override protected function §default use with§(param1:MouseEvent) : void
      {
         §521423111612311174123423632234§.visible = false;
         var _loc3_:§521423120252312038123423632234§ = §switch use var§.getObjectById(§finally package with§);
         var _loc2_:§521423126092312622123423632234§ = §switch use var§.userObject.adapt(§521423126092312622123423632234§) as §521423126092312622123423632234§;
         _loc2_.§set package break§(_loc3_);
      }
      
      override public function §import set super§() : void
      {
         super.§import set super§();
         if(this.§default finally use§ != null)
         {
            this.§default finally use§.visible = false;
         }
      }
   }
}

