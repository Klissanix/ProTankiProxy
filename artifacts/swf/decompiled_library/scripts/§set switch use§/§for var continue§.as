package §set switch use§
{
   import §521423133592313372123423632234§.DateFormatter;
   import §521423134112313424123423632234§.*;
   import §5214231792231805123423632234§.NewClanMemberIndicator;
   import §5214233242233255123423632234§.§521423125692312582123423632234§;
   import §5214233242233255123423632234§.§5214236221236234123423632234§;
   import §5214233242233255123423632234§.§if set catch§;
   import §521423832396123423632234§.§5214234734234747123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.models.service.ClanNotificationsManager;
   import alternativa.tanks.service.clan.ClanMembersListEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import §super for import§.§5214236680236693123423632234§;
   import §super for import§.§implements switch extends§;
   import §true switch true§.§5214231141231154123423632234§;
   import utils.TimeFormatter;
   
   public class §for var continue§ extends §implements switch extends§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public var §5214234511234524123423632234§:§use switch continue§;
      
      private var §super set default§:§5214231141231154123423632234§;
      
      private var §return for var§:§5214231141231154123423632234§;
      
      private var §52142385423867123423632234§:§5214231141231154123423632234§;
      
      private var §import set throw§:§5214231141231154123423632234§;
      
      private var §break use for§:§5214231141231154123423632234§;
      
      private var §521423105242310537123423632234§:§5214231141231154123423632234§;
      
      public var §package set for§:NewClanMemberIndicator;
      
      public var §each use get§:String;
      
      public var §5214232625232638123423632234§:String;
      
      private var §default for package§:§5214234734234747123423632234§;
      
      private var §continue package set§:Vector.<DisplayObject>;
      
      public var data:Object;
      
      public function §for var continue§(param1:Object)
      {
         super();
         this.data = param1;
         this.§each use get§ = param1.id;
         this.§5214232625232638123423632234§ = param1.currentUserId;
         §default finally finally§ = §5214233788233801123423632234§(this.§each use get§);
         param1.uid = §521423107212310734123423632234§.uid;
         addChild(§default finally finally§);
         this.§default for package§ = param1.permission;
         this.§5214234511234524123423632234§ = new §if set catch§(this.§default for package§,param1,this.§each use get§,param1.currentUserId);
         this.§5214234511234524123423632234§.updateActions();
         addChild(this.§5214234511234524123423632234§);
         this.§super set default§ = §521423132302313243123423632234§();
         this.§super set default§.text = param1.score;
         addChild(this.§super set default§);
         this.§return for var§ = §521423132302313243123423632234§();
         this.§return for var§.text = param1.kills;
         addChild(this.§return for var§);
         this.§52142385423867123423632234§ = §521423132302313243123423632234§();
         this.§52142385423867123423632234§.text = param1.deaths;
         addChild(this.§52142385423867123423632234§);
         this.§import set throw§ = §521423132302313243123423632234§();
         this.§import set throw§.text = param1.kd;
         addChild(this.§import set throw§);
         this.§break use for§ = §521423132302313243123423632234§();
         this.§break use for§.text = TimeFormatter.format(param1.date);
         addChild(this.§break use for§);
         this.§521423105242310537123423632234§ = §521423132302313243123423632234§();
         this.§521423105242310537123423632234§.text = DateFormatter.formatDateToLocalized(new Date(param1.b596db21));
         addChild(this.§521423105242310537123423632234§);
         this.§continue package set§ = new <DisplayObject>[§default finally finally§,this.§5214234511234524123423632234§,this.§super set default§,this.§return for var§,this.§52142385423867123423632234§,this.§import set throw§,this.§break use for§,this.§521423105242310537123423632234§];
         §while in§ = new §5214236680236693123423632234§(this.§default for package§ == §5214234734234747123423632234§.§break switch else§ || this.§each use get§ == this.§5214232625232638123423632234§,this.§each use get§,this.§5214232625232638123423632234§);
         §catch finally§.visible = false;
         addChild(§catch finally§);
         this.§package set for§ = this.§include switch extends§(param1);
         this.§package set for§.updateNotifications();
         ClanNotificationsManager.addAcceptedIndicatorListener(this.§package set for§);
         addChild(this.§package set for§);
         §catch finally§.addEventListener("click",this.§continue var var§,false,0,true);
         this.§52142326923282123423632234§();
         addEventListener("addedToStage",this.§true var implements§,false,0,true);
         addEventListener("removedFromStage",this.§continue use each§,false,0,true);
      }
      
      private static function §521423132302313243123423632234§() : §5214231141231154123423632234§
      {
         var _loc1_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         _loc1_.autoSize = "left";
         _loc1_.align = "left";
         _loc1_.multiline = true;
         _loc1_.wordWrap = true;
         _loc1_.color = 5898034;
         return _loc1_;
      }
      
      private function §include switch extends§(param1:Object) : NewClanMemberIndicator
      {
         var _loc2_:NewClanMemberIndicator = new NewClanMemberIndicator(this.§each use get§,param1);
         _loc2_.autoSize = "left";
         _loc2_.align = "left";
         _loc2_.color = 5898034;
         _loc2_.text = §5214236363236376123423632234§.getText("FRIENDS_NEW_FRIEND");
         _loc2_.mouseEnabled = false;
         _loc2_.visible = false;
         return _loc2_;
      }
      
      private function §5214232897232910123423632234§(param1:DisplayObject, param2:int) : void
      {
         param1.x = §5214232519232532123423632234§.§null set catch§(param2);
         param1.y = 1;
         param1.width = §5214232519232532123423632234§.§package const do§(param2);
         if(param2 != 0)
         {
            param1.x -= 5;
         }
      }
      
      override protected function §52142326923282123423632234§(param1:Event = null) : void
      {
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < this.§continue package set§.length)
         {
            this.§5214232897232910123423632234§(this.§continue package set§[_loc2_],_loc2_);
            _loc2_++;
         }
         §while in§.x = width - §while in§.width - 6;
         §while in§.y = 1;
         this.§package set for§.x = width - this.§package set for§.width - 10;
         §5214236221236234123423632234§.§5214239066239079123423632234§(this.§5214234511234524123423632234§);
         §5214236221236234123423632234§.resize(§5214232519232532123423632234§.§5214232983232996123423632234§());
         if(width > 0)
         {
            graphics.clear();
            graphics.beginFill(0,0);
            graphics.drawRect(0,0,width - 1,20);
            graphics.endFill();
         }
      }
      
      private function §continue var var§(param1:MouseEvent) : void
      {
         dispatchEvent(new ClanMembersListEvent("ClanMembersListEvent.REMOVE_USER",§521423107212310734123423632234§.§each use get§,§521423107212310734123423632234§.uid,true,true));
      }
      
      private function §true var implements§(param1:Event) : void
      {
         §521423125692312582123423632234§.§5214232598232611123423632234§(this.§5214234511234524123423632234§);
         this.§5214234511234524123423632234§.§5214236414236427123423632234§();
         this.§package set for§.updateNotifications();
      }
      
      public function §continue use each§(param1:Event) : void
      {
         §521423125692312582123423632234§.§5214239033239046123423632234§(this.§5214234511234524123423632234§);
         this.§5214234511234524123423632234§.destroy();
      }
   }
}

