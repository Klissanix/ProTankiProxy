package alternativa.tanks.service.achievement
{
   import §5214233111233124123423632234§.§for switch else§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.gui.CongratulationsWindowPresent;
   import alternativa.tanks.service.panel.IPanelView;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.geom.Point;
   import §null set var§.BattleFightButtonHelper;
   import §null set var§.BattleStartButtonHelper;
   import §null set var§.DonateButtonHelper;
   import §null set var§.FirstBattleCreateHelper;
   import §null set var§.FirstBattleFightHelper;
   import §null set var§.FirstDonateHelper;
   import §null set var§.FirstPurchaseHelper;
   import §null set var§.InviteFriendHelper;
   import §null set var§.PurchaseButtonHelper;
   import §null set var§.SetEmailHelper;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.helper.IHelpService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   
   public class AchievementService implements IAchievementService
   {
      
      public static var §else var include§:IHelpService;
      
      public static var display:IDisplay;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      public static var §import use with§:IPanelView;
      
      private static const §5214234637234650123423632234§:Class = §c747b1a_png$73fdf8eb93d3fc591c6cbb0091d8dabf-1861085996§;
      
      private static const present:BitmapData = (new §5214234637234650123423632234§() as Bitmap).bitmapData;
      
      private const §521423125292312542123423632234§:String = "GarageModel";
      
      private var battle:FirstBattleCreateHelper;
      
      private var §const package null§:BattleStartButtonHelper;
      
      private var §521423119662311979123423632234§:FirstBattleFightHelper;
      
      private var §switch use switch§:BattleFightButtonHelper;
      
      private var §if for package§:FirstDonateHelper;
      
      private var §5214232588232601123423632234§:DonateButtonHelper;
      
      private var §var set in§:FirstPurchaseHelper;
      
      private var §52142353423547123423632234§:PurchaseButtonHelper;
      
      private var friend:InviteFriendHelper;
      
      private var email:SetEmailHelper;
      
      private var §52142366323676123423632234§:Vector.<§for switch else§>;
      
      private var §throw set break§:int = 0;
      
      private var inBattle:Boolean;
      
      private var §native native§:Boolean = false;
      
      private var §5214237518237531123423632234§:Boolean = true;
      
      public function AchievementService()
      {
         super();
         this.init();
      }
      
      public function setBattleStartButtonTargetPoint(param1:Point) : void
      {
         param1.x *= Display.§521423132512313264123423632234§;
         param1.y *= Display.§521423132512313264123423632234§;
         this.§switch use switch§.targetPoint = param1;
         this.defd529();
         this.d647889f();
      }
      
      public function setGarageBuyButtonTargetPoint(param1:Point) : void
      {
         param1.x *= Display.§521423132512313264123423632234§;
         param1.y *= Display.§521423132512313264123423632234§;
         this.§52142353423547123423632234§.targetPoint = param1;
         this.defd529();
         this.d647889f();
      }
      
      private function init() : void
      {
         this.battle = new FirstBattleCreateHelper();
         this.§const package null§ = new BattleStartButtonHelper();
         this.§521423119662311979123423632234§ = new FirstBattleFightHelper();
         this.§switch use switch§ = new BattleFightButtonHelper();
         this.§if for package§ = new FirstDonateHelper();
         this.§5214232588232601123423632234§ = new DonateButtonHelper();
         this.§var set in§ = new FirstPurchaseHelper();
         this.§52142353423547123423632234§ = new PurchaseButtonHelper();
         this.friend = new InviteFriendHelper();
         this.email = new SetEmailHelper();
         var _loc1_:IHelpService = IHelpService(OSGi.getInstance().getService(IHelpService));
         _loc1_.registerHelper("GarageModel",800,this.battle,false);
         _loc1_.registerHelper("GarageModel",802,this.§521423119662311979123423632234§,false);
         _loc1_.registerHelper("GarageModel",803,this.§switch use switch§,false);
         _loc1_.registerHelper("GarageModel",804,this.§if for package§,false);
         _loc1_.registerHelper("GarageModel",805,this.§5214232588232601123423632234§,false);
         _loc1_.registerHelper("GarageModel",806,this.§var set in§,false);
         _loc1_.registerHelper("GarageModel",807,this.§52142353423547123423632234§,false);
         _loc1_.registerHelper("GarageModel",808,this.friend,false);
         _loc1_.registerHelper("GarageModel",809,this.email,false);
         _loc1_.registerHelper("GarageModel",811,this.§const package null§,false);
         this.§52142366323676123423632234§ = new Vector.<§for switch else§>();
      }
      
      public function completeAchievement(param1:§for switch else§, param2:String, param3:int) : void
      {
         if(this.§52142366323676123423632234§.indexOf(param1) != -1)
         {
            this.§52142366323676123423632234§.removeAt(this.§52142366323676123423632234§.indexOf(param1));
         }
         this.hideAllBubbles(this.inBattle);
         var _loc4_:CongratulationsWindowPresent = new CongratulationsWindowPresent(present,null,param2);
      }
      
      public function method_2478() : void
      {
         this.§5214232588232601123423632234§.visible = true;
      }
      
      private function defd529() : void
      {
         var _loc1_:§for switch else§ = null;
         if(this.inBattle)
         {
            return;
         }
         var _loc2_:int = 800;
         while(_loc2_ < 812)
         {
            §else var include§.hideHelper("GarageModel",_loc2_);
            _loc2_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.§52142366323676123423632234§.length)
         {
            _loc1_ = this.§52142366323676123423632234§[_loc3_];
            switch(_loc1_)
            {
               case §for switch else§.§521423131592313172123423632234§:
                  if(this.§throw set break§ == 1 && this.§52142353423547123423632234§.targetPoint.x != 0)
                  {
                     §else var include§.showHelper("GarageModel",807,true);
                  }
                  break;
               case §for switch else§.§521423120352312048123423632234§:
                  if(this.§throw set break§ != 0)
                  {
                     §else var include§.showHelperIfAble("GarageModel",802,true);
                  }
                  break;
               case §for switch else§.§5214234783234796123423632234§:
                  if(§continue for final§.getCurrentState() == LayoutState.PAYMENT && this.§5214232588232601123423632234§.targetPoint.x > 0)
                  {
                     §else var include§.showHelper("GarageModel",805,true);
                     break;
                  }
                  if(§continue for final§.getCurrentState() == LayoutState.GARAGE)
                  {
                     §else var include§.showHelperIfAble("GarageModel",804,true);
                  }
                  break;
               case §for switch else§.§set package var§:
                  §else var include§.showHelper("GarageModel",808,true);
                  break;
               case §for switch else§.§521423104592310472123423632234§:
                  §else var include§.showHelper("GarageModel",809,true);
            }
            _loc3_++;
         }
      }
      
      public function activateAchievement(param1:§for switch else§) : void
      {
         if(param1 != §for switch else§.§set package var§)
         {
            this.§52142366323676123423632234§[§52142366323676123423632234§.length] = param1;
         }
         this.defd529();
         this.d647889f();
      }
      
      public function setPaymentResumeButtonTargetPoint(param1:Point) : void
      {
         param1.x *= Display.§521423132512313264123423632234§;
         param1.y *= Display.§521423132512313264123423632234§;
         this.§5214232588232601123423632234§.targetPoint = param1;
         this.defd529();
         this.d647889f();
      }
      
      public function hideAllBubbles(param1:Boolean) : void
      {
         var _loc2_:int = 800;
         while(_loc2_ < 812)
         {
            §else var include§.hideHelper("GarageModel",_loc2_);
            _loc2_++;
         }
         §else var include§.hideHelp();
         this.inBattle = param1;
      }
      
      public function setAchievements(param1:Vector.<§for switch else§>) : void
      {
         this.§52142366323676123423632234§ = new Vector.<§for switch else§>();
         var _loc2_:int = int(param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(param1[_loc3_] != §for switch else§.§set package var§)
            {
               this.§52142366323676123423632234§[§52142366323676123423632234§.length] = param1[_loc3_];
            }
            _loc3_++;
         }
         if(this.§52142366323676123423632234§.length != 0)
         {
            this.defd529();
            this.d647889f();
            display.stage.addEventListener("resize",this.d647889f);
         }
      }
      
      public function method_639() : void
      {
         this.§5214232588232601123423632234§.visible = false;
      }
      
      private function d647889f(param1:Event = null) : void
      {
         var _loc2_:int = Math.max(970,display.stage.stageWidth / Display.§521423132512313264123423632234§);
         var _loc3_:int = Math.max(580,display.stage.stageHeight / Display.§521423132512313264123423632234§);
         this.battle.targetPoint = new Point(_loc2_ - 295,30);
         this.§const package null§.targetPoint = new Point(_loc2_ - 35,_loc3_ - 30);
         this.§521423119662311979123423632234§.targetPoint = new Point(_loc2_ - 292,30);
         this.§if for package§.targetPoint = new Point(_loc2_ - (§import use with§.getPanel().§521423117142311727123423632234§.§return for null§() ? 550 : 475),30);
         this.§var set in§.targetPoint = new Point(_loc2_ - 320 + 90,30);
         this.friend.targetPoint = new Point(_loc2_ - 130,30);
         this.email.targetPoint = new Point(_loc2_ - 110,30);
      }
      
      public function setPanelPartition(param1:int) : void
      {
         this.§throw set break§ = param1;
         this.inBattle = false;
         this.defd529();
         this.d647889f();
      }
      
      public function hideStartButtonHelper() : void
      {
         this.§native native§ = false;
         this.defd529();
      }
      
      public function privateAchievementBubbleIsNotNeededAnymore() : void
      {
         this.§5214237518237531123423632234§ = false;
      }
      
      public function showStartButtonHelper() : void
      {
         this.§native native§ = true;
         this.defd529();
      }
   }
}

