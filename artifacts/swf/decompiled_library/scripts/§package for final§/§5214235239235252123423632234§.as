package §package for final§
{
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.System;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import §implements for each§.§5214237300237313123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blockuser.IBlockUserService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.IBattleInviteService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.online.IOnlineNotifierService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.§5214231456231469123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.UserInfoLabelUpdaterEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import services.contextmenu.IContextMenuService;
   import §true switch true§.§5214231141231154123423632234§;
   import §try const default§.§5214234011234024123423632234§;
   
   public class §5214235239235252123423632234§ extends Sprite
   {
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §5214233439233452123423632234§:IBattleInviteService;
      
      public static var §52142335623369123423632234§:IContextMenuService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §5214238546238559123423632234§:IOnlineNotifierService;
      
      public static var §while for package§:IUserInfoService;
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §5214232378232391123423632234§:IBlockUserService;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      private static const §function continue§:int = 11;
      
      private static const §false use else§:int = 10000;
      
      private static const §5214236889236902123423632234§:uint = 1723412;
      
      private var §5214232433232446123423632234§:§native for dynamic§;
      
      private var §5214238097238110123423632234§:§include return§;
      
      private var §5214235841235854123423632234§:§5214231141231154123423632234§;
      
      private var §521423134982313511123423632234§:§5214231141231154123423632234§;
      
      private var §5214235109235122123423632234§:§5214236714236727123423632234§;
      
      private var §521423131782313191123423632234§:§5214236714236727123423632234§;
      
      private var §521423126392312652123423632234§:§5214236714236727123423632234§;
      
      private var §function var else§:§5214236714236727123423632234§;
      
      private var §5214233410233423123423632234§:§5214236714236727123423632234§;
      
      private var §each for super§:§5214236714236727123423632234§;
      
      private var §if const static§:§5214236714236727123423632234§;
      
      private var §class set finally§:§5214236714236727123423632234§;
      
      private var §var switch try§:§5214237456237469123423632234§;
      
      private var §5214234911234924123423632234§:§5214236714236727123423632234§;
      
      private var §class switch native§:§5214236714236727123423632234§;
      
      private var §return switch try§:Vector.<§5214236714236727123423632234§>;
      
      private var §5214237438237451123423632234§:Vector.<§5214236714236727123423632234§>;
      
      private var §5214234339234352123423632234§:String;
      
      private var §5214232654232667123423632234§:String;
      
      private var §implements switch in§:int;
      
      private var §5214237742237755123423632234§:Boolean;
      
      private var §521423126312312644123423632234§:§5214237300237313123423632234§;
      
      private var §5214234760234773123423632234§:uint;
      
      private var §switch use class§:uint;
      
      private var §52142382321123423632234§:Boolean;
      
      private var §while const default§:Boolean;
      
      private var §switch set case§:Boolean;
      
      private var §5214233551233564123423632234§:Shape;
      
      private var §5214231464231477123423632234§:§5214231456231469123423632234§;
      
      public function §5214235239235252123423632234§()
      {
         super();
      }
      
      private function resize() : void
      {
         var _loc2_:Number = NaN;
         var _loc7_:§5214236714236727123423632234§ = null;
         var _loc1_:int = 0;
         var _loc8_:int = 0;
         this.§521423126312312644123423632234§.x = 11 + 7;
         this.§521423126312312644123423632234§.y = 11 + 8 + (this.§5214237742237755123423632234§ ? -2 : 0);
         this.§5214235841235854123423632234§.x = this.§521423126312312644123423632234§.x + this.§521423126312312644123423632234§.width;
         this.§5214235841235854123423632234§.y = 11 + 5;
         this.§521423134982313511123423632234§.x = 11 + 5;
         this.§521423134982313511123423632234§.y = this.§5214235841235854123423632234§.y + this.§5214235841235854123423632234§.height - 1;
         var _loc5_:int = this.§5214235841235854123423632234§.x + this.§5214235841235854123423632234§.width;
         var _loc6_:int = int(this.§5214237438237451123423632234§.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc6_)
         {
            _loc7_ = this.§5214237438237451123423632234§[_loc3_];
            _loc7_.x = 11 + 5;
            if(_loc3_ == 0)
            {
               _loc7_.y = this.§521423134982313511123423632234§.visible ? 59 : 42;
            }
            else
            {
               _loc7_.y = this.§5214237438237451123423632234§[_loc3_ - 1].y + 18;
            }
            _loc1_ = _loc7_.y + 18;
            _loc8_ = _loc7_.x + _loc7_.width;
            if(_loc8_ > _loc5_)
            {
               _loc5_ = _loc8_;
            }
            _loc3_++;
         }
         _loc6_ = int(this.§return switch try§.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc6_)
         {
            if(!this.§return switch try§[_loc4_].visible)
            {
               this.§return switch try§[_loc4_].y = 0;
            }
            _loc4_++;
         }
         this.§5214233551233564123423632234§.graphics.clear();
         this.§5214233551233564123423632234§.graphics.beginFill(1723412,1);
         if(this.§521423134982313511123423632234§.visible)
         {
            _loc2_ = this.§521423134982313511123423632234§.y + this.§521423134982313511123423632234§.height + 5;
         }
         else
         {
            _loc2_ = this.§5214235841235854123423632234§.y + this.§5214235841235854123423632234§.height + 4;
         }
         this.§5214233551233564123423632234§.graphics.drawRect(11 + 7,_loc2_,_loc5_ - 11 - 8,1);
         this.§5214233551233564123423632234§.graphics.endFill();
         this.§5214232433232446123423632234§.width = _loc5_ + 11 + 7;
         this.§5214232433232446123423632234§.height = _loc1_ + 11 + 8;
         this.§5214238097238110123423632234§.x = 11;
         this.§5214238097238110123423632234§.y = 11;
         this.§5214238097238110123423632234§.width = this.§5214232433232446123423632234§.width - 11 * 2;
         this.§5214238097238110123423632234§.height = this.§5214232433232446123423632234§.height - 11 * 2;
         if(this.x + this.§5214232433232446123423632234§.width > §5214235917235930123423632234§.stage.stageWidth / Display.§521423132512313264123423632234§)
         {
            this.x = §5214235917235930123423632234§.stage.stageWidth / Display.§521423132512313264123423632234§ - this.§5214232433232446123423632234§.width;
         }
         if(this.y + this.§5214232433232446123423632234§.height > §5214235917235930123423632234§.stage.stageHeight / Display.§521423132512313264123423632234§)
         {
            this.y = §5214235917235930123423632234§.stage.stageHeight / Display.§521423132512313264123423632234§ - this.§5214232433232446123423632234§.height;
         }
      }
      
      private function §for use catch§(param1:MouseEvent) : void
      {
         §5214232378232391123423632234§.unblockUser(this.§5214232654232667123423632234§);
         this.§true package final§();
      }
      
      private function §default set use§(param1:MouseEvent) : void
      {
         §52142335623369123423632234§.rejectRequest(this.§5214234339234352123423632234§,this.§5214232654232667123423632234§);
         this.§true package final§();
      }
      
      private function §switch var package§(param1:MouseEvent) : void
      {
         §5214233439233452123423632234§.invite(this.§5214234339234352123423632234§);
         this.§true package final§();
      }
      
      private function §true package final§() : void
      {
         this.§5214231464231477123423632234§ = null;
         clearTimeout(this.§5214234760234773123423632234§);
         clearTimeout(this.§switch use class§);
         if(§5214235917235930123423632234§.noticesLayer.contains(this))
         {
            §5214235917235930123423632234§.noticesLayer.removeChild(this);
         }
         this.removeEvents();
      }
      
      private function §5214238531238544123423632234§(param1:MouseEvent) : void
      {
         System.setClipboard(this.§5214235841235854123423632234§.text);
         this.§true package final§();
      }
      
      private function §5214235382235395123423632234§(param1:MouseEvent) : void
      {
         §52142335623369123423632234§.acceptRequest(this.§5214234339234352123423632234§,this.§5214232654232667123423632234§);
         this.§true package final§();
      }
      
      private function §5214238164238177123423632234§(param1:MouseEvent) : void
      {
         var _loc2_:URLRequest = new URLRequest(§52142329523308123423632234§.getUserProfileUrl(this.§5214235841235854123423632234§.text));
         navigateToURL(_loc2_,"_blank");
         this.§true package final§();
      }
      
      private function §5214234581234594123423632234§(param1:MouseEvent) : void
      {
         §5214232378232391123423632234§.blockUser(this.§5214232654232667123423632234§);
         this.§true package final§();
      }
      
      private function §native const include§(param1:MouseEvent) : void
      {
         this.§52142382321123423632234§ = true;
         clearTimeout(this.§5214234760234773123423632234§);
      }
      
      private function §521423136032313616123423632234§(param1:MouseEvent) : void
      {
         §52142335623369123423632234§.addToFriend(this.§5214234339234352123423632234§);
         this.§true package final§();
      }
      
      private function removeEvents() : void
      {
         if(this.§while const default§)
         {
            this.§while const default§ = false;
            this.§5214235109235122123423632234§.removeEventListener("click",this.§521423136032313616123423632234§);
            this.§521423131782313191123423632234§.removeEventListener("click",this.§5214235382235395123423632234§);
            this.§521423126392312652123423632234§.removeEventListener("click",this.§default set use§);
            this.§function var else§.removeEventListener("click",this.§for for each§);
            this.§5214233410233423123423632234§.removeEventListener("click",this.§5214238531238544123423632234§);
            this.§each for super§.removeEventListener("click",this.§break if§);
            this.§if const static§.removeEventListener("click",this.§5214234581234594123423632234§);
            this.§class set finally§.removeEventListener("click",this.§for use catch§);
            this.§var switch try§.removeEventListener("click",this.§switch var package§);
            this.§5214234911234924123423632234§.removeEventListener("click",this.§5214234890234903123423632234§);
            this.§class switch native§.removeEventListener("click",this.§5214238164238177123423632234§);
            if(this.§5214231464231477123423632234§ != null)
            {
               this.§5214231464231477123423632234§.removeEventListener("UserLabelUpdaterEvent.CHANGE_STATUS",this.§5214235082235095123423632234§);
            }
            this.removeEventListener("rollOver",this.§native const include§);
            this.removeEventListener("rollOut",this.§5214231776231789123423632234§);
         }
      }
      
      private function §5214234890234903123423632234§(param1:MouseEvent) : void
      {
         §52142335623369123423632234§.focusOnUser(this.§5214234339234352123423632234§,this.§5214232654232667123423632234§);
         this.§true package final§();
      }
      
      private function §case use each§(param1:Event) : void
      {
         this.§true package final§();
      }
      
      private function §break if§(param1:MouseEvent) : void
      {
         §52142335623369123423632234§.writeInChat(this.§5214234339234352123423632234§,this.§5214232654232667123423632234§);
         this.§true package final§();
      }
      
      private function init() : void
      {
         tabEnabled = false;
         tabChildren = false;
         this.§5214232433232446123423632234§ = new §native for dynamic§();
         addChild(this.§5214232433232446123423632234§);
         this.§5214238097238110123423632234§ = new §include return§(0,0,4278985229);
         addChild(this.§5214238097238110123423632234§);
         this.§5214235841235854123423632234§ = new §5214231141231154123423632234§();
         this.§5214235841235854123423632234§.mouseEnabled = false;
         addChild(this.§5214235841235854123423632234§);
         this.§521423126312312644123423632234§ = new §5214237300237313123423632234§();
         addChild(this.§521423126312312644123423632234§);
         this.§521423134982313511123423632234§ = new §5214231141231154123423632234§();
         addChild(this.§521423134982313511123423632234§);
         this.§return switch try§ = new Vector.<§5214236714236727123423632234§>();
         this.§5214237438237451123423632234§ = new Vector.<§5214236714236727123423632234§>();
         this.§5214235109235122123423632234§ = new §5214236714236727123423632234§();
         this.§5214235109235122123423632234§.text = §5214236363236376123423632234§.getText("FRIENDS_ADD");
         addChild(this.§5214235109235122123423632234§);
         this.§521423131782313191123423632234§ = new §5214236714236727123423632234§();
         this.§521423131782313191123423632234§.text = §5214236363236376123423632234§.getText("FRIENDS_CONFIRM_REQUEST");
         addChild(this.§521423131782313191123423632234§);
         this.§521423126392312652123423632234§ = new §5214236714236727123423632234§();
         this.§521423126392312652123423632234§.text = §5214236363236376123423632234§.getText("FRIENDS_DECLINE_REQUEST");
         addChild(this.§521423126392312652123423632234§);
         this.§function var else§ = new §5214236714236727123423632234§();
         this.§function var else§.text = §5214236363236376123423632234§.getText("FRIENDS_CANCEL_REQUEST");
         addChild(this.§function var else§);
         this.§5214233410233423123423632234§ = new §5214236714236727123423632234§();
         this.§5214233410233423123423632234§.text = §5214236363236376123423632234§.getText("FRIENDS_COPY_NAME");
         addChild(this.§5214233410233423123423632234§);
         this.§each for super§ = new §5214236714236727123423632234§();
         this.§each for super§.text = §5214236363236376123423632234§.getText("FRIENDS_WRITE");
         addChild(this.§each for super§);
         this.§if const static§ = new §5214236714236727123423632234§();
         this.§if const static§.text = §5214236363236376123423632234§.getText("BLOCK_USER_CONTEXT_MENU_LABEL");
         addChild(this.§if const static§);
         this.§class set finally§ = new §5214236714236727123423632234§();
         this.§class set finally§.text = §5214236363236376123423632234§.getText("UNBLOCK_USER_CONTEXT_MENU_LABEL");
         addChild(this.§class set finally§);
         this.§var switch try§ = new §5214237456237469123423632234§();
         this.§var switch try§.text = §5214236363236376123423632234§.getText("STRING_INVITE_TO_BATTLE_LABEL");
         addChild(this.§var switch try§);
         this.§5214234911234924123423632234§ = new §5214236714236727123423632234§();
         this.§5214234911234924123423632234§.text = §5214236363236376123423632234§.getText("TEXT_SPECTATE_TEXT");
         addChild(this.§5214234911234924123423632234§);
         this.§class switch native§ = new §5214236714236727123423632234§();
         this.§class switch native§.text = §5214236363236376123423632234§.getText("TEXT_PROFILE");
         addChild(this.§class switch native§);
         this.§return switch try§.push(this.§each for super§);
         this.§return switch try§.push(this.§5214233410233423123423632234§);
         this.§return switch try§.push(this.§5214235109235122123423632234§);
         this.§return switch try§.push(this.§521423131782313191123423632234§);
         this.§return switch try§.push(this.§521423126392312652123423632234§);
         this.§return switch try§.push(this.§function var else§);
         this.§return switch try§.push(this.§var switch try§);
         this.§return switch try§.push(this.§if const static§);
         this.§return switch try§.push(this.§class set finally§);
         this.§return switch try§.push(this.§class switch native§);
         this.§return switch try§.push(this.§5214234911234924123423632234§);
         this.§5214233551233564123423632234§ = new Shape();
         addChild(this.§5214233551233564123423632234§);
         this.resize();
         §5214235917235930123423632234§.stage.addEventListener("click",this.§521423135152313528123423632234§);
         §5214235917235930123423632234§.stage.addEventListener("deactivate",this.§case use each§);
      }
      
      private function §with set else§() : void
      {
         if(!this.§while const default§)
         {
            this.§while const default§ = true;
            this.§5214235109235122123423632234§.addEventListener("click",this.§521423136032313616123423632234§);
            this.§521423131782313191123423632234§.addEventListener("click",this.§5214235382235395123423632234§);
            this.§521423126392312652123423632234§.addEventListener("click",this.§default set use§);
            this.§function var else§.addEventListener("click",this.§for for each§);
            this.§5214233410233423123423632234§.addEventListener("click",this.§5214238531238544123423632234§);
            this.§each for super§.addEventListener("click",this.§break if§);
            this.§if const static§.addEventListener("click",this.§5214234581234594123423632234§);
            this.§class set finally§.addEventListener("click",this.§for use catch§);
            this.§var switch try§.addEventListener("click",this.§switch var package§);
            this.§5214234911234924123423632234§.addEventListener("click",this.§5214234890234903123423632234§);
            this.§class switch native§.addEventListener("click",this.§5214238164238177123423632234§);
            if(this.§5214231464231477123423632234§ != null)
            {
               this.§5214231464231477123423632234§.addEventListener("UserLabelUpdaterEvent.CHANGE_STATUS",this.§5214235082235095123423632234§);
            }
            this.addEventListener("rollOver",this.§native const include§);
            this.addEventListener("rollOut",this.§5214231776231789123423632234§);
         }
      }
      
      private function §521423138042313817123423632234§() : void
      {
         var _loc1_:Boolean = §5214238546238559123423632234§.hasUserOnlineData(this.§5214234339234352123423632234§) && §5214238546238559123423632234§.getUserOnlineData(this.§5214234339234352123423632234§).online;
         this.§521423134982313511123423632234§.color = _loc1_ ? 1244928 : 11645361;
         if(_loc1_)
         {
            this.§5214235841235854123423632234§.color = 12582791;
            this.§521423134982313511123423632234§.color = 1244928;
            this.§521423134982313511123423632234§.text = §5214236363236376123423632234§.getText("STRING_ONLINE_LABEL");
         }
         else
         {
            this.§5214235841235854123423632234§.color = 11645361;
            this.§521423134982313511123423632234§.color = 11645361;
            this.§521423134982313511123423632234§.text = §5214236363236376123423632234§.getText("STRING_OFFLINE_LABEL");
         }
         this.§5214236423236436123423632234§(_loc1_);
      }
      
      private function §5214236423236436123423632234§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§var switch try§.locked = !§return set get§.availableRank(this.§implements switch in§);
         }
         else
         {
            this.§var switch try§.locked = true;
         }
      }
      
      private function §5214235761235774123423632234§() : void
      {
         if(!this.§52142382321123423632234§)
         {
            this.§true package final§();
         }
      }
      
      public function show(param1:int, param2:int, param3:String, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:Boolean, param12:Boolean, param13:Boolean, param14:Boolean, param15:Boolean) : void
      {
         var _loc16_:Boolean = false;
         if(!this.§switch set case§)
         {
            this.§switch set case§ = true;
            this.init();
         }
         this.x = param1 / Display.§521423132512313264123423632234§;
         this.y = param2 / Display.§521423132512313264123423632234§;
         this.§5214234339234352123423632234§ = param3;
         this.§5214232654232667123423632234§ = param5;
         this.§implements switch in§ = param4;
         this.§5214237742237755123423632234§ = param15;
         if(param15)
         {
            this.§521423126312312644123423632234§.§native for import§(param4);
         }
         else
         {
            this.§521423126312312644123423632234§.§case use catch§(param4);
         }
         this.§5214235841235854123423632234§.text = param5;
         this.§5214235841235854123423632234§.color = param7 ? 12582791 : 5898034;
         if(param7)
         {
            this.§521423138042313817123423632234§();
            this.§5214231464231477123423632234§ = §while for package§.getOrCreateUpdater(this.§5214234339234352123423632234§);
         }
         this.§521423134982313511123423632234§.visible = param7;
         this.§5214235109235122123423632234§.visible = param6;
         this.§521423131782313191123423632234§.visible = param8;
         this.§521423126392312652123423632234§.visible = param9;
         this.§function var else§.visible = param10;
         this.§each for super§.visible = param11;
         if(param14)
         {
            _loc16_ = §5214232378232391123423632234§.isBlocked(param3);
            this.§if const static§.visible = !_loc16_;
            this.§class set finally§.visible = _loc16_;
         }
         else
         {
            this.§if const static§.visible = false;
            this.§class set finally§.visible = false;
         }
         this.§var switch try§.visible = param12 && §5214233439233452123423632234§.getAvailabilityInviteBattle(param3);
         this.§5214234911234924123423632234§.visible = param13;
         this.§5214237438237451123423632234§.length = 0;
         var _loc18_:int = int(this.§return switch try§.length);
         var _loc17_:int = 0;
         while(_loc17_ < _loc18_)
         {
            if(this.§return switch try§[_loc17_].visible)
            {
               this.§5214237438237451123423632234§.push(this.§return switch try§[_loc17_]);
            }
            _loc17_++;
         }
         this.resize();
         §5214235917235930123423632234§.noticesLayer.addChild(this);
         clearTimeout(this.§5214234760234773123423632234§);
         this.§5214234760234773123423632234§ = setTimeout(this.§5214235761235774123423632234§,10000);
         clearTimeout(this.§switch use class§);
         this.§switch use class§ = setTimeout(this.§with set else§,0);
      }
      
      private function §521423135152313528123423632234§(param1:MouseEvent) : void
      {
         if(!this.§while const default§ || this.§52142382321123423632234§)
         {
            return;
         }
         var _loc2_:§5214234011234024123423632234§ = param1.target as §5214234011234024123423632234§;
         if(_loc2_ == null || _loc2_.§5214239243239256123423632234§)
         {
            this.§true package final§();
         }
      }
      
      private function §5214235082235095123423632234§(param1:UserInfoLabelUpdaterEvent) : void
      {
         this.§521423138042313817123423632234§();
      }
      
      private function §for for each§(param1:MouseEvent) : void
      {
         §52142335623369123423632234§.cancelRequest(this.§5214234339234352123423632234§,this.§5214232654232667123423632234§);
         this.§true package final§();
      }
      
      private function §5214231776231789123423632234§(param1:MouseEvent) : void
      {
         this.§52142382321123423632234§ = false;
         clearTimeout(this.§5214234760234773123423632234§);
         this.§5214234760234773123423632234§ = setTimeout(this.§5214235761235774123423632234§,10000);
      }
   }
}

