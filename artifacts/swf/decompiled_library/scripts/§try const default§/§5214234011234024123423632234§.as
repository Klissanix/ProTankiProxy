package §try const default§
{
   import §5214236944236957123423632234§.DiscreteSprite;
   import alternativa.osgi.service.display.IDisplay;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.system.System;
   import §implements for each§.§5214237300237313123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.UserClanInfo;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.§52142355023563123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.FriendInfoLabelUpdaterEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.§5214231456231469123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.UserInfoLabelUpdaterEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import services.contextmenu.IContextMenuService;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §5214234011234024123423632234§ extends Sprite
   {
      
      public static var §while for package§:IUserInfoService;
      
      public static var §use in§:IFriendInfoService;
      
      public static var §52142335623369123423632234§:IContextMenuService;
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      public static var §with var try§:PremiumService;
      
      public static var §5214234066234079123423632234§:ClanUserInfoService;
      
      protected static const §5214233383233396123423632234§:int = 20;
      
      private static const §521423140292314042123423632234§:int = 18;
      
      protected var §dynamic package true§:DiscreteSprite = new DiscreteSprite();
      
      protected var §5214234339234352123423632234§:String;
      
      protected var §5214232654232667123423632234§:String;
      
      protected var §implements switch in§:int;
      
      protected var §521423136412313654123423632234§:FriendState;
      
      protected var §case catch false§:§52142355023563123423632234§;
      
      protected var §5214231464231477123423632234§:§5214231456231469123423632234§;
      
      protected var §5214235841235854123423632234§:§5214231141231154123423632234§;
      
      protected var §521423106752310688123423632234§:Boolean;
      
      protected var §package package true§:Boolean;
      
      protected var §5214237749237762123423632234§:Boolean;
      
      protected var §521423138982313911123423632234§:Boolean;
      
      protected var §5214231872231885123423632234§:Boolean;
      
      protected var §52142354023553123423632234§:Boolean;
      
      protected var §default var final§:Boolean;
      
      private var §521423133662313379123423632234§:Boolean;
      
      private var §521423126312312644123423632234§:§5214237300237313123423632234§;
      
      private var §return switch include§:Boolean;
      
      private var §5214236573236586123423632234§:int;
      
      private var §521423135192313532123423632234§:Boolean;
      
      private var §5214231865231878123423632234§:uint;
      
      private var §null use include§:Boolean;
      
      private var §521423108792310892123423632234§:String = "";
      
      protected var §return set true§:Boolean = true;
      
      public function §5214234011234024123423632234§(param1:String, param2:Boolean = true)
      {
         super();
         if(param1 == null)
         {
            throw Error("UserLabel userId is NULL");
         }
         this.§return set true§ = param2;
         this.§5214234339234352123423632234§ = param1;
         this.init();
      }
      
      private function §finally const native§() : void
      {
         if(this.hasEventListener("click"))
         {
            this.removeEventListener("click",this.onMouseClick);
         }
         this.§5214231464231477123423632234§.removeEventListener("UserLabelUpdaterEvent.CHANGE_STATUS",this.§5214235082235095123423632234§);
         this.§5214231464231477123423632234§.removeEventListener("UserLabelUpdaterEvent.CHANGE_UID",this.§super package const§);
         this.§5214231464231477123423632234§.removeEventListener("UserLabelUpdaterEvent.CHANGE_RANK",this.§try const else§);
         this.§5214231464231477123423632234§.removeEventListener("UserLabelUpdaterEvent.CHANGE_PREMIUM_STATUS",this.§include package package§);
         §with var try§.removeEventListener("change",this.§include package package§);
         this.§case catch false§.removeEventListener("FriendInfoLabelUpdaterEvent.CHANGE_STATE",this.§5214239323239336123423632234§);
      }
      
      private function §521423109452310958123423632234§(param1:Event) : void
      {
         removeEventListener("removedFromStage",this.§521423109452310958123423632234§);
         addEventListener("addedToStage",this.§switch override§);
         this.§finally const native§();
         this.§5214231464231477123423632234§.decrementVisibleLabelsCounter();
         this.§case catch false§.decrementVisibleLabelsCounter();
      }
      
      protected function onMouseClick(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         if(§52142329523308123423632234§.userId == this.§5214234339234352123423632234§)
         {
            return;
         }
         if(!this.§521423138982313911123423632234§ || !this.§5214231872231885123423632234§)
         {
            return;
         }
         if(param1.ctrlKey)
         {
            System.setClipboard(this.§5214232654232667123423632234§);
         }
         else
         {
            switch(this.§521423136412313654123423632234§)
            {
               case FriendState.ACCEPTED:
                  _loc5_ = true;
                  break;
               case FriendState.INCOMING:
                  _loc6_ = true;
                  _loc3_ = true;
                  break;
               case FriendState.OUTGOING:
                  _loc4_ = true;
                  break;
               default:
                  _loc2_ = true;
            }
            §52142335623369123423632234§.show(§5214235917235930123423632234§.stage.mouseX,§5214235917235930123423632234§.stage.mouseY,this.§5214234339234352123423632234§,this.§implements switch in§,this.§5214232654232667123423632234§,_loc2_,_loc5_,_loc6_,_loc3_,_loc4_,this.§521423106752310688123423632234§,this.§521423133662313379123423632234§,this.§52142354023553123423632234§,this.§package package true§,this.§default var final§);
         }
      }
      
      protected function createUidLabel() : void
      {
         this.§5214235841235854123423632234§ = new §5214231141231154123423632234§();
         this.§5214235841235854123423632234§.x = 20 - 2 + this.getAdditionalIconsWidth();
         this.§dynamic package true§.addChild(this.§5214235841235854123423632234§);
         this.§5214235841235854123423632234§.visible = false;
      }
      
      public function §finally for do§(param1:String) : void
      {
         this.§521423108792310892123423632234§ = param1;
         this.§function set each§(this.§5214232654232667123423632234§);
      }
      
      public function get §each use get§() : String
      {
         return this.§5214234339234352123423632234§;
      }
      
      protected function updateProperties() : void
      {
         if(this.§5214231464231477123423632234§.hasData())
         {
            this.§true finally catch§(this.§5214231464231477123423632234§.rank);
            this.§function set each§(this.§5214231464231477123423632234§.uid);
            this.§521423135302313543123423632234§();
         }
         this.§with set dynamic§(this.§case catch false§.state);
      }
      
      public function get §5214235402235415123423632234§() : int
      {
         return this.§5214236573236586123423632234§;
      }
      
      public function set §for override§(param1:Boolean) : void
      {
         this.§521423133662313379123423632234§ = param1;
      }
      
      public function get §5214234670234683123423632234§() : int
      {
         return this.§implements switch in§;
      }
      
      protected function §with finally§() : void
      {
         if(!this.§null use include§)
         {
            if(this.§521423136412313654123423632234§ == FriendState.ACCEPTED)
            {
               this.§5214235841235854123423632234§.color = 12582791;
               return;
            }
            this.§5214235841235854123423632234§.color = this.§5214231865231878123423632234§;
         }
      }
      
      private function §5214239323239336123423632234§(param1:FriendInfoLabelUpdaterEvent) : void
      {
         this.§with set dynamic§(this.§case catch false§.state);
      }
      
      public function get §5214239243239256123423632234§() : Boolean
      {
         return this.§521423135192313532123423632234§;
      }
      
      public function get §for override§() : Boolean
      {
         return this.§521423133662313379123423632234§;
      }
      
      public function get §import for final§() : Boolean
      {
         return this.§return switch include§;
      }
      
      private function §521423135302313543123423632234§() : void
      {
         this.§return switch include§ = this.§5214231464231477123423632234§.online;
         this.§5214236573236586123423632234§ = 1;
      }
      
      public function get §5214236992237005123423632234§() : Boolean
      {
         return this.§default var final§;
      }
      
      public function §try var var§(param1:String) : String
      {
         var _loc2_:UserClanInfo = §5214234066234079123423632234§.userClanInfoByUserId(this.§each use get§);
         if(_loc2_ == null)
         {
            return param1;
         }
         var _loc3_:String = "";
         if(this.§return set true§ && _loc2_ != null && _loc2_.§5214237039237052123423632234§)
         {
            _loc3_ = "[" + _loc2_.§native use var§ + "] ";
         }
         return _loc3_ + param1;
      }
      
      public function set §5214236992237005123423632234§(param1:Boolean) : void
      {
         this.§default var final§ = param1;
         this.updateProperties();
      }
      
      private function §include package package§(param1:Event = null) : void
      {
         this.updateProperties();
      }
      
      protected function createAdditionalIcons() : void
      {
      }
      
      public function get uid() : String
      {
         return this.§5214232654232667123423632234§;
      }
      
      private function §native use set§() : void
      {
         this.§521423126312312644123423632234§.x = 20 - this.§521423126312312644123423632234§.width >> 1;
         this.§521423126312312644123423632234§.y = 18 - this.§521423126312312644123423632234§.height >> 1;
      }
      
      protected function §true finally catch§(param1:int) : void
      {
         this.§implements switch in§ = param1;
         this.§static override§();
         if(!this.§521423138982313911123423632234§)
         {
            this.§521423138982313911123423632234§ = true;
            this.§521423126312312644123423632234§.init(this.§default var final§,this.§implements switch in§);
            this.§521423126312312644123423632234§.visible = true;
         }
         else if(this.§default var final§)
         {
            this.§521423126312312644123423632234§.§native for import§(this.§implements switch in§);
         }
         else
         {
            this.§521423126312312644123423632234§.§true finally catch§(this.§implements switch in§);
         }
         this.§native use set§();
      }
      
      private function §try const else§(param1:UserInfoLabelUpdaterEvent) : void
      {
         this.§true finally catch§(this.§5214231464231477123423632234§.rank);
      }
      
      private function §5214232871232884123423632234§() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.clear();
         _loc1_.graphics.beginFill(65535,0);
         _loc1_.graphics.drawRect(0,0,20,18);
         _loc1_.graphics.endFill();
         this.§521423126312312644123423632234§ = new §5214237300237313123423632234§();
         _loc1_.addChild(this.§521423126312312644123423632234§);
         this.§dynamic package true§.addChild(_loc1_);
         this.§521423126312312644123423632234§.visible = false;
      }
      
      protected function getAdditionalIconsWidth() : Number
      {
         return 0;
      }
      
      private function §with set else§() : void
      {
         if(!this.hasEventListener("click"))
         {
            this.addEventListener("click",this.onMouseClick);
         }
         this.§5214231464231477123423632234§.addEventListener("UserLabelUpdaterEvent.CHANGE_STATUS",this.§5214235082235095123423632234§,false,0,true);
         this.§5214231464231477123423632234§.addEventListener("UserLabelUpdaterEvent.CHANGE_UID",this.§super package const§,false,0,true);
         this.§5214231464231477123423632234§.addEventListener("UserLabelUpdaterEvent.CHANGE_RANK",this.§try const else§,false,0,true);
         this.§5214231464231477123423632234§.addEventListener("UserLabelUpdaterEvent.CHANGE_PREMIUM_STATUS",this.§include package package§,false,0,true);
         §with var try§.addEventListener("change",this.§include package package§);
         this.§case catch false§.addEventListener("FriendInfoLabelUpdaterEvent.CHANGE_STATE",this.§5214239323239336123423632234§,false,0,true);
      }
      
      private function init() : void
      {
         mouseChildren = false;
         mouseEnabled = true;
         tabEnabled = false;
         tabChildren = false;
         addChild(this.§dynamic package true§);
         this.§dynamic package true§.filters = this.getShadowFilters();
         this.§5214231865231878123423632234§ = 5898034;
         this.§521423135192313532123423632234§ = §52142329523308123423632234§.userId == this.§5214234339234352123423632234§;
         if(!this.§521423135192313532123423632234§)
         {
            buttonMode = useHandCursor = true;
         }
         this.§5214232871232884123423632234§();
         this.createAdditionalIcons();
         this.createUidLabel();
         §while for package§.forciblySubscribe(this.§5214234339234352123423632234§);
         this.§5214231464231477123423632234§ = §while for package§.getOrCreateUpdater(this.§5214234339234352123423632234§);
         this.§case catch false§ = §use in§.getOrCreateUpdater(this.§5214234339234352123423632234§);
         this.updateProperties();
         addEventListener("addedToStage",this.§switch override§);
      }
      
      private function §5214235082235095123423632234§(param1:UserInfoLabelUpdaterEvent) : void
      {
         this.§521423135302313543123423632234§();
      }
      
      protected function §static override§() : void
      {
         if(this.§521423135192313532123423632234§)
         {
            this.§default var final§ = §with var try§.hasPremium();
         }
         else
         {
            this.§default var final§ = this.§5214231464231477123423632234§.hasPremium();
         }
      }
      
      private function §switch override§(param1:Event) : void
      {
         removeEventListener("addedToStage",this.§switch override§);
         addEventListener("removedFromStage",this.§521423109452310958123423632234§);
         this.§with set else§();
         this.§5214231464231477123423632234§.incrementVisibleLabelsCounter();
         this.§case catch false§.incrementVisibleLabelsCounter();
      }
      
      private function §super package const§(param1:UserInfoLabelUpdaterEvent) : void
      {
         this.§function set each§(this.§5214231464231477123423632234§.uid);
      }
      
      protected function §with set dynamic§(param1:FriendState) : void
      {
         this.§521423136412313654123423632234§ = param1;
         this.§with finally§();
      }
      
      public function §5214234846234859123423632234§(param1:uint, param2:Boolean = false) : void
      {
         this.§5214231865231878123423632234§ = param1;
         this.§null use include§ = param2;
         this.§5214235841235854123423632234§.color = param1;
         this.§with finally§();
      }
      
      protected function getShadowFilters() : Array
      {
         return null;
      }
      
      protected function §function set each§(param1:String) : void
      {
         if(!this.§5214231872231885123423632234§)
         {
            this.§5214231872231885123423632234§ = true;
            this.§5214235841235854123423632234§.visible = true;
         }
         this.§5214232654232667123423632234§ = param1;
         var _loc2_:String = this.§try var var§(this.§5214232654232667123423632234§);
         var _loc3_:String = _loc2_ + this.§521423108792310892123423632234§;
         if(this.§5214235841235854123423632234§.text == _loc3_)
         {
            return;
         }
         this.§5214235841235854123423632234§.text = _loc3_;
         dispatchEvent(new §5214234998235011123423632234§("ChatUpdateEvent.UPDATE",true));
      }
   }
}

