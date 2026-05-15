package §521423124882312501123423632234§
{
   import §5214233396233409123423632234§.§521423126092312622123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.clan.user.ClanUserService;
   import §default var native§.§5214232092232105123423632234§;
   import §false set native§.§super var catch§;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import §include else§.§5214233871233884123423632234§;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §true switch true§.§5214237555237568123423632234§;
   
   public class §521423102602310273123423632234§ extends §override switch with§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §switch use var§:ClanUserService;
      
      private static const §get use finally§:int = 600;
      
      protected var §super package case§:§5214237085237098123423632234§ = new §5214237085237098123423632234§();
      
      protected var §5214236842236855123423632234§:§5214237555237568123423632234§ = new §5214237555237568123423632234§();
      
      protected var §package package return§:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
      
      private var §5214233199233212123423632234§:Number;
      
      private var §521423105632310576123423632234§:String = §5214236363236376123423632234§.getText("CLAN_SEARCH_CLAN_IN_LIST");
      
      public function §521423102602310273123423632234§(param1:int)
      {
         this.§5214233258233271123423632234§ = param1;
         super();
         this.§super package case§.addEventListener("click",this.§5214237138237151123423632234§);
         this.§5214236842236855123423632234§.addEventListener("focusIn",this.§5214238305238318123423632234§);
         this.§5214236842236855123423632234§.addEventListener("focusOut",this.§5214232726232739123423632234§);
         this.§5214236842236855123423632234§.§false set false§ = 20;
         this.§package package return§.mouseEnabled = false;
         this.§package package return§.color = 10987948;
         this.§super package case§.label = §5214236363236376123423632234§.getText("FRIENDS_DECLINE_ALL_BUTTON");
         this.§super package case§.enable = true;
         this.§super package case§.width = 120;
         this.§package package return§.text = this.§521423105632310576123423632234§;
         this.§5214236842236855123423632234§.addEventListener("LoginChanged",this.§if catch extends§);
         var _loc2_:§5214232092232105123423632234§ = §switch use var§.userObject.adapt(§5214232092232105123423632234§) as §5214232092232105123423632234§;
         §for use each§.§521423115682311581123423632234§(_loc2_.§5214237660237673123423632234§(),"INCOMING");
         §super var catch§.§true package static§().addEventListener("ClansListEvent.INCOMING" + "ClansListEvent.ADD",§5214237071237084123423632234§);
         §super var catch§.§true package static§().addEventListener("ClansListEvent.INCOMING" + "ClansListEvent.REMOVE",§5214232970232983123423632234§);
         this.§5214236842236855123423632234§.addEventListener("keyUp",§521423135372313550123423632234§);
         addChild(this.§super package case§);
         addChild(this.§5214236842236855123423632234§);
         addChild(this.§package package return§);
      }
      
      override protected function confirmationKeyPressed() : void
      {
         super.confirmationKeyPressed();
      }
      
      private function §if catch extends§(param1:§5214233871233884123423632234§) : void
      {
         clearTimeout(this.§5214233199233212123423632234§);
         this.§5214233199233212123423632234§ = setTimeout(§for use each§.§false package§,600,"name",this.§5214236842236855123423632234§.value);
      }
      
      private function §5214238305238318123423632234§(param1:FocusEvent) : void
      {
         this.§package package return§.visible = false;
      }
      
      private function §5214232726232739123423632234§(param1:FocusEvent) : void
      {
         if(this.§5214236842236855123423632234§.value.length == 0)
         {
            this.§package package return§.visible = true;
         }
      }
      
      override protected function §5214237138237151123423632234§(param1:MouseEvent) : void
      {
         var _loc2_:§521423126092312622123423632234§ = §switch use var§.userObject.adapt(§521423126092312622123423632234§) as §521423126092312622123423632234§;
         _loc2_.§default catch try§();
      }
      
      override protected function removeEvents() : void
      {
         super.removeEvents();
         §super var catch§.§true package static§().removeEventListener("ClansListEvent.INCOMING" + "ClansListEvent.ADD",§5214237071237084123423632234§);
         §super var catch§.§true package static§().removeEventListener("ClansListEvent.INCOMING" + "ClansListEvent.REMOVE",§5214232970232983123423632234§);
         this.§5214236842236855123423632234§.removeEventListener("keyUp",§521423135372313550123423632234§);
         this.§5214236842236855123423632234§.removeEventListener("LoginChanged",this.§if catch extends§);
      }
      
      override protected function §52142326923282123423632234§(param1:Event = null) : void
      {
         var _loc2_:int = 0;
         _loc2_ = 6;
         §5214233532233545123423632234§ = Math.max(this.§super package case§.height,this.§5214236842236855123423632234§.height);
         super.§52142326923282123423632234§(param1);
         this.§super package case§.x = width - this.§super package case§.width - 2 * 11 - §5214233258233271123423632234§;
         this.§super package case§.y = height - this.§super package case§.height - 11 - 6;
         this.§5214236842236855123423632234§.x = 11;
         this.§5214236842236855123423632234§.y = height - 11 - this.§5214236842236855123423632234§.height - 6;
         this.§5214236842236855123423632234§.width = width - this.§super package case§.width - 4 * 11 - §5214233258233271123423632234§;
         this.§package package return§.x = this.§5214236842236855123423632234§.x + 3;
         this.§package package return§.y = this.§5214236842236855123423632234§.y + 7;
      }
      
      override public function destroy() : void
      {
         §for use each§.§5214236671236684123423632234§();
         super.destroy();
      }
   }
}

