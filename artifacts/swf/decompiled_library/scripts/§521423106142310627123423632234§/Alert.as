package §521423106142310627123423632234§
{
   import §5214233785233798123423632234§.§dynamic for native§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.utils.removeDisplayObject;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import §include else§.§each set with§;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.AlertUtils;
   import §switch set for§.§else catch in§;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   
   public class Alert extends Sprite
   {
      
      public static const §do var for§:int = 0;
      
      public static const §521423113222311335123423632234§:int = 1;
      
      public static const §if in§:int = 2;
      
      public static const §try catch final§:int = 3;
      
      public static const §while use use§:int = 4;
      
      public static const ERROR_CALLSIGN_LENGTH:int = 5;
      
      public static const §class use use§:int = 6;
      
      public static const ERROR_PASSWORD_LENGTH:int = 7;
      
      public static const ERROR_PASSWORD_INCORRECT:int = 8;
      
      public static const ERROR_PASSWORD_CHANGE:int = 9;
      
      public static const §class const implements§:int = 10;
      
      public static const ERROR_EMAIL_INVALID:int = 11;
      
      public static const §dynamic const dynamic§:int = 12;
      
      public static const §set for else§:int = 13;
      
      public static const ERROR_FATAL:int = 14;
      
      public static const ERROR_FATAL_DEBUG:int = 15;
      
      public static const §521423116912311704123423632234§:int = 16;
      
      public static const §5214235888235901123423632234§:int = 17;
      
      public static const §false for final§:int = 18;
      
      public static const CAPTCHA_INCORRECT:int = 19;
      
      public static const §5214238094238107123423632234§:int = 20;
      
      public static const §each var import§:int = 21;
      
      protected var §import var switch§:§native for dynamic§ = new §native for dynamic§();
      
      private var §super set continue§:§5214231141231154123423632234§;
      
      private var message:String;
      
      private var §5214234426234439123423632234§:Vector.<String>;
      
      protected var §static use case§:Sprite = new Sprite();
      
      public var closeButton:Sprite = new Sprite();
      
      private var §5214237441237454123423632234§:Boolean = false;
      
      private const §else finally const§:Array = [];
      
      private var id:int;
      
      private var §5214236363236376123423632234§:ILocaleService;
      
      private var §521423100912310104123423632234§:Vector.<Sprite>;
      
      public function Alert(param1:int = -1, param2:Boolean = false)
      {
         super();
         this.§5214237441237454123423632234§ = param2;
         this.id = param1;
         this.init();
      }
      
      public static function fillButtonLabels(param1:ILocaleService) : void
      {
         AlertAnswer.§521423109842310997123423632234§ = param1.getText("ALERT_ANSWER_YES");
         AlertAnswer.§521423128132312826123423632234§ = param1.getText("ALERT_ANSWER_NO");
         AlertAnswer.OK = param1.getText("ALERT_ANSWER_OK");
         AlertAnswer.§final set get§ = param1.getText("ALERT_ANSWER_CANCEL");
         AlertAnswer.SEND = param1.getText("ALERT_ANSWER_SEND_BUG_REPORT");
         AlertAnswer.§set var break§ = param1.getText("ALERT_ANSWER_RETURN_TO_BATTLE");
         AlertAnswer.GARAGE = param1.getText("ALERT_ANSWER_GO_TO_GARAGE");
         AlertAnswer.§521423137262313739123423632234§ = param1.getText("ALERT_ANSWER_PROCEED");
         AlertAnswer.ENTER = param1.getText("BATTLEINFO_PANEL_PAID_BATTLES_ALERT_ANSWER_ENTER");
         AlertAnswer.§521423131522313165123423632234§ = param1.getText("BATTLEINFO_PANEL_PAID_BATTLES_ALERT_ANSWER_DONT_ENTER");
      }
      
      private function d6aa4bae() : int
      {
         var _loc1_:int = 0;
         var _loc3_:int = 80;
         var _loc2_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         while(_loc1_ < this.§5214234426234439123423632234§.length)
         {
            _loc2_.text = this.§5214234426234439123423632234§[_loc1_];
            if(_loc2_.width > _loc3_)
            {
               _loc3_ = _loc2_.width;
            }
            _loc1_++;
         }
         return _loc3_ + 18;
      }
      
      public function simulatePressedCancel() : void
      {
         var _loc1_:String = null;
         if(this.§5214234426234439123423632234§.length == 2)
         {
            _loc1_ = this.c21855b0(this.e440169a());
         }
         else if(this.§5214234426234439123423632234§.length == 1)
         {
            _loc1_ = this.§5214234426234439123423632234§[0];
         }
         if(_loc1_ != null)
         {
            this.f5185d8a(_loc1_);
         }
      }
      
      private function d6274861(param1:Object) : Boolean
      {
         return param1 is §else catch in§ || param1 is §dynamic for native§;
      }
      
      private function b59e52de() : void
      {
         this.§super set continue§ = new §5214231141231154123423632234§();
         this.§super set continue§.autoSize = "center";
         this.§super set continue§.align = "center";
         this.§super set continue§.§521423102842310297123423632234§ = 14;
         this.§super set continue§.width = 10;
         this.§super set continue§.height = 10;
         this.§super set continue§.x = -5;
         this.§super set continue§.y = 30;
         this.§super set continue§.multiline = true;
      }
      
      private function close(param1:MouseEvent) : void
      {
         stage.removeEventListener("resize",this.onStageResize);
         stage.removeEventListener("keyUp",this.onKeyUp);
         this.b4d4148d();
         while(this.§static use case§.numChildren > 0)
         {
            this.§static use case§.removeChildAt(0);
         }
         if(this.d6274861(param1.currentTarget))
         {
            dispatchEvent(new §each set with§(this.d31c2d5e(param1.currentTarget)));
         }
         removeDisplayObject(this);
      }
      
      private function b4d4148d() : void
      {
         var _loc1_:int = 0;
         var _loc2_:DisplayObject = null;
         while(_loc1_ < this.§static use case§.numChildren)
         {
            _loc2_ = this.§static use case§.getChildAt(_loc1_);
            if(_loc2_ == this.closeButton)
            {
               _loc2_.removeEventListener("click",this.close);
            }
            _loc1_++;
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         removeEventListener("addedToStage",this.onAddedToStage);
         this.doLayout(param1);
      }
      
      public function showAlertWithCustomButtons(param1:String, param2:Vector.<String>, param3:Vector.<Sprite>) : void
      {
         this.message = param1;
         this.§5214234426234439123423632234§ = param2;
         this.§521423100912310104123423632234§ = param3;
         addEventListener("addedToStage",this.onAddedToStage);
      }
      
      private function d31c2d5e(param1:Object) : String
      {
         if(param1 is §else catch in§)
         {
            return §else catch in§(param1).label;
         }
         if(param1 is §dynamic for native§)
         {
            return §dynamic for native§(param1).label;
         }
         return null;
      }
      
      protected function doLayout(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc2_:Sprite = null;
         var _loc5_:§5214237085237098123423632234§ = null;
         var _loc4_:int = this.d6aa4bae();
         var _loc6_:int = _loc4_ * this.§5214234426234439123423632234§.length / 2;
         addChild(this.§static use case§);
         this.§static use case§.addChild(this.§import var switch§);
         this.§static use case§.addChild(this.§super set continue§);
         this.§super set continue§.htmlText = this.message;
         if(this.f72661())
         {
            _loc3_ = 0;
            while(_loc3_ < this.§5214234426234439123423632234§.length)
            {
               if(this.c5108902())
               {
                  _loc2_ = this.§521423100912310104123423632234§[_loc3_];
               }
               else
               {
                  _loc2_ = new §5214237085237098123423632234§();
                  _loc2_.label = this.§5214234426234439123423632234§[_loc3_];
               }
               _loc2_.x = _loc4_ * _loc3_ - _loc6_;
               _loc2_.y = this.§super set continue§.y + this.§super set continue§.height + 15;
               _loc2_.width = _loc4_ - 6;
               _loc2_.addEventListener("click",this.close);
               this.§static use case§.addChild(_loc2_);
               _loc3_++;
            }
            this.§import var switch§.height = _loc2_.y + 60;
         }
         else
         {
            this.§import var switch§.height = this.§super set continue§.y + this.§super set continue§.height + 30;
         }
         this.§import var switch§.width = Math.max(int(this.§super set continue§.width + 50),_loc6_ * 2 + 50);
         this.§import var switch§.x = -(int(this.§import var switch§.width / 2)) - 3;
         stage.addEventListener("resize",this.onStageResize);
         stage.addEventListener("keyUp",this.onKeyUp,false,-3);
         stage.focus = this;
         if(this.§5214237441237454123423632234§)
         {
            this.§static use case§.addChild(this.closeButton);
            this.closeButton.x = this.§import var switch§.x + this.§import var switch§.width - this.closeButton.width - 10;
            this.closeButton.y = 10;
            this.closeButton.addEventListener("click",this.close);
         }
         this.onStageResize(null);
      }
      
      private function f72661() : Boolean
      {
         return this.§5214234426234439123423632234§.length != 0;
      }
      
      private function onStageResize(param1:Event) : void
      {
         this.§static use case§.x = int(stage.stageWidth / Display.§521423132512313264123423632234§ / 2);
         this.§static use case§.y = int(stage.stageHeight / Display.§521423132512313264123423632234§ / 2 - this.§static use case§.height / 2);
      }
      
      private function f5185d8a(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:DisplayObject = null;
         while(_loc2_ < this.§static use case§.numChildren)
         {
            _loc3_ = this.§static use case§.getChildAt(_loc2_);
            if(this.d6274861(_loc3_) && this.d31c2d5e(_loc3_) == param1)
            {
               _loc3_.dispatchEvent(new MouseEvent("click"));
               return;
            }
            _loc2_++;
         }
      }
      
      public function showAlert(param1:String, param2:Vector.<String>) : void
      {
         this.message = param1;
         this.§521423100912310104123423632234§ = null;
         this.§5214234426234439123423632234§ = param2;
         addEventListener("addedToStage",this.onAddedToStage);
      }
      
      private function onKeyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:String = null;
         switch(int(this.§5214234426234439123423632234§.length) - 1)
         {
            case 0:
               if(AlertUtils.isConfirmationKey(param1.keyCode) || AlertUtils.isCancelKey(param1.keyCode))
               {
                  _loc2_ = this.§5214234426234439123423632234§[0];
               }
               break;
            case 1:
               if(AlertUtils.isConfirmationKey(param1.keyCode))
               {
                  _loc2_ = this.c21855b0(this.f73823b6());
                  break;
               }
               if(AlertUtils.isCancelKey(param1.keyCode))
               {
                  _loc2_ = this.c21855b0(this.e440169a());
               }
               break;
            case 2:
               if(AlertUtils.isConfirmationKey(param1.keyCode))
               {
                  _loc2_ = this.c21855b0(this.f73823b6());
                  break;
               }
               if(AlertUtils.isCancelKey(param1.keyCode))
               {
                  _loc2_ = this.c21855b0(Vector.<String>([AlertAnswer.§final set get§]));
               }
         }
         if(_loc2_ != null)
         {
            param1.stopImmediatePropagation();
            this.f5185d8a(_loc2_);
         }
      }
      
      private function c5108902() : Boolean
      {
         return this.§521423100912310104123423632234§ != null;
      }
      
      private function e440169a() : Vector.<String>
      {
         return Vector.<String>([AlertAnswer.§521423128132312826123423632234§,AlertAnswer.§final set get§,AlertAnswer.§set var break§,AlertAnswer.§521423131522313165123423632234§]);
      }
      
      private function init() : void
      {
         this.§5214236363236376123423632234§ = ILocaleService(OSGi.getInstance().getService(ILocaleService));
         this.§import var switch§.§extends package var§ = this.§5214236363236376123423632234§.getText("GUI_LANG");
         if(AlertAnswer.§521423109842310997123423632234§ == null)
         {
            fillButtonLabels(this.§5214236363236376123423632234§);
         }
         this.c5f308b9(this.§5214236363236376123423632234§);
         if(this.id > -1)
         {
            this.showAlert(this.§else finally const§[this.id][0],this.§else finally const§[this.id][1]);
         }
         this.b59e52de();
      }
      
      private function c21855b0(param1:Vector.<String>) : String
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         while(_loc3_ < this.§5214234426234439123423632234§.length)
         {
            _loc2_ = param1.indexOf(this.§5214234426234439123423632234§[_loc3_]);
            if(_loc2_ > -1)
            {
               return param1[_loc2_];
            }
            _loc3_++;
         }
         return "";
      }
      
      private function c5f308b9(param1:ILocaleService) : void
      {
         this.§else finally const§[0] = [param1.getText("ALERT_QUIT_TEXT"),Vector.<String>([AlertAnswer.§521423109842310997123423632234§,AlertAnswer.§521423128132312826123423632234§])];
         this.§else finally const§[1] = [param1.getText("ALERT_EMAIL_CONFIRMED"),Vector.<String>([AlertAnswer.§521423109842310997123423632234§])];
         this.§else finally const§[14] = [param1.getText("ERROR_FATAL"),Vector.<String>([AlertAnswer.§set var break§])];
         this.§else finally const§[15] = [param1.getText("ERROR_FATAL_DEBUG"),Vector.<String>([AlertAnswer.SEND])];
         this.§else finally const§[2] = [param1.getText("ERROR_CALLSIGN_WRONG_FIRST_SYMBOL"),Vector.<String>([AlertAnswer.OK])];
         this.§else finally const§[3] = [param1.getText("ERROR_CALLSIGN_NOT_SINGLE_DEVIDERS"),Vector.<String>([AlertAnswer.OK])];
         this.§else finally const§[4] = [param1.getText("ERROR_CALLSIGN_WRONG_LAST_SYMBOL"),Vector.<String>([AlertAnswer.OK])];
         this.§else finally const§[5] = [param1.getText("ERROR_CALLSIGN_LENGTH"),Vector.<String>([AlertAnswer.OK])];
         this.§else finally const§[6] = [param1.getText("ERROR_CALLSIGN_NOT_UNIQUE"),Vector.<String>([AlertAnswer.OK])];
         this.§else finally const§[10] = [param1.getText("ERROR_EMAIL_NOT_UNIQUE"),Vector.<String>([AlertAnswer.OK])];
         this.§else finally const§[11] = [param1.getText("ERROR_EMAIL_INVALID"),Vector.<String>([AlertAnswer.OK])];
         this.§else finally const§[12] = [param1.getText("ERROR_EMAIL_NOT_FOUND"),Vector.<String>([AlertAnswer.OK])];
         this.§else finally const§[13] = [param1.getText("ERROR_EMAIL_NOT_SENDED"),Vector.<String>([AlertAnswer.OK])];
         this.§else finally const§[8] = [param1.getText("ERROR_PASSWORD_INCORRECT"),Vector.<String>([AlertAnswer.OK])];
         this.§else finally const§[7] = [param1.getText("ERROR_PASSWORD_LENGTH"),Vector.<String>([AlertAnswer.OK])];
         this.§else finally const§[9] = [param1.getText("ERROR_PASSWORD_CHANGE"),Vector.<String>([AlertAnswer.OK])];
         this.§else finally const§[16] = [param1.getText("ALERT_GARAGE_AVAILABLE"),Vector.<String>([AlertAnswer.GARAGE,AlertAnswer.§final set get§])];
         this.§else finally const§[17] = [param1.getText("SETTINGS_CHANGE_PASSWORD_CONFIRMATION_SENT_TEXT"),Vector.<String>([AlertAnswer.OK])];
         this.§else finally const§[18] = [param1.getText("ALERT_CHAT_PROCEED_EXTERNAL_LINK"),Vector.<String>([AlertAnswer.§final set get§])];
         this.§else finally const§[19] = [param1.getText("CAPTCHA_INCORRECT"),Vector.<String>([AlertAnswer.OK])];
         this.§else finally const§[20] = [param1.getText("ALERT_EMAIL_CONFIRMED_WRONG_LINK"),Vector.<String>([AlertAnswer.OK])];
         this.§else finally const§[21] = [param1.getText("PARTNER_USERNAME_ALREDY_USED_ERROR"),Vector.<String>([AlertAnswer.OK])];
      }
      
      private function f73823b6() : Vector.<String>
      {
         return Vector.<String>([AlertAnswer.OK,AlertAnswer.§521423109842310997123423632234§,AlertAnswer.GARAGE,AlertAnswer.§521423137262313739123423632234§,AlertAnswer.SEND,AlertAnswer.ENTER,this.§5214236363236376123423632234§.getText("BATTLE_ENTER_WARNING_PARKOUR_BUTTON_ENTER")]);
      }
   }
}

