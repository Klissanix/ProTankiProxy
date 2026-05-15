package §5214233242233255123423632234§
{
   import §521423103332310346123423632234§.ClanButtonActionListener;
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214236944236957123423632234§.DiscreteSprite;
   import §521423832396123423632234§.§5214238194238207123423632234§;
   import §5214238576238589123423632234§.§521423128552312868123423632234§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.models.service.ClanInfoUpdateEvent;
   import alternativa.tanks.models.service.ClanMembersDataService;
   import alternativa.tanks.models.service.ClanService;
   import alternativa.tanks.models.service.ClanServiceEvent;
   import §final use false§.§5214232479232492123423632234§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoService;
   
   public class §implements for super§ extends DiscreteSprite
   {
      
      public static var §const for import§:ClanService;
      
      public static var §521423112062311219123423632234§:ClanMembersDataService;
      
      public static var §5214234066234079123423632234§:ClanUserInfoService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private static const §521423110342311047123423632234§:int = 7;
      
      private static const §5214236332236345123423632234§:int = 11;
      
      private static const §if throw§:int = 30;
      
      public static const §5214233755233768123423632234§:int = 120;
      
      private static const §5214233856233869123423632234§:Class = S3ce3a8_png$3aeb2d4d6c2fffc456454d746427be91377809409;
      
      private static const §5214238770238783123423632234§:Class = D7egh74_png$8f4a193169eda132f349e9adc8b73c981532332761;
      
      private static const §521423120372312050123423632234§:Class = §a5e7982_png$ab59a6707a3f96f65408804ab2effd8e-1799205282§;
      
      private static const §false switch extends§:Class = §f2c85g5_png$287a04e0b5548f56c94984499c7c8fab-323279285§;
      
      private static const §break catch class§:Class = §a651562_png$856f70e9e17fb223252c1af0ffd3a983-215385911§;
      
      private var §5214237305237318123423632234§:§native for dynamic§;
      
      private var §false switch set§:§include return§;
      
      private var §52142387623889123423632234§:§native for dynamic§;
      
      private var §for catch true§:ClanButtonActionListener = new ClanButtonActionListener(§5214238194238207123423632234§.§5214239680239693123423632234§);
      
      private var §5214234137234150123423632234§:§in catch dynamic§;
      
      private var §false var override§:§in catch dynamic§;
      
      private var §5214238949238962123423632234§:§in catch dynamic§;
      
      private var §native package else§:§in catch dynamic§;
      
      private var §true const final§:§in catch dynamic§;
      
      private var §5214237851237864123423632234§:int;
      
      private var §do finally set§:int;
      
      private var §throw throw§:§521423128552312868123423632234§;
      
      private var §use var in§:ClanInfoUpdateEvent;
      
      private var §var catch import§:§throw package import§;
      
      public function §implements for super§(param1:§521423120252312038123423632234§)
      {
         super();
         this.§throw throw§ = §521423128552312868123423632234§(param1.adapt(§521423128552312868123423632234§));
         this.§5214237305237318123423632234§ = new §native for dynamic§();
         this.§52142387623889123423632234§ = new §native for dynamic§();
         addChild(this.§5214237305237318123423632234§);
         addChild(this.§52142387623889123423632234§);
         this.§false switch set§ = new §include return§(this.§5214237851237864123423632234§,120,4278985229);
         this.§5214237305237318123423632234§.addChild(this.§false switch set§);
         var _loc3_:§5214232479232492123423632234§ = §5214232479232492123423632234§(param1.adapt(§5214232479232492123423632234§));
         var _loc2_:int = 0;
         var _loc5_:int = 0;
         for each(var _loc4_ in _loc3_.§5214239662239675123423632234§())
         {
            _loc2_ += §521423112062311219123423632234§.getKills(_loc4_);
            _loc5_ += §521423112062311219123423632234§.getDeaths(_loc4_);
         }
         this.§5214234137234150123423632234§ = new §in catch dynamic§(new §false switch extends§() as Bitmap,§5214236363236376123423632234§.getText("CLAN_PLAYERS_IN_CLAN"),"");
         this.§if package try§();
         this.§false var override§ = new §in catch dynamic§(new §5214238770238783123423632234§() as Bitmap,§5214236363236376123423632234§.getText("CLAN_TANKS_DESTROYED"),_loc2_.toString());
         this.§5214238949238962123423632234§ = new §in catch dynamic§(new §5214233856233869123423632234§() as Bitmap,§5214236363236376123423632234§.getText("CLAN_TANKS_LOST"),_loc5_.toString());
         this.§native package else§ = new §in catch dynamic§(new §521423120372312050123423632234§() as Bitmap,§5214236363236376123423632234§.getText("CLAN_KILL_DEATH_RATION"),"");
         this.§true const final§ = new §in catch dynamic§(new §break catch class§() as Bitmap,§5214236363236376123423632234§.getText("достижения ?"),"-");
         this.§true const final§.buttonMode = true;
         this.§true const final§.addEventListener("click",this.§var for class§,false,0,true);
         if(_loc5_ == 0)
         {
            this.§native package else§.§break var const§("0.00");
         }
         else
         {
            this.§native package else§.§break var const§((_loc2_ / _loc5_).toFixed(2));
         }
         this.§false switch set§.addChild(this.§5214234137234150123423632234§);
         this.§false switch set§.addChild(this.§false var override§);
         this.§false switch set§.addChild(this.§5214238949238962123423632234§);
         this.§false switch set§.addChild(this.§native package else§);
         this.§false switch set§.addChild(this.§true const final§);
         this.§var catch import§ = new §throw package import§(this.§throw throw§.§5214239523239536123423632234§());
         this.§52142387623889123423632234§.addChild(this.§var catch import§);
         this.§for catch true§.label = §5214236363236376123423632234§.getText("CLAN_EDIT_PROFILE");
         §521423125692312582123423632234§.§5214232598232611123423632234§(this.§for catch true§);
         this.§for catch true§.updateActions();
         this.§for catch true§.addEventListener("click",this.§if for for§);
         addChild(this.§for catch true§);
         §const for import§.addEventListener("CreateClanServiceEvent.CLAN_BLOCK",this.§5214231215231228123423632234§);
      }
      
      private function §52142326923282123423632234§(param1:Event = null) : void
      {
         this.§5214237305237318123423632234§.y = 11 + 120 - 3;
         this.§5214237305237318123423632234§.width = this.width;
         this.§5214237305237318123423632234§.height = 120 + 2 * 11;
         this.§52142387623889123423632234§.y = this.§5214237305237318123423632234§.y + this.§5214237305237318123423632234§.height;
         this.§52142387623889123423632234§.width = this.width;
         this.§52142387623889123423632234§.height = this.height - this.§52142387623889123423632234§.y;
         this.§false switch set§.x = 11;
         this.§false switch set§.y = 11;
         this.§false switch set§.width = this.§5214237305237318123423632234§.width - 2 * 11;
         this.§false switch set§.height = 120;
         this.§var catch import§.x = 11;
         this.§var catch import§.y = 11;
         this.§var catch import§.width = this.§52142387623889123423632234§.width - 2 * 11;
         this.§var catch import§.height = this.§52142387623889123423632234§.height - 30 - 7 - 2 * 11;
         this.§var catch import§.§52142326923282123423632234§();
         this.§false switch set§.addChild(this.§5214234137234150123423632234§);
         this.§false switch set§.addChild(this.§false var override§);
         this.§false switch set§.addChild(this.§5214238949238962123423632234§);
         this.§false switch set§.addChild(this.§native package else§);
         this.§false switch set§.addChild(this.§true const final§);
         this.§5214234137234150123423632234§.x = 11;
         this.§false var override§.x = this.§5214234137234150123423632234§.x + this.§5214234137234150123423632234§.width + 11;
         this.§5214238949238962123423632234§.x = this.§false var override§.x + this.§false var override§.width + 11;
         this.§native package else§.x = this.§5214238949238962123423632234§.x + this.§5214238949238962123423632234§.width + 11;
         this.§true const final§.x = this.§native package else§.x + this.§native package else§.width + 11;
         this.§5214234137234150123423632234§.y = 11 - 1;
         this.§false var override§.y = this.§5214234137234150123423632234§.y;
         this.§5214238949238962123423632234§.y = this.§5214234137234150123423632234§.y;
         this.§native package else§.y = this.§5214234137234150123423632234§.y;
         this.§true const final§.y = this.§5214234137234150123423632234§.y;
         this.§for catch true§.x = 11;
         this.§for catch true§.y = this.§do finally set§ - this.§for catch true§.height - 11 - 1;
      }
      
      public function §null const static§() : void
      {
         this.§if package try§();
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§52142326923282123423632234§();
      }
      
      override public function set height(param1:Number) : void
      {
         this.§do finally set§ = param1;
         this.§52142326923282123423632234§();
      }
      
      private function §if package try§() : void
      {
         this.§5214234137234150123423632234§.§break var const§(§const for import§.membersCount.toString());
      }
      
      private function §var for class§(param1:MouseEvent) : void
      {
         IAlertService(OSGi.getInstance().getService(IAlertService)).showAlert("-freeze hunters\n-прорыв года 42\n-??",new <String>["ОКк"]);
      }
      
      override public function get width() : Number
      {
         return this.§5214237851237864123423632234§;
      }
      
      public function §with use var§(param1:ClanInfoUpdateEvent) : void
      {
         this.§use var in§ = param1;
         this.§52142326923282123423632234§();
      }
      
      public function §default catch set§(param1:ClanInfoUpdateEvent) : void
      {
         dispatchEvent(param1);
         this.§var catch import§.§import switch try§(param1.§5214234939234952123423632234§);
      }
      
      private function §if for for§(param1:MouseEvent) : void
      {
         new §while use finally§(this.§throw throw§,this.§use var in§,this);
      }
      
      override public function get height() : Number
      {
         return this.§do finally set§;
      }
      
      private function §5214231215231228123423632234§(param1:ClanServiceEvent) : void
      {
         this.§var catch import§.§import switch try§(this.§throw throw§.§5214239523239536123423632234§());
      }
      
      public function §use set with§() : void
      {
         this.§if package try§();
      }
   }
}

