package §5214233396233409123423632234§
{
   import §521423134112313424123423632234§.§5214232045232058123423632234§;
   import §521423134112313424123423632234§.§false var else§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.models.service.ClanService;
   import alternativa.tanks.service.clan.ClanPanelNotificationService;
   import alternativa.tanks.service.clan.user.ClanUserService;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.UserPropertiesServiceEvent;
   import services.contextmenu.ContextMenuServiceEvent;
   import services.contextmenu.IContextMenuService;
   import §while set with§.§case package do§;
   import §while set with§.§extends finally for§;
   import §while set with§.§include set super§;
   
   public class §521423132572313270123423632234§ extends §case package do§ implements §extends finally for§, §521423126092312622123423632234§, §do set function§, §5214234168234181123423632234§, §5214232045232058123423632234§
   {
      
      public static var §switch use var§:ClanUserService;
      
      public static var §const for import§:ClanService;
      
      public static var §5214234066234079123423632234§:ClanUserInfoService;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §521423108572310870123423632234§:ClanPanelNotificationService;
      
      public static var §52142335623369123423632234§:IContextMenuService;
      
      public static var §catch native§:ClanPanelNotificationService;
      
      private static const §5214233701233714123423632234§:String = "%CLANNAME%";
      
      private var §override package super§:§false var else§;
      
      public function §521423132572313270123423632234§()
      {
         super();
      }
      
      public function §5214236013236026123423632234§(param1:String) : void
      {
         throw new Error("Method stubbed, TODO");
      }
      
      public function §extends switch package§(param1:§521423120252312038123423632234§) : void
      {
         §521423120492312062123423632234§.§5214235035235048123423632234§(param1.name);
      }
      
      public function §with var if§() : void
      {
         var _loc1_:String = §5214236363236376123423632234§.getText("CLAN_BLOCK");
         this.§override package super§.§with var if§(_loc1_);
      }
      
      public function §521423131332313146123423632234§() : void
      {
         this.§override package super§.§521423101332310146123423632234§();
      }
      
      private function §5214235063235076123423632234§(param1:ContextMenuServiceEvent) : void
      {
         §521423120492312062123423632234§.§static switch false§(param1.clanId);
      }
      
      public function §default catch try§() : void
      {
         §521423120492312062123423632234§.§521423133182313331123423632234§();
      }
      
      public function §5214235435235448123423632234§() : void
      {
         §521423120492312062123423632234§.§5214235435235448123423632234§();
      }
      
      public function §521423112002311213123423632234§(param1:String) : void
      {
         §521423120492312062123423632234§.§get const return§(param1);
      }
      
      public function §throw const break§() : void
      {
         §switch use var§.hasClanLicense = false;
      }
      
      public function §5214234382234395123423632234§(param1:Boolean) : void
      {
         §5214234066234079123423632234§.giveBonusesClan = param1;
      }
      
      public function §with var for§(param1:§521423120252312038123423632234§) : void
      {
         §521423120492312062123423632234§.§521423100372310050123423632234§(param1.name);
      }
      
      public function §5214235130235143123423632234§() : void
      {
         var _loc1_:String = §5214236363236376123423632234§.getText("CLAN_YOU_ALREADY_IN_CLAN");
         this.§override package super§.§implements switch super§(_loc1_);
      }
      
      public function §case var const§() : Boolean
      {
         return §switch var switch§().§case var const§;
      }
      
      public function §get const class§() : void
      {
         this.§override package super§.§5214236310236323123423632234§();
      }
      
      public function §5214234399234412123423632234§(param1:int) : void
      {
         §521423108572310870123423632234§.restrictionTimeJoinClanInSec = param1;
      }
      
      public function §var set import§() : void
      {
         §521423108572310870123423632234§.remove();
      }
      
      public function §5214237853237866123423632234§(param1:int) : void
      {
         §5214234066234079123423632234§.clanMember = false;
         if(§const for import§.clanManagementPanel != null)
         {
            §const for import§.clanManagementPanel.destroy();
         }
         §5214234066234079123423632234§.restrictionTime = param1;
      }
      
      public function objectLoaded() : void
      {
         var _loc1_:§include set super§ = §switch var switch§();
         if(!_loc1_.§case var const§)
         {
            return;
         }
         §switch use var§.userObject = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
         §5214234066234079123423632234§.restrictionTime = _loc1_.§5214234177234190123423632234§;
         §5214234066234079123423632234§.clanMember = _loc1_.§get package else§;
         §5214234066234079123423632234§.giveBonusesClan = _loc1_.§for var class§;
         §switch use var§.otherClan = _loc1_.§const switch static§;
         §switch use var§.showBuyLicenseButton = _loc1_.§521423108082310821123423632234§;
         §switch use var§.hasClanLicense = _loc1_.§static var native§;
         §521423108572310870123423632234§.init(_loc1_.§return finally const§);
         §521423108572310870123423632234§.restrictionTimeJoinClanInSec = _loc1_.§5214234177234190123423632234§;
         §52142335623369123423632234§.addEventListener("ContextMenuServiceEvent.SHOW_CLAN",getFunctionWrapper(this.§5214235063235076123423632234§));
         §52142329523308123423632234§.addEventListener("UserPropertiesServiceEvent.UPDATE_RANK",getFunctionWrapper(this.§super for switch§));
         §const for import§.minRankForCreateClan = _loc1_.§5214234583234596123423632234§;
         §catch native§.clanButtonVisible = _loc1_.§5214239629239642123423632234§;
      }
      
      public function §extends use while§(param1:String) : void
      {
         var _loc2_:String = §5214236363236376123423632234§.getText("CLAN_IS_ALREADY_IN_INVITE_LIST");
         _loc2_ = _loc2_.replace("%CLANNAME%",param1);
         this.§override package super§.§try const override§(param1,_loc2_);
      }
      
      public function §5214239141239154123423632234§() : void
      {
         §switch use var§.hasClanLicense = true;
      }
      
      public function §override var include§() : void
      {
         var _loc1_:String = §5214236363236376123423632234§.getText("CLAN_YOUR_RANK_TOO_LOW");
         this.§override package super§.§package var throw§(_loc1_);
      }
      
      public function §5214232841232854123423632234§() : void
      {
         §521423108572310870123423632234§.add();
      }
      
      private function §super for switch§(param1:UserPropertiesServiceEvent) : void
      {
         §catch native§.clanButtonVisible = §52142329523308123423632234§.rank >= §switch var switch§().§5214234583234596123423632234§;
      }
      
      public function §class include§(param1:String) : void
      {
         var _loc2_:String = §5214236363236376123423632234§.getText("CLAN_IS_ALREADY_IN_REQUEST_LIST");
         _loc2_ = _loc2_.replace("%CLANNAME%",param1);
         this.§override package super§.§class set extends§(_loc2_);
      }
      
      public function §else package break§(param1:§false var else§) : void
      {
         this.§override package super§ = param1;
      }
      
      public function §521423118372311850123423632234§(param1:String) : void
      {
         §521423120492312062123423632234§.§in set class§(param1);
      }
      
      public function objectLoadedPost() : void
      {
         §5214234066234079123423632234§.selfClan = !§switch var switch§().§const switch static§;
         if(!§switch var switch§().§case var const§)
         {
            return;
         }
      }
      
      public function §521423139882314001123423632234§() : void
      {
         var _loc1_:String = §5214236363236376123423632234§.getText("CLAN_DOES_NOT_ACDEPT_REQUEST");
         this.§override package super§.§521423106642310677123423632234§(_loc1_);
      }
      
      public function §5214239805239818123423632234§() : void
      {
         if(§const for import§.notInClanPanel != null)
         {
            §const for import§.notInClanPanel.destroy();
         }
         §5214234066234079123423632234§.clanMember = true;
      }
      
      public function §catch package static§() : void
      {
         §5214234066234079123423632234§.giveBonusesClan = false;
      }
      
      public function §5214232382232395123423632234§() : void
      {
         §const for import§.notInClanPanel.§5214232382232395123423632234§();
      }
      
      public function §set package break§(param1:§521423120252312038123423632234§) : void
      {
         §521423120492312062123423632234§.§521423392352123423632234§(param1.name);
      }
   }
}

