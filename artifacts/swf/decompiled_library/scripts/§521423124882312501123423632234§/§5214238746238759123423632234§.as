package §521423124882312501123423632234§
{
   import §521423134112313424123423632234§.§521423140572314070123423632234§;
   import §521423134112313424123423632234§.§5214232045232058123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.clan.user.ClanUserService;
   import §false set native§.§super var catch§;
   import flash.events.Event;
   import §throw with§.§native catch continue§;
   
   public class §5214238746238759123423632234§ extends §override switch with§
   {
      
      public static var §switch use var§:ClanUserService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §function const var§:§521423140572314070123423632234§;
      
      public function §5214238746238759123423632234§(param1:int)
      {
         this.§5214233258233271123423632234§ = param1;
         var _loc3_:§5214232045232058123423632234§ = §5214232045232058123423632234§(§switch use var§.userObject.adapt(§5214232045232058123423632234§));
         this.§function const var§ = new §521423140572314070123423632234§(_loc3_,§5214236363236376123423632234§.getText("CLAN_SEND_REQUEST_TO_CLAN"),§5214236363236376123423632234§.getText("CLAN_SEND_REQUEST"),§5214236363236376123423632234§.getText("CLAN_SEARCH_BLOCKED_HINT"),"");
         super();
         var _loc2_:§native catch continue§ = §switch use var§.userObject.adapt(§native catch continue§) as §native catch continue§;
         §for use each§.§521423115682311581123423632234§(_loc2_.§5214235875235888123423632234§(),"OUTGOING");
         §super var catch§.§true package static§().addEventListener("ClansListEvent.OUTGOING" + "ClansListEvent.ADD",§5214237071237084123423632234§);
         §super var catch§.§true package static§().addEventListener("ClansListEvent.OUTGOING" + "ClansListEvent.REMOVE",§5214232970232983123423632234§);
         addChild(this.§function const var§);
      }
      
      override protected function §52142326923282123423632234§(param1:Event = null) : void
      {
         §5214233532233545123423632234§ = this.§function const var§.height;
         super.§52142326923282123423632234§(param1);
         this.§function const var§.width = width - 3 * 11 - §5214233258233271123423632234§;
         this.§function const var§.x = 11;
         this.§function const var§.y = height - this.§function const var§.height - 11 - 6;
      }
      
      override protected function removeEvents() : void
      {
         super.removeEvents();
         §super var catch§.§true package static§().removeEventListener("ClansListEvent.OUTGOING" + "ClansListEvent.ADD",§5214237071237084123423632234§);
         §super var catch§.§true package static§().removeEventListener("ClansListEvent.OUTGOING" + "ClansListEvent.REMOVE",§5214232970232983123423632234§);
      }
      
      override public function destroy() : void
      {
         this.§function const var§.§true package final§();
         super.destroy();
      }
   }
}

