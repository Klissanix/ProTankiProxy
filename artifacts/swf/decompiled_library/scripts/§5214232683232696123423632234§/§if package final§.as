package §5214232683232696123423632234§
{
   import §521423117942311807123423632234§.§5214233794233807123423632234§;
   import §521423117942311807123423632234§.§5214235498235511123423632234§;
   import §5214231664231677123423632234§.ShortUserInfo;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.model.§5214234569234582123423632234§;
   import alternativa.tanks.models.statistics.IClientUserInfo;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.tanks.services.battleinput.BattleInputLockType;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.tanks.services.targeting.TargetingInputManager;
   import §class switch in§.§5214237664237677123423632234§;
   import §class switch in§.§include use implements§;
   import §class switch in§.§super var function§;
   import §extends var import§.§5214231658231671123423632234§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blockuser.IBlockUserService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.AlertUtils;
   
   public class §if package final§ extends Sprite implements §5214234569234582123423632234§
   {
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §5214236492236505123423632234§:BattleInputService;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §5214232378232391123423632234§:IBlockUserService;
      
      public static var §case const default§:BattleGUIService;
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      public static var §5214232770232783123423632234§:FullscreenService;
      
      public static var §false var continue§:TargetingInputManager;
      
      private const §with catch null§:String = "/block";
      
      private const §in var break§:String = "/unblock";
      
      private var §52142397623989123423632234§:Object;
      
      private var §5214233397233410123423632234§:§5214239043239056123423632234§;
      
      private var §521423118702311883123423632234§:Boolean;
      
      private var §5214237506237519123423632234§:§5214233794233807123423632234§;
      
      private var §5214237335237348123423632234§:TextField;
      
      private var §super set continue§:§var var each§;
      
      private var §break use get§:Boolean;
      
      private var §5214236029236042123423632234§:Boolean;
      
      private var §finally switch do§:Boolean;
      
      private var §override use throw§:§5214231658231671123423632234§;
      
      private var §case const false§:§521423120252312038123423632234§;
      
      public function §if package final§()
      {
         super();
         this.init();
      }
      
      private function §5214234347234360123423632234§() : void
      {
         this.§5214237335237348123423632234§.removeEventListener("focusOut",this.§extends var get§);
         if(§5214232770232783123423632234§.isAvailable())
         {
            §5214235917235930123423632234§.stage.removeEventListener("fullScreen",this.§5214237620237633123423632234§);
            §5214235917235930123423632234§.stage.removeEventListener("fullScreenInteractiveAccepted",this.§5214237620237633123423632234§);
         }
      }
      
      private function §5214235830235843123423632234§(param1:KeyboardEvent) : void
      {
         if(this.§5214237506237519123423632234§.visible)
         {
            if(param1.keyCode == 13)
            {
               if(this.§5214237335237348123423632234§.text != "")
               {
                  if(!this.§5214239313239326123423632234§(this.§5214237335237348123423632234§.text) && hasEventListener("sendMessage"))
                  {
                     dispatchEvent(new §5214233756233769123423632234§("sendMessage",this.§5214237335237348123423632234§.text,this.§finally switch do§));
                  }
                  this.§5214237335237348123423632234§.text = "";
               }
               param1.keyCode = 0;
               this.§function switch static§();
            }
            if(AlertUtils.isCancelKey(param1.keyCode))
            {
               param1.keyCode = 0;
               this.§function switch static§();
            }
            if(param1.keyCode == 9)
            {
               this.§native const return§();
            }
         }
      }
      
      public function §false set final§() : void
      {
         this.§super set continue§.§false set final§();
      }
      
      public function §override for with§(param1:§521423120252312038123423632234§) : void
      {
         this.§case const false§ = param1;
         this.§finally switch do§ = true;
      }
      
      private function §52142326923282123423632234§(param1:Event = null) : void
      {
         if(this.§break use get§)
         {
            this.§super set continue§.§static var super§();
         }
         var _loc3_:int = 0.25 * §5214235917235930123423632234§.stage.stageWidth / Display.§521423132512313264123423632234§;
         var _loc2_:int = §case const default§.getPositionXInventory();
         if(_loc2_ != 0 && this.§5214237506237519123423632234§.x + _loc3_ + 10 > _loc2_)
         {
            _loc3_ = _loc2_ - this.§5214237506237519123423632234§.x - 10;
         }
         this.§5214237506237519123423632234§.width = _loc3_;
         this.§5214237506237519123423632234§.y = §5214235917235930123423632234§.stage.stageHeight / Display.§521423132512313264123423632234§ - this.§5214237506237519123423632234§.height - 70;
         var _loc4_:Number = this.§5214237506237519123423632234§.y - this.§super set continue§.height - 10;
         if(§5214235917235930123423632234§.stage.stageHeight / Display.§521423132512313264123423632234§ > 170)
         {
            while(_loc4_ < 53)
            {
               _loc4_ += this.§super set continue§.height;
               this.§super set continue§.removeFirstMessage();
               _loc4_ -= this.§super set continue§.height;
            }
         }
         this.§super set continue§.y = _loc4_;
         this.§5214233397233410123423632234§.§521423103142310327123423632234§(0.25 * §5214235917235930123423632234§.stage.stageWidth / Display.§521423132512313264123423632234§);
         this.§5214233397233410123423632234§.y = §5214237506237519123423632234§.y + 30;
         if(this.§break use get§)
         {
            this.§521423114352311448123423632234§();
         }
      }
      
      private function §521423114352311448123423632234§() : void
      {
         if(§return set get§.isSpectatorMode())
         {
            if(this.§finally switch do§)
            {
               this.§5214237506237519123423632234§.§521423118452311858123423632234§(§5214235498235511123423632234§.§5214239770239783123423632234§);
               this.§5214237506237519123423632234§.§5214231764231777123423632234§(§5214236363236376123423632234§.getText("CHAT_LABEL_SPECTATORS"));
            }
            else
            {
               this.§5214237506237519123423632234§.§521423118452311858123423632234§(§5214235498235511123423632234§.§break const override§);
               this.§5214237506237519123423632234§.§5214231764231777123423632234§(§5214236363236376123423632234§.getText("CHAT_LABEL_ALL"));
            }
            return;
         }
         if(this.§finally switch do§ && this.§override use throw§ != §5214231658231671123423632234§.§dynamic use false§)
         {
            if(this.§override use throw§ == §5214231658231671123423632234§.§implements set implements§)
            {
               this.§5214237506237519123423632234§.§521423118452311858123423632234§(§5214235498235511123423632234§.§implements set implements§);
            }
            else
            {
               this.§5214237506237519123423632234§.§521423118452311858123423632234§(§5214235498235511123423632234§.§521423107532310766123423632234§);
            }
            this.§5214237506237519123423632234§.§5214231764231777123423632234§(§5214236363236376123423632234§.getText("CHAT_LABEL_TEAM"));
         }
         else
         {
            this.§5214237506237519123423632234§.§521423118452311858123423632234§(§5214235498235511123423632234§.§break const override§);
            this.§5214237506237519123423632234§.§5214231764231777123423632234§(§5214236363236376123423632234§.getText("CHAT_LABEL_ALL"));
         }
      }
      
      private function §5214237620237633123423632234§(param1:Event) : void
      {
         if(this.§break use get§)
         {
            stage.focus = this.§5214237335237348123423632234§;
         }
      }
      
      public function setShowChat(param1:Boolean) : void
      {
         this.§const true§ = param1;
      }
      
      public function §function switch static§() : void
      {
         if(this.§break use get§)
         {
            this.§super set continue§.visible = this.§521423118702311883123423632234§;
            this.§5214233397233410123423632234§.visible = false;
            this.§5214233397233410123423632234§.§extends for native§("");
            if(this.§5214237506237519123423632234§.visible)
            {
               this.§5214234347234360123423632234§();
               this.§break use get§ = false;
               this.§5214237506237519123423632234§.visible = false;
               this.§final package§();
               this.§super set continue§.§5214235379235392123423632234§();
               this.§52142326923282123423632234§();
            }
            §5214236492236505123423632234§.unlock(BattleInputLockType.§with class§);
            §with set include§.dispatchEvent(new §5214233329233342123423632234§(2));
            §false var continue§.endDialog();
         }
      }
      
      private function §native const return§() : void
      {
         this.§finally switch do§ = !this.§finally switch do§;
         this.§521423114352311448123423632234§();
      }
      
      public function §use set var§(param1:String, param2:§5214231658231671123423632234§, param3:String, param4:Boolean, param5:Boolean) : void
      {
         if(!param5)
         {
            if(§5214232378232391123423632234§.isBlocked(param1))
            {
               return;
            }
         }
         this.§super set continue§.§true const throw§(param1,param2,param3,param4,param5);
         this.§52142326923282123423632234§();
      }
      
      private function §final package§() : void
      {
         if(§5214235917235930123423632234§.stage.focus == this.§5214237335237348123423632234§)
         {
            §5214235917235930123423632234§.stage.focus = null;
         }
      }
      
      public function §final const true§() : void
      {
         var _loc1_:ShortUserInfo = null;
         if(!(this.§break use get§ || this.§5214236029236042123423632234§))
         {
            this.§super set continue§.visible = true;
            this.§5214233397233410123423632234§.visible = this.§5214233397233410123423632234§.§521423102522310265123423632234§().length > 0;
            if(!§return set get§.spectator)
            {
               _loc1_ = IClientUserInfo(OSGi.getInstance().getService(IClientUserInfo)).getShortUserInfo(§52142329523308123423632234§.userId);
               this.§override use throw§ = _loc1_.teamType;
            }
            this.§5214236414236427123423632234§();
            this.§break use get§ = true;
            this.§5214237335237348123423632234§.text = "";
            this.§5214237506237519123423632234§.visible = true;
            §5214235917235930123423632234§.stage.focus = this.§5214237335237348123423632234§;
            this.§52142326923282123423632234§();
            §5214236492236505123423632234§.lock(BattleInputLockType.§with class§);
            §with set include§.dispatchEvent(new §5214233329233342123423632234§(1));
            this.§521423114352311448123423632234§();
            §false var continue§.startDialog();
         }
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.§5214236029236042123423632234§ = param1;
      }
      
      private function §5214236414236427123423632234§() : void
      {
         this.§5214237335237348123423632234§.addEventListener("focusOut",this.§extends var get§);
         if(§5214232770232783123423632234§.isAvailable())
         {
            §5214235917235930123423632234§.stage.addEventListener("fullScreen",this.§5214237620237633123423632234§);
            §5214235917235930123423632234§.stage.addEventListener("fullScreenInteractiveAccepted",this.§5214237620237633123423632234§);
         }
      }
      
      public function §5214232404232417123423632234§(param1:String) : void
      {
         this.§5214233397233410123423632234§.§extends for native§(param1);
      }
      
      private function §5214239313239326123423632234§(param1:String) : Boolean
      {
         if(param1.charAt(0) != "/")
         {
            return false;
         }
         var _loc2_:Array = param1.split(/\s+/);
         if(_loc2_.length == 0)
         {
            return false;
         }
         var _loc3_:String = _loc2_.shift();
         var _loc4_:§5214237664237677123423632234§ = this.§52142397623989123423632234§[_loc3_];
         if(_loc4_ == null)
         {
            return false;
         }
         _loc4_.§5214239313239326123423632234§(_loc2_);
         return true;
      }
      
      public function get §each set function§() : Boolean
      {
         return this.§break use get§;
      }
      
      public function set §const true§(param1:Boolean) : void
      {
         if(this.§521423118702311883123423632234§ != param1)
         {
            this.§521423118702311883123423632234§ = param1;
            if(!this.§break use get§)
            {
               this.§super set continue§.visible = this.§521423118702311883123423632234§;
            }
         }
      }
      
      private function §switch override§(param1:Event) : void
      {
         this.§5214237506237519123423632234§.visible = false;
         stage.addEventListener("resize",this.§52142326923282123423632234§);
         this.§52142326923282123423632234§(null);
      }
      
      private function init() : void
      {
         this.§5214237506237519123423632234§ = new §5214233794233807123423632234§();
         this.§5214237506237519123423632234§.tabEnabled = false;
         this.§5214237506237519123423632234§.tabChildren = false;
         this.§5214237506237519123423632234§.x = 10;
         addChild(this.§5214237506237519123423632234§);
         this.§5214237335237348123423632234§ = this.§5214237506237519123423632234§.§52142339223405123423632234§;
         this.§5214237335237348123423632234§.maxChars = 299;
         this.§5214237335237348123423632234§.addEventListener("keyUp",this.§5214235830235843123423632234§);
         this.§5214237335237348123423632234§.addEventListener("focusIn",this.§5214233822233835123423632234§);
         this.§super set continue§ = new §var var each§();
         this.§super set continue§.visible = this.§521423118702311883123423632234§;
         this.§super set continue§.tabEnabled = false;
         this.§super set continue§.tabChildren = false;
         this.§super set continue§.x = 10;
         addChild(this.§super set continue§);
         this.§5214233397233410123423632234§ = new §5214239043239056123423632234§();
         this.§5214233397233410123423632234§.x = 10;
         this.§5214233397233410123423632234§.visible = false;
         addChild(this.§5214233397233410123423632234§);
         this.§5214232595232608123423632234§();
         addEventListener("addedToStage",this.§switch override§);
         addEventListener("removedFromStage",this.§continue use each§);
      }
      
      private function §5214232595232608123423632234§() : void
      {
         this.§52142397623989123423632234§ = {};
         this.§52142397623989123423632234§["/block"] = new §super var function§(this.§super set continue§);
         this.§52142397623989123423632234§["/unblock"] = new §include use implements§(this.§super set continue§);
      }
      
      private function §extends var get§(param1:FocusEvent) : void
      {
         if(stage && this.§5214237335237348123423632234§ && this.§5214237506237519123423632234§ && this.§5214237506237519123423632234§.visible)
         {
            stage.focus = this.§5214237335237348123423632234§;
         }
         else
         {
            this.§function switch static§();
         }
      }
      
      public function §while var var§(param1:String) : void
      {
         this.§super set continue§.§while var var§(param1);
         this.§52142326923282123423632234§();
      }
      
      private function §5214233822233835123423632234§(param1:FocusEvent) : void
      {
         if(!this.§break use get§)
         {
            this.§final package§();
         }
      }
      
      private function §continue use each§(param1:Event) : void
      {
         stage.removeEventListener("resize",this.§52142326923282123423632234§);
      }
   }
}

