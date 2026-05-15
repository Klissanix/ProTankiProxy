package §super for import§
{
   import §521423134112313424123423632234§.§while catch function§;
   import §5214236944236957123423632234§.DiscreteSprite;
   import §521423832396123423632234§.§5214238194238207123423632234§;
   import alternativa.tanks.models.foreignclan.ForeignClanService;
   import alternativa.tanks.models.service.ClanMembersDataService;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoService;
   
   public class §5214236680236693123423632234§ extends DiscreteSprite implements §while catch function§
   {
      
      public static var §5214234066234079123423632234§:ClanUserInfoService;
      
      public static var §521423112062311219123423632234§:ClanMembersDataService;
      
      public static var §5214238647238660123423632234§:ForeignClanService;
      
      private static var §if set native§:Class = §b75139a_png$65575cec50787905c57e88ecffda2502-1987517461§;
      
      private static var §521423120742312087123423632234§:BitmapData = Bitmap(new §if set native§()).bitmapData;
      
      private var §5214234023234036123423632234§:Boolean;
      
      private var §each use get§:String;
      
      private var §5214232625232638123423632234§:String;
      
      public function §5214236680236693123423632234§(param1:Boolean = false, param2:String = null, param3:String = null)
      {
         super();
         this.§each use get§ = param2;
         this.§5214232625232638123423632234§ = param3;
         this.tabChildren = false;
         this.tabEnabled = false;
         this.buttonMode = this.useHandCursor = true;
         this.§5214234023234036123423632234§ = param1;
         var _loc4_:Bitmap = new Bitmap(§521423120742312087123423632234§);
         addChild(_loc4_);
      }
      
      private function §package return§() : Boolean
      {
         if(this.§each use get§ == null || this.§5214232625232638123423632234§ == null)
         {
            return true;
         }
         return §521423112062311219123423632234§.getPermission(this.§5214232625232638123423632234§).value < §521423112062311219123423632234§.getPermission(this.§each use get§).value;
      }
      
      public function updateActions() : void
      {
         visible = !this.§5214234023234036123423632234§ && §5214234066234079123423632234§.hasAction(§5214238194238207123423632234§.§5214237153237166123423632234§) && this.§package return§() && !§5214238647238660123423632234§.isShowForeignClan();
      }
   }
}

