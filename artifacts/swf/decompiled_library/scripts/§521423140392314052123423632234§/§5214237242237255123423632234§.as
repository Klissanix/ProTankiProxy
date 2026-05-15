package §521423140392314052123423632234§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import §class use try§.§dynamic for false§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import §package for final§.§5214237456237469123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.§5214231456231469123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.UserInfoLabelUpdaterEvent;
   import §throw package function§.BattleLinkData;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §5214237242237255123423632234§ extends Sprite
   {
      
      public static var §while for package§:IUserInfoService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §5214234339234352123423632234§:String;
      
      private var §native catch default§:BattleLinkData;
      
      private var §set set in§:Bitmap;
      
      private var §521423139392313952123423632234§:§5214231141231154123423632234§;
      
      private var §get package set§:Sprite;
      
      private var §5214231464231477123423632234§:§5214231456231469123423632234§;
      
      private var §5214235786235799123423632234§:Bitmap;
      
      public function §5214237242237255123423632234§(param1:String)
      {
         super();
         this.§5214234339234352123423632234§ = param1;
         this.init();
      }
      
      public function get §switch switch§() : Sprite
      {
         return this.§get package set§;
      }
      
      private function §in var for§(param1:UserInfoLabelUpdaterEvent) : void
      {
         this.§static package break§(this.§5214231464231477123423632234§.battleLink);
      }
      
      private function init() : void
      {
         this.tabChildren = false;
         this.tabEnabled = false;
         this.§5214235786235799123423632234§ = new Bitmap(§5214237456237469123423632234§.§5214231317231330123423632234§);
         this.§5214235786235799123423632234§.y = (18 - this.§5214235786235799123423632234§.height) / 2;
         this.§5214235786235799123423632234§.visible = false;
         addChild(this.§5214235786235799123423632234§);
         this.§set set in§ = new Bitmap(§dynamic for false§.§var package do§(true,false));
         this.§set set in§.visible = false;
         this.§set set in§.y = (18 - this.§set set in§.height) / 2;
         addChild(this.§set set in§);
         this.§get package set§ = new Sprite();
         addChild(this.§get package set§);
         this.§521423139392313952123423632234§ = new §5214231141231154123423632234§();
         this.§521423139392313952123423632234§.color = 5898034;
         this.§521423139392313952123423632234§.mouseEnabled = false;
         this.§get package set§.addChild(this.§521423139392313952123423632234§);
         this.§get package set§.y = -1;
         this.§set set in§.x = 0;
         this.§5214235786235799123423632234§.x = this.§set set in§.x + this.§set set in§.width + 5;
         this.§get package set§.x = this.§5214235786235799123423632234§.x + this.§5214235786235799123423632234§.width + 2;
         this.§5214231464231477123423632234§ = §while for package§.getOrCreateUpdater(this.§5214234339234352123423632234§);
         this.§5214231464231477123423632234§.addEventListener("UserLabelUpdaterEvent.CHANGE_BATTLE_LINK",this.§in var for§);
         if(this.§5214231464231477123423632234§.hasData())
         {
            this.§static package break§(this.§5214231464231477123423632234§.battleLink);
         }
      }
      
      private function §static package break§(param1:BattleLinkData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         this.§native catch default§ = param1;
         this.§set set in§.visible = false;
         this.§5214235786235799123423632234§.visible = false;
         var _loc4_:String = "";
         if(this.§5214233528233541123423632234§())
         {
            _loc3_ = this.§native catch default§.isSelfBattle();
            if(this.§native catch default§.isShowBattle())
            {
               if(_loc3_)
               {
                  _loc4_ = param1.mapName + " " + §5214236363236376123423632234§.getText("FRIENDS_YOU_ARE_HERE_BATTLE_INDICATOR");
               }
               else
               {
                  _loc4_ = "<u>" + param1.mapName + "</u>";
               }
               this.§set set in§.visible = this.§native catch default§.proBattle;
               this.§5214235786235799123423632234§.visible = this.§native catch default§.availableRank();
            }
            _loc2_ = !_loc3_;
         }
         this.§get package set§.buttonMode = this.§get package set§.useHandCursor = _loc2_;
         this.§521423139392313952123423632234§.htmlText = _loc4_;
      }
      
      public function removeEvents() : void
      {
         this.§5214231464231477123423632234§.removeEventListener("UserLabelUpdaterEvent.CHANGE_BATTLE_LINK",this.§in var for§);
      }
      
      public function §5214233528233541123423632234§() : Boolean
      {
         return this.§native catch default§ != null;
      }
      
      public function get data() : BattleLinkData
      {
         return this.§native catch default§;
      }
   }
}

