package §5214232186232199123423632234§
{
   import §521423106142310627123423632234§.AlertAnswer;
   import §5214233785233798123423632234§.§native for dynamic§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import §include else§.§each set with§;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   
   public class §for const package§ extends Sprite
   {
      
      public static const §do var for§:int = 0;
      
      public static const §521423113222311335123423632234§:int = 1;
      
      public static const §if in§:int = 2;
      
      public static const §try catch final§:int = 3;
      
      public static const §while use use§:int = 4;
      
      public static const §5214237888237901123423632234§:int = 5;
      
      public static const §class use use§:int = 6;
      
      public static const §throw set do§:int = 7;
      
      public static const §5214237412237425123423632234§:int = 8;
      
      public static const §521423110912311104123423632234§:int = 9;
      
      public static const §class const implements§:int = 10;
      
      public static const §521423101752310188123423632234§:int = 11;
      
      public static const §dynamic const dynamic§:int = 12;
      
      public static const §set for else§:int = 13;
      
      public static const §in set dynamic§:int = 14;
      
      public static const §false switch implements§:int = 15;
      
      public static const §521423116912311704123423632234§:int = 16;
      
      public static const §5214235888235901123423632234§:int = 17;
      
      public static const §false for final§:int = 18;
      
      public static const §each var switch§:int = 19;
      
      public static const §5214238094238107123423632234§:int = 20;
      
      public static var §5214236363236376123423632234§:ILocaleService = OSGi.getInstance().getService(ILocaleService) as ILocaleService;
      
      protected var §import var switch§:§native for dynamic§ = new §native for dynamic§();
      
      private var §super set continue§:§5214231141231154123423632234§;
      
      private var message:String;
      
      private var §5214234426234439123423632234§:Vector.<String>;
      
      protected var §static use case§:Sprite = new Sprite();
      
      public var closeButton:Sprite = new Sprite();
      
      private var §5214237441237454123423632234§:Boolean = false;
      
      private const §else finally const§:Array = [];
      
      private var id:int;
      
      public function §for const package§(param1:int = -1, param2:Boolean = false)
      {
         super();
         this.§5214237441237454123423632234§ = param2;
         this.id = param1;
         this.init();
      }
      
      private static function §521423107232310736123423632234§(param1:KeyboardEvent) : Boolean
      {
         return [32,13].indexOf(param1.keyCode) >= 0;
      }
      
      private static function §5214232360232373123423632234§(param1:KeyboardEvent) : Boolean
      {
         return [27,8].indexOf(param1.keyCode) >= 0;
      }
      
      private function §implements var const§() : void
      {
         this.§super set continue§ = new §5214231141231154123423632234§();
         this.§super set continue§.autoSize = "center";
         this.§super set continue§.align = "center";
         this.§super set continue§.§521423102842310297123423632234§ = 13;
         this.§super set continue§.width = 10;
         this.§super set continue§.height = 10;
         this.§super set continue§.x = -5;
         this.§super set continue§.y = 30;
         this.§super set continue§.multiline = true;
      }
      
      private function §switch override§(param1:Event) : void
      {
         removeEventListener("addedToStage",this.§switch override§);
         this.drawBackground();
         this.§if for continue§(param1);
      }
      
      private function §5214232798232811123423632234§(param1:ILocaleService) : void
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
      }
      
      private function §5214236932236945123423632234§(param1:String) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§static use case§.numChildren)
         {
            _loc2_ = this.§static use case§.getChildAt(_loc3_);
            if(_loc2_ is §5214237085237098123423632234§ && §5214237085237098123423632234§(_loc2_).label == param1)
            {
               _loc2_.dispatchEvent(new MouseEvent("click"));
               return;
            }
            _loc3_++;
         }
      }
      
      private function §521423104622310475123423632234§(param1:Event) : void
      {
         this.§static use case§.x = int(stage.stageWidth / Display.§521423132512313264123423632234§ / 2);
         this.§static use case§.y = int(stage.stageHeight / Display.§521423132512313264123423632234§ / 2 - this.§static use case§.height / 2);
         this.drawBackground();
      }
      
      public function init() : void
      {
         this.§import var switch§.§extends package var§ = §5214236363236376123423632234§.getText("GUI_LANG");
         if(AlertAnswer.§521423109842310997123423632234§ == null)
         {
            this.§extends use package§();
         }
         this.§5214232798232811123423632234§(§5214236363236376123423632234§);
         if(this.id > -1)
         {
            this.§case catch throw§(this.§else finally const§[this.id][0],this.§else finally const§[this.id][1]);
         }
         this.§implements var const§();
      }
      
      private function drawBackground() : void
      {
         graphics.clear();
         graphics.beginFill(0,0.5);
         graphics.drawRect(0,0,stage.stageWidth / Display.§521423132512313264123423632234§,stage.stageHeight / Display.§521423132512313264123423632234§);
         graphics.endFill();
      }
      
      private function §extends use package§() : void
      {
         AlertAnswer.§521423109842310997123423632234§ = §5214236363236376123423632234§.getText("ALERT_ANSWER_YES");
         AlertAnswer.§521423128132312826123423632234§ = §5214236363236376123423632234§.getText("ALERT_ANSWER_NO");
         AlertAnswer.OK = §5214236363236376123423632234§.getText("ALERT_ANSWER_OK");
         AlertAnswer.§final set get§ = §5214236363236376123423632234§.getText("ALERT_ANSWER_CANCEL");
         AlertAnswer.SEND = §5214236363236376123423632234§.getText("ALERT_ANSWER_SEND_BUG_REPORT");
         AlertAnswer.§set var break§ = §5214236363236376123423632234§.getText("ALERT_ANSWER_RETURN_TO_BATTLE");
         AlertAnswer.GARAGE = §5214236363236376123423632234§.getText("ALERT_ANSWER_GO_TO_GARAGE");
         AlertAnswer.§521423137262313739123423632234§ = §5214236363236376123423632234§.getText("ALERT_ANSWER_PROCEED");
      }
      
      public function §case catch throw§(param1:String, param2:Vector.<String>) : void
      {
         this.message = param1;
         this.§5214234426234439123423632234§ = param2;
         addEventListener("addedToStage",this.§switch override§);
      }
      
      private function §5214234702234715123423632234§() : int
      {
         var _loc1_:int = 80;
         var _loc2_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§5214234426234439123423632234§.length)
         {
            _loc2_.text = this.§5214234426234439123423632234§[_loc3_];
            if(_loc2_.width > _loc1_)
            {
               _loc1_ = _loc2_.width;
            }
            _loc3_++;
         }
         return _loc1_ + 18;
      }
      
      private function §return switch get§() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§static use case§.numChildren)
         {
            _loc1_ = this.§static use case§.getChildAt(_loc2_);
            if(_loc1_ is §5214237085237098123423632234§ || _loc1_ == this.closeButton)
            {
               _loc1_.removeEventListener("click",this.close);
            }
            _loc2_++;
         }
      }
      
      private function close(param1:MouseEvent) : void
      {
         stage.removeEventListener("resize",this.§521423104622310475123423632234§);
         stage.removeEventListener("keyDown",this.§null var class§);
         this.§return switch get§();
         var _loc2_:§5214237085237098123423632234§ = param1.currentTarget as §5214237085237098123423632234§;
         if(_loc2_ != null)
         {
            dispatchEvent(new §each set with§(_loc2_.label));
         }
         if(parent != null)
         {
            parent.removeChild(this);
         }
      }
      
      private function §5214235118235131123423632234§(param1:Array) : String
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
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
      
      private function §null var class§(param1:KeyboardEvent) : void
      {
         var _loc2_:String = null;
         if(this.§5214234426234439123423632234§.length == 2)
         {
            if(§521423107232310736123423632234§(param1))
            {
               _loc2_ = this.§5214235118235131123423632234§([AlertAnswer.OK,AlertAnswer.§521423109842310997123423632234§,AlertAnswer.GARAGE,AlertAnswer.§521423137262313739123423632234§,AlertAnswer.SEND]);
            }
            else if(§5214232360232373123423632234§(param1))
            {
               _loc2_ = this.§5214235118235131123423632234§([AlertAnswer.§521423128132312826123423632234§,AlertAnswer.§final set get§,AlertAnswer.§set var break§]);
            }
         }
         else
         {
            _loc2_ = this.§5214235118235131123423632234§([AlertAnswer.§521423109842310997123423632234§,AlertAnswer.SEND,AlertAnswer.§set var break§,AlertAnswer.OK,AlertAnswer.§final set get§]);
         }
         this.§5214236932236945123423632234§(_loc2_);
      }
      
      protected function §if for continue§(param1:Event) : void
      {
         var _loc2_:§5214237085237098123423632234§ = null;
         var _loc4_:int = 0;
         var _loc5_:int = this.§5214234702234715123423632234§();
         var _loc3_:int = _loc5_ * this.§5214234426234439123423632234§.length / 2;
         addChild(this.§static use case§);
         this.§static use case§.addChild(this.§import var switch§);
         this.§static use case§.addChild(this.§super set continue§);
         this.§super set continue§.htmlText = this.message;
         if(this.§5214234426234439123423632234§.length != 0)
         {
            _loc4_ = 0;
            while(_loc4_ < this.§5214234426234439123423632234§.length)
            {
               _loc2_ = new §5214237085237098123423632234§();
               _loc2_.label = this.§5214234426234439123423632234§[_loc4_];
               _loc2_.x = _loc5_ * _loc4_ - _loc3_;
               _loc2_.y = this.§super set continue§.y + this.§super set continue§.height + 15;
               _loc2_.width = _loc5_ - 6;
               _loc2_.addEventListener("click",this.close);
               this.§static use case§.addChild(_loc2_);
               _loc4_++;
            }
            this.§import var switch§.height = _loc2_.y + 60;
         }
         else
         {
            this.§import var switch§.height = this.§super set continue§.y + this.§super set continue§.height + 30;
         }
         this.§import var switch§.width = Math.max(int(this.§super set continue§.width + 50),_loc3_ * 2 + 50);
         this.§import var switch§.x = -(int(this.§import var switch§.width / 2)) - 3;
         stage.addEventListener("resize",this.§521423104622310475123423632234§);
         stage.addEventListener("keyDown",this.§null var class§);
         stage.focus = this;
         if(this.§5214237441237454123423632234§)
         {
            this.§static use case§.addChild(this.closeButton);
            this.closeButton.x = this.§import var switch§.x + this.§import var switch§.width - this.closeButton.width - 10;
            this.closeButton.y = 10;
            this.closeButton.addEventListener("click",this.close);
         }
         this.§521423104622310475123423632234§(null);
      }
   }
}

