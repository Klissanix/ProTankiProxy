package §521423134112313424123423632234§
{
   import §521423138062313819123423632234§.§if set class§;
   import §5214233242233255123423632234§.§5214236221236234123423632234§;
   import §5214236944236957123423632234§.DiscreteSprite;
   import §521423832396123423632234§.§5214234734234747123423632234§;
   import §521423832396123423632234§.§5214238194238207123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.models.foreignclan.ForeignClanService;
   import alternativa.tanks.models.service.ClanMembersDataService;
   import alternativa.tanks.models.service.ClanService;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoService;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §use switch continue§ extends DiscreteSprite implements §const for class§, §while catch function§
   {
      
      public static var §const for import§:ClanService;
      
      public static var §5214234066234079123423632234§:ClanUserInfoService;
      
      public static var §521423112062311219123423632234§:ClanMembersDataService;
      
      public static var §5214238647238660123423632234§:ForeignClanService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static const §return switch if§:int = 18;
      
      protected var id:String;
      
      protected var §5214239357239370123423632234§:Boolean;
      
      private var label:§5214231141231154123423632234§;
      
      private var §5214237851237864123423632234§:Number;
      
      public var §5214232625232638123423632234§:String;
      
      public var §default for package§:§5214234734234747123423632234§;
      
      public var data:Object;
      
      public function §use switch continue§(param1:§5214234734234747123423632234§)
      {
         super();
         this.§default for package§ = param1;
         this.label = §521423108592310872123423632234§(param1);
         this.§5214236414236427123423632234§();
         addChild(this.label);
         this.§5214239357239370123423632234§ = true;
      }
      
      public static function §for set const§(param1:§5214234734234747123423632234§) : String
      {
         switch(param1)
         {
            case §5214234734234747123423632234§.§break switch else§:
               return §5214236363236376123423632234§.getText("CLAN_POSITION_SUPREME_COMMANDER");
            case §5214234734234747123423632234§.§521423132412313254123423632234§:
               return §5214236363236376123423632234§.getText("CLAN_POSITION_COMMANDER");
            case §5214234734234747123423632234§.§5214236910236923123423632234§:
               return §5214236363236376123423632234§.getText("CLAN_POSITION_OFFICER");
            case §5214234734234747123423632234§.§5214233694233707123423632234§:
               return §5214236363236376123423632234§.getText("CLAN_POSITION_SERGEANT");
            case §5214234734234747123423632234§.§false package include§:
               return §5214236363236376123423632234§.getText("CLAN_POSITION_VETERAN");
            case §5214234734234747123423632234§.§5214231933231946123423632234§:
               return §5214236363236376123423632234§.getText("CLAN_POSITION_PRIVATE");
            case §5214234734234747123423632234§.§override const const§:
               return §5214236363236376123423632234§.getText("CLAN_POSITION_NOVICE");
            default:
               return "EMPTY";
         }
      }
      
      private static function §521423108592310872123423632234§(param1:§5214234734234747123423632234§) : §5214231141231154123423632234§
      {
         var _loc2_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         _loc2_.autoSize = "left";
         _loc2_.color = 5898034;
         _loc2_.text = §for set const§(param1);
         return _loc2_;
      }
      
      public static function §5214238616238629123423632234§(param1:§5214234734234747123423632234§) : §use switch continue§
      {
         return new §use switch continue§(param1);
      }
      
      private function §521423129792312992123423632234§() : Boolean
      {
         return this.§default for package§ != §5214234734234747123423632234§.§break switch else§ && this.§5214232625232638123423632234§ != this.id && §5214234066234079123423632234§.hasAction(§5214238194238207123423632234§.§5214237677237690123423632234§) && !§const for import§.isBlocked && this.§default for package§.value > §521423112062311219123423632234§.getPermission(this.§5214232625232638123423632234§).value && !§5214238647238660123423632234§.isShowForeignClan();
      }
      
      public function §set switch return§(param1:§if set class§) : void
      {
         this.label.text = §for set const§(param1.§default for package§);
         this.data.permission = param1.§default for package§;
         this.width = this.§5214237851237864123423632234§;
      }
      
      private function §5214231199231212123423632234§(param1:MouseEvent = null) : void
      {
         Mouse.cursor = "auto";
         if(this.§5214239357239370123423632234§)
         {
            this.label.color = 5898034;
         }
      }
      
      private function §5214236640236653123423632234§(param1:MouseEvent = null) : void
      {
         if(this.§5214239357239370123423632234§)
         {
            Mouse.cursor = "button";
            this.label.color = 16777215;
         }
         else if(this.§521423129792312992123423632234§())
         {
            Mouse.cursor = "button";
         }
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.label.x = param1 - this.label.width >> 1;
      }
      
      public function get §each use get§() : String
      {
         return this.id;
      }
      
      public function destroy() : void
      {
         this.label.removeEventListener("mouseOver",this.§5214236640236653123423632234§);
         this.label.removeEventListener("mouseOut",this.§5214231199231212123423632234§);
      }
      
      private function §5214235627235640123423632234§(param1:MouseEvent) : void
      {
         §5214236221236234123423632234§.show(this.§each use get§,this.§5214232625232638123423632234§,this);
      }
      
      public function §5214236414236427123423632234§() : void
      {
         this.label.addEventListener("mouseOver",this.§5214236640236653123423632234§,false,0,true);
         this.label.addEventListener("mouseOut",this.§5214231199231212123423632234§,false,0,true);
      }
      
      public function updateActions() : void
      {
         if(§5214238647238660123423632234§.isShowForeignClan())
         {
            return;
         }
         this.§default for package§ = §521423112062311219123423632234§.getPermission(this.§each use get§);
         if(§5214234066234079123423632234§.hasAction(§5214238194238207123423632234§.§5214237677237690123423632234§) && !§const for import§.isBlocked && this.§default for package§.value > §521423112062311219123423632234§.getPermission(this.§5214232625232638123423632234§).value)
         {
            if(this.§default for package§ != §5214234734234747123423632234§.§break switch else§ && this.§5214232625232638123423632234§ != this.id)
            {
               addEventListener("click",this.§5214235627235640123423632234§,false,0,true);
            }
         }
         else if(hasEventListener("click"))
         {
            removeEventListener("click",this.§5214235627235640123423632234§);
         }
      }
      
      override public function get width() : Number
      {
         return this.§5214237851237864123423632234§;
      }
   }
}

