from __future__ import annotations

from ...constants import (
    CONFIG_HTTP_HOST,
    CONFIG_HTTP_PORT,
    FALLBACK_CDN_IPS,
    FALLBACK_DOMAINS,
    SERVER_HOST,
    SERVER_PORT,
)
from .identifiers import (
    BATTLE_SERVICE_STATIC,
    BONUS_REGIONS_CLASS,
    BONUS_REGIONS_PKG,
    BONUS_REGIONS_POINTS_METHOD,
    BONUS_REGISTRY_FIELD,
    DRIVE_CTRL,
    GET_CAMERA_METHOD,
    MINE_MODEL_CLASS,
    MINE_MODEL_PKG,
    MINE_MODEL_POINTS_METHOD,
    MINE_MODEL_STATIC_FIELD,
    PKG_BONUS_COMMON,
)

_MIRRORS_TEXT = ", ".join(FALLBACK_CDN_IPS) if FALLBACK_CDN_IPS else "-"
_HOSTS_COUNT = str(len(FALLBACK_DOMAINS))
_ROUTING_MAIN = f"{CONFIG_HTTP_HOST}:{CONFIG_HTTP_PORT} -> {SERVER_HOST}:{SERVER_PORT}"

D_OVERLAY_IMPORT_OLD = "   import flash.events.Event;\n"

D_OVERLAY_IMPORT_NEW = (
    "   import alternativa.math.Matrix3;\n"
    "   import alternativa.math.Vector3;\n"
    f"   import {BONUS_REGIONS_PKG}.{BONUS_REGIONS_CLASS};\n"
    f"   import {MINE_MODEL_PKG}.{MINE_MODEL_CLASS};\n"
    "   import flash.display.Shape;\n"
    "   import flash.display.Sprite;\n"
    "   import flash.display.Stage;\n"
    "   import flash.events.Event;\n"
    "   import flash.events.MouseEvent;\n"
    "   import flash.net.URLRequest;\n"
    "   import flash.net.navigateToURL;\n"
    "   import flash.text.TextField;\n"
    "   import flash.text.TextFieldAutoSize;\n"
    "   import flash.text.TextFormat;\n"
    "   import flash.utils.getTimer;\n"
)

D_OVERLAY_FIELDS_OLD = "      private var §final set each§:Boolean = true;\n"

D_OVERLAY_FIELDS_NEW = (
    "      private static const _ptp_panel_width_:Number = 440;\n"
    "      private static const _ptp_panel_height_:Number = 156;\n"
    "      private static const _ptp_panel_pad_:Number = 8;\n"
    "      private static const _ptp_bg_color_:uint = 0x0d0d14;\n"
    "      private static const _ptp_divider_color_:uint = 0x1a2030;\n"
    "      private static const _ptp_fg_title_:uint = 0x7ecfff;\n"
    "      private static const _ptp_fg_label_:uint = 0x8899aa;\n"
    "      private static const _ptp_fg_value_:uint = 0xe0e8f0;\n"
    "      private static const _ptp_fg_ok_:uint = 0x44ee88;\n"
    "      private static const _ptp_fg_warn_:uint = 0xffcc44;\n"
    "      private static const _ptp_fg_err_:uint = 0xff5555;\n"
    "      private static const _ptp_fg_muted_:uint = 0x556677;\n"
    "      private static const _ptp_fg_link_:uint = 0x5599ff;\n"
    "      private static const _ptp_btn_on_bg_:uint = 0x0d2a1a;\n"
    "      private static const _ptp_btn_off_bg_:uint = 0x2a0d0d;\n"
    "      private static const _ptp_btn_on_fg_:uint = 0x44ee88;\n"
    "      private static const _ptp_btn_off_fg_:uint = 0xff5555;\n"
    "      \n"
    "      private var §final set each§:Boolean = true;\n"
    "      private var _ptpStage_:Stage;\n"
    "      private var _ptpPanel_:Sprite;\n"
    "      private var _ptpBackground_:Shape;\n"
    "      private var _ptpAccent_:Shape;\n"
    "      private var _ptpDivider_:Shape;\n"
    "      private var _ptpDivider2_:Shape;\n"
    "      private var _ptpStatusDot_:Shape;\n"
    "      private var _ptpTitle_:TextField;\n"
    "      private var _ptpVersion_:TextField;\n"
    "      private var _ptpToggleButtons_:Object;\n"
    "      private var _ptpToggleLabels_:Object;\n"
    "      private var _ptpValueFields_:Object;\n"
    "      private var _ptpRowLabels_:Array;\n"
    "      private var _ptpRowValues_:Array;\n"
    "      private var _ptpRowOrder_:Array;\n"
    "      private var _ptpPowered_:TextField;\n"
    "      private var _ptpLinksLabel_:TextField;\n"
    "      private var _ptpLinkTg_:Sprite;\n"
    "      private var _ptpLinkYt_:Sprite;\n"
    "      private var _ptpCollapsed_:Boolean;\n"
    "      private var _ptpDotBtn_:Sprite;\n"
    "      private var _ptpDotHit_:Sprite;\n"
    "      private var _ptpBeaconShape_:Shape;\n"
    "      private var _ptpBeaconTextLayer_:Sprite;\n"
    "      private var _ptpBeaconTextPool_:Array;\n"
)

D_OVERLAY_CTOR_OLD = (
    "         §5214235917235930123423632234§.stage.addEventListener(\"keyDown\",this.§each const break§);\n"
    "         §5214235917235930123423632234§.stage.addEventListener(\"keyUp\",this.§each const break§);\n"
    "         §5214235917235930123423632234§.stage.addEventListener(\"deactivate\",this.§521423128212312834123423632234§);\n"
    "         §with set include§.addBattleEventListener(TargetingInputModeChangedEvent,this);\n"
)

D_OVERLAY_CTOR_NEW = (
    "         §5214235917235930123423632234§.stage.addEventListener(\"keyDown\",this.§each const break§);\n"
    "         §5214235917235930123423632234§.stage.addEventListener(\"keyUp\",this.§each const break§);\n"
    "         §5214235917235930123423632234§.stage.addEventListener(\"deactivate\",this.§521423128212312834123423632234§);\n"
    "         §with set include§.addBattleEventListener(TargetingInputModeChangedEvent,this);\n"
    "         this._ptpStage_ = §5214235917235930123423632234§.stage;\n"
    "         this._ptpCreateOverlay();\n"
    "         if(this._ptpStage_ != null)\n"
    "         {\n"
    "            this._ptpStage_.addEventListener(Event.RESIZE,this._ptpLayoutOverlay);\n"
    "            this._ptpStage_.addEventListener(Event.ENTER_FRAME,this._ptpRefreshOverlay);\n"
    "            this._ptpStage_.addEventListener(MouseEvent.MOUSE_MOVE,this._ptpMarkUserActivity);\n"
    "            this._ptpStage_.addEventListener(MouseEvent.MOUSE_DOWN,this._ptpMarkUserActivity);\n"
    "         }\n"
    "         this._ptpMarkUserActivity();\n"
    "         this._ptpRefreshOverlay();\n"
)

D_OVERLAY_CLOSE_HEADER_OLD = "      override public function close() : void\n      {\n"

D_OVERLAY_CLOSE_BODY_OLD = (
    "         §5214235917235930123423632234§.stage.removeEventListener(\"keyDown\",this.§each const break§);\n"
    "         §5214235917235930123423632234§.stage.removeEventListener(\"keyUp\",this.§each const break§);\n"
    "         §5214235917235930123423632234§.stage.removeEventListener(\"deactivate\",this.§521423128212312834123423632234§);\n"
    "         §with set include§.removeBattleEventListener(TargetingInputModeChangedEvent,this);\n"
)

D_OVERLAY_CLOSE_BODY_NEW = (
    "         §5214235917235930123423632234§.stage.removeEventListener(\"keyDown\",this.§each const break§);\n"
    "         §5214235917235930123423632234§.stage.removeEventListener(\"keyUp\",this.§each const break§);\n"
    "         §5214235917235930123423632234§.stage.removeEventListener(\"deactivate\",this.§521423128212312834123423632234§);\n"
    "         §with set include§.removeBattleEventListener(TargetingInputModeChangedEvent,this);\n"
    "         if(this._ptpStage_ != null)\n"
    "         {\n"
    "            this._ptpStage_.removeEventListener(Event.RESIZE,this._ptpLayoutOverlay);\n"
    "            this._ptpStage_.removeEventListener(Event.ENTER_FRAME,this._ptpRefreshOverlay);\n"
    "            this._ptpStage_.removeEventListener(MouseEvent.MOUSE_MOVE,this._ptpMarkUserActivity);\n"
    "            this._ptpStage_.removeEventListener(MouseEvent.MOUSE_DOWN,this._ptpMarkUserActivity);\n"
    "         }\n"
    "         this._ptpDisposeOverlay();\n"
)

D_OVERLAY_DEACTIVATE_OLD = (
    "      private function §521423128212312834123423632234§(param1:Event) : void\n"
    "      {\n"
    "         §521423127992312812123423632234§(0);\n"
    "      }\n"
)

D_OVERLAY_DEACTIVATE_NEW = (
    "      private function §521423128212312834123423632234§(param1:Event) : void\n"
    "      {\n"
    f"         {DRIVE_CTRL}._noclip_boost_ = false;\n"
    f"         {DRIVE_CTRL}._noclip_down_ = false;\n"
    f"         {DRIVE_CTRL}._noclip_levelup_ = false;\n"
    f"         {DRIVE_CTRL}._noclip_fwd_ = false;\n"
    f"         {DRIVE_CTRL}._noclip_bwd_ = false;\n"
    f"         {DRIVE_CTRL}._noclip_lft_ = false;\n"
    f"         {DRIVE_CTRL}._noclip_rgt_ = false;\n"
    "         §521423127992312812123423632234§(0);\n"
    "         this._ptpRefreshOverlay();\n"
    "      }\n"
)

_OVERLAY_METHODS_TEMPLATE = '''      private function _ptpOpenUrl(param1:String) : void
      {
         try
         {
            navigateToURL(new URLRequest(param1),"_blank");
         }
         catch(e:Error) {}
      }
      
      private function _ptpCreateLinkBtn(param1:String, param2:String) : Sprite
      {
         var _sp_:Sprite = new Sprite();
         var _format_:TextFormat = new TextFormat("Consolas",11,_ptp_fg_link_,false);
         var _tf_:TextField = new TextField();
         _tf_.defaultTextFormat = _format_;
         _tf_.selectable = false;
         _tf_.autoSize = TextFieldAutoSize.LEFT;
         _tf_.text = param1;
         _tf_.textColor = _ptp_fg_link_;
         _tf_.x = 0;
         _tf_.y = 0;
         _tf_.mouseEnabled = false;
         _sp_.addChild(_tf_);
         _sp_.buttonMode = true;
         _sp_.useHandCursor = true;
         var _url_:String = param2;
         _sp_.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):void { _ptpOpenUrl(_url_); });
         return _sp_;
      }

      private function _ptpMarkUserActivity(param1:Event = null) : void
      {
         __DRIVE_CTRL__._anti_afk_last_input_ = getTimer();
      }

      private function _ptpCancelAntiAfkPulse(param1:Boolean = true) : void
      {
         var _pulseMask_:int = __DRIVE_CTRL__._anti_afk_pulse_mask_;
         if(__DRIVE_CTRL__._anti_afk_pulse_until_ == 0 && _pulseMask_ < 0)
         {
            return;
         }
         __DRIVE_CTRL__._anti_afk_pulse_until_ = 0;
         __DRIVE_CTRL__._anti_afk_pulse_mask_ = -1;
         if(param1 && _pulseMask_ >= 0 && §const var import§ == _pulseMask_)
         {
            §521423127992312812123423632234§(this.§set use super§);
         }
      }

      private function _ptpUpdateAntiAfk() : void
      {
         var _now_:int = getTimer();
         var _pulseMask_:int = 0;
         var _turnBit_:int = 0;
         if(!__DRIVE_CTRL__._anti_afk_enabled_ || __DRIVE_CTRL__._freecam_active_)
         {
            this._ptpCancelAntiAfkPulse();
            return;
         }
         if(__DRIVE_CTRL__._anti_afk_last_input_ <= 0)
         {
            __DRIVE_CTRL__._anti_afk_last_input_ = _now_;
         }
         if(__DRIVE_CTRL__._anti_afk_pulse_until_ > 0)
         {
            if(__DRIVE_CTRL__._anti_afk_pulse_mask_ >= 0 && §const var import§ != __DRIVE_CTRL__._anti_afk_pulse_mask_)
            {
               __DRIVE_CTRL__._anti_afk_last_input_ = _now_;
               this._ptpCancelAntiAfkPulse(false);
               return;
            }
            if(_now_ >= __DRIVE_CTRL__._anti_afk_pulse_until_)
            {
               this._ptpCancelAntiAfkPulse();
               __DRIVE_CTRL__._anti_afk_last_input_ = _now_;
               __DRIVE_CTRL__._anti_afk_last_pulse_ = _now_;
            }
            return;
         }
         if(§const var import§ != this.§set use super§)
         {
            __DRIVE_CTRL__._anti_afk_last_input_ = _now_;
            return;
         }
         if(_now_ - __DRIVE_CTRL__._anti_afk_last_input_ < 45000)
         {
            return;
         }
         _turnBit_ = __DRIVE_CTRL__._anti_afk_flip_ ? 2 : 3;
         _pulseMask_ = §throw for continue§.§return finally§(this.§set use super§,0,true);
         _pulseMask_ = §throw for continue§.§return finally§(_pulseMask_,_turnBit_,true);
         __DRIVE_CTRL__._anti_afk_flip_ = !__DRIVE_CTRL__._anti_afk_flip_;
         __DRIVE_CTRL__._anti_afk_pulse_mask_ = _pulseMask_;
         __DRIVE_CTRL__._anti_afk_pulse_until_ = _now_ + 180;
         __DRIVE_CTRL__._anti_afk_last_pulse_ = _now_;
         §521423127992312812123423632234§(_pulseMask_);
      }
      
      private function _ptpCreateOverlay() : void
      {
         if(this._ptpStage_ == null || this._ptpPanel_ != null)
         {
            return;
         }
         this._ptpToggleButtons_ = {};
         this._ptpToggleLabels_ = {};
         this._ptpValueFields_ = {};
         this._ptpRowLabels_ = [];
         this._ptpRowValues_ = [];
         this._ptpRowOrder_ = ["Session","Keys"];
         this._ptpPanel_ = new Sprite();
         this._ptpPanel_.mouseEnabled = true;
         this._ptpPanel_.mouseChildren = true;
         this._ptpBackground_ = new Shape();
         this._ptpAccent_ = new Shape();
         this._ptpDivider_ = new Shape();
         this._ptpDivider2_ = new Shape();
         this._ptpStatusDot_ = new Shape();
         this._ptpPanel_.addChild(this._ptpBackground_);
         this._ptpPanel_.addChild(this._ptpAccent_);
         this._ptpPanel_.addChild(this._ptpDivider_);
         this._ptpPanel_.addChild(this._ptpDivider2_);
         this._ptpPanel_.addChild(this._ptpStatusDot_);
         var _dotHit_:Sprite = new Sprite();
         _dotHit_.graphics.beginFill(0xffffff,0);
         _dotHit_.graphics.drawCircle(0,0,10);
         _dotHit_.graphics.endFill();
         _dotHit_.buttonMode = true;
         _dotHit_.useHandCursor = true;
         _dotHit_.addEventListener(MouseEvent.CLICK,this._ptpToggleCollapse);
         this._ptpPanel_.addChild(_dotHit_);
         this._ptpDotHit_ = _dotHit_;
         this._ptpTitle_ = this._ptpCreateText("ProTanki Proxy",12,_ptp_fg_title_,true,0,false);
         this._ptpPanel_.addChild(this._ptpTitle_);
         this._ptpVersion_ = this._ptpCreateText("v1.2.0",11,_ptp_fg_muted_,false,0,false);
         this._ptpPanel_.addChild(this._ptpVersion_);
         this._ptpCreateToggle("noclip","Noclip[F8]");
         this._ptpCreateToggle("pickup","Pickup[F6]");
         this._ptpCreateToggle("xray","X-Ray[F9]");
         this._ptpCreateToggle("freecam","Freecam[F7]");
         this._ptpCreateToggle("beacon","Beacon[F5]");
         this._ptpCreateToggle("antiafk","Anti-AFK[F10]");
         this._ptpCreateInfoRow("Session",10);
         this._ptpCreateInfoRow("Keys",11);
         this._ptpPowered_ = this._ptpCreateText("Powered by DOKERcom",13,_ptp_fg_title_,true,0,false);
         this._ptpPanel_.addChild(this._ptpPowered_);
         this._ptpLinksLabel_ = this._ptpCreateText("Links:",10,_ptp_fg_label_,false,0,false);
         this._ptpPanel_.addChild(this._ptpLinksLabel_);
         this._ptpLinkTg_ = this._ptpCreateLinkBtn("Telegram","https://t.me/dokercom");
         this._ptpPanel_.addChild(this._ptpLinkTg_);
         this._ptpLinkYt_ = this._ptpCreateLinkBtn("YouTube","https://www.youtube.com/@DOKERcom");
         this._ptpPanel_.addChild(this._ptpLinkYt_);
         this._ptpCollapsed_ = false;
         this._ptpDotBtn_ = new Sprite();
         this._ptpDotBtn_.buttonMode = true;
         this._ptpDotBtn_.useHandCursor = true;
         this._ptpDotBtn_.addEventListener(MouseEvent.CLICK,this._ptpToggleCollapse);
         this._ptpDotBtn_.visible = false;
         this._ptpStage_.addChild(this._ptpDotBtn_);
         this._ptpStage_.addChild(this._ptpPanel_);
         this._ptpBeaconShape_ = new Shape();
         this._ptpStage_.addChild(this._ptpBeaconShape_);
         this._ptpBeaconTextLayer_ = new Sprite();
         this._ptpBeaconTextLayer_.mouseEnabled = false;
         this._ptpBeaconTextLayer_.mouseChildren = false;
         this._ptpStage_.addChild(this._ptpBeaconTextLayer_);
         this._ptpBeaconTextPool_ = [];
         this._ptpLayoutOverlay();
      }
      
      private function _ptpDisposeOverlay() : void
      {
         if(this._ptpPanel_ != null && this._ptpPanel_.parent != null)
         {
            this._ptpPanel_.parent.removeChild(this._ptpPanel_);
         }
         this._ptpPanel_ = null;
         this._ptpBackground_ = null;
         this._ptpAccent_ = null;
         this._ptpDivider_ = null;
         this._ptpDivider2_ = null;
         this._ptpStatusDot_ = null;
         this._ptpTitle_ = null;
         this._ptpVersion_ = null;
         this._ptpToggleButtons_ = null;
         this._ptpToggleLabels_ = null;
         this._ptpValueFields_ = null;
         this._ptpRowLabels_ = null;
         this._ptpRowValues_ = null;
         this._ptpRowOrder_ = null;
         this._ptpPowered_ = null;
         this._ptpLinksLabel_ = null;
         this._ptpLinkTg_ = null;
         this._ptpLinkYt_ = null;
         if(this._ptpDotBtn_ != null && this._ptpDotBtn_.parent != null)
         {
            this._ptpDotBtn_.parent.removeChild(this._ptpDotBtn_);
         }
         this._ptpDotBtn_ = null;
         this._ptpDotHit_ = null;
         if(this._ptpBeaconShape_ != null && this._ptpBeaconShape_.parent != null)
         {
            this._ptpBeaconShape_.parent.removeChild(this._ptpBeaconShape_);
         }
         this._ptpBeaconShape_ = null;
         if(this._ptpBeaconTextLayer_ != null && this._ptpBeaconTextLayer_.parent != null)
         {
            this._ptpBeaconTextLayer_.parent.removeChild(this._ptpBeaconTextLayer_);
         }
         this._ptpBeaconTextLayer_ = null;
         this._ptpBeaconTextPool_ = null;
         this._ptpCollapsed_ = false;
      }
      
      private function _ptpToggleCollapse(param1:MouseEvent) : void
      {
         this._ptpCollapsed_ = !this._ptpCollapsed_;
         if(this._ptpCollapsed_)
         {
            this._ptpPanel_.visible = false;
            if(this._ptpDotBtn_ != null)
            {
               this._ptpDotBtn_.graphics.clear();
               this._ptpDotBtn_.graphics.lineStyle(1,_ptp_divider_color_,0.9);
               this._ptpDotBtn_.graphics.beginFill(_ptp_fg_ok_,1);
               this._ptpDotBtn_.graphics.drawCircle(0,0,7);
               this._ptpDotBtn_.graphics.endFill();
               this._ptpDotBtn_.x = _ptp_panel_pad_ + 7;
               this._ptpDotBtn_.y = _ptp_panel_pad_ + 7;
               this._ptpDotBtn_.visible = true;
            }
         }
         else
         {
            this._ptpPanel_.visible = true;
            if(this._ptpDotBtn_ != null)
            {
               this._ptpDotBtn_.visible = false;
            }
         }
      }
      
      private function _ptpCreateToggle(param1:String, param2:String) : void
      {
         var _button_:Sprite = new Sprite();
         var _fmt_:TextFormat = new TextFormat("Consolas",11,_ptp_btn_off_fg_,false,null,null,null,null,"center");
         var _label_:TextField = new TextField();
         _label_.defaultTextFormat = _fmt_;
         _label_.selectable = false;
         _label_.mouseEnabled = false;
         _label_.text = param2;
         _label_.width = 100;
         _label_.height = 18;
         _label_.x = 0;
         _label_.y = 3;
         _button_.addChild(_label_);
         this._ptpPanel_.addChild(_button_);
         this._ptpToggleButtons_[param1] = _button_;
         this._ptpToggleLabels_[param1] = _label_;
      }
      
      private function _ptpCreateInfoRow(param1:String, param2:int) : void
      {
         var _label_:TextField = this._ptpCreateText(param1,10,_ptp_fg_label_,false,52,false);
         var _value_:TextField = this._ptpCreateText("-",param2,_ptp_fg_value_,false,372,false);
         this._ptpPanel_.addChild(_label_);
         this._ptpPanel_.addChild(_value_);
         this._ptpRowLabels_.push(_label_);
         this._ptpRowValues_.push(_value_);
         this._ptpValueFields_[param1] = _value_;
      }
      
      private function _ptpCreateText(param1:String, param2:int, param3:uint, param4:Boolean, param5:Number, param6:Boolean) : TextField
      {
         var _format_:TextFormat = new TextFormat("Consolas",param2,param3,param4);
         var _field_:TextField = new TextField();
         _field_.defaultTextFormat = _format_;
         _field_.selectable = false;
         _field_.mouseEnabled = false;
         _field_.multiline = param6;
         _field_.wordWrap = param6;
         _field_.text = param1;
         _field_.textColor = param3;
         if(param5 > 0)
         {
            _field_.width = param5;
            _field_.height = param6 ? 40 : 18;
         }
         else
         {
            _field_.autoSize = TextFieldAutoSize.LEFT;
         }
         return _field_;
      }
      
      private function _ptpApplyValue(param1:TextField, param2:String, param3:uint) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.text = param2;
         param1.textColor = param3;
      }

      private function _ptpHideBeaconTexts() : void
      {
         var _i_:int = 0;
         var _tf_:TextField = null;
         if(this._ptpBeaconTextPool_ == null)
         {
            return;
         }
         for(_i_ = 0; _i_ < this._ptpBeaconTextPool_.length; _i_++)
         {
            _tf_ = TextField(this._ptpBeaconTextPool_[_i_]);
            if(_tf_ != null)
            {
               _tf_.visible = false;
            }
         }
      }

      private function _ptpAcquireBeaconText(param1:int) : TextField
      {
         var _tf_:TextField = null;
         if(this._ptpBeaconTextPool_ == null || this._ptpBeaconTextLayer_ == null)
         {
            return null;
         }
         while(this._ptpBeaconTextPool_.length <= param1)
         {
            _tf_ = new TextField();
            _tf_.selectable = false;
            _tf_.mouseEnabled = false;
            _tf_.multiline = false;
            _tf_.wordWrap = false;
            _tf_.width = 28;
            _tf_.height = 20;
            _tf_.visible = false;
            this._ptpBeaconTextLayer_.addChild(_tf_);
            this._ptpBeaconTextPool_.push(_tf_);
         }
         return TextField(this._ptpBeaconTextPool_[param1]);
      }

      private function _ptpSetBeaconText(param1:TextField, param2:String, param3:uint) : void
      {
         var _size_:int = 12;
         var _fmt_:TextFormat = null;
         if(param1 == null)
         {
            return;
         }
         if(param2.length > 1)
         {
            _size_ = 10;
         }
         _fmt_ = new TextFormat("Consolas",_size_,param3,true,null,null,null,null,"center");
         param1.defaultTextFormat = _fmt_;
         param1.textColor = param3;
         param1.text = param2;
         param1.setTextFormat(_fmt_);
      }

      private function _ptpDrawBeaconMarker(param1:Number, param2:Number, param3:uint, param4:String, param5:int, param6:Boolean = false) : int
      {
         var _tf_:TextField = null;
         if(param6)
         {
            this._ptpBeaconShape_.graphics.lineStyle(2,param3,0.9);
            this._ptpBeaconShape_.graphics.moveTo(param1,0);
            this._ptpBeaconShape_.graphics.lineTo(param1,Math.max(0,param2 - 13));
         }
         this._ptpBeaconShape_.graphics.lineStyle(2,param3,0.95);
         this._ptpBeaconShape_.graphics.drawRect(param1 - 13,param2 - 13,26,26);
         _tf_ = this._ptpAcquireBeaconText(param5);
         if(_tf_ != null)
         {
            this._ptpSetBeaconText(_tf_,param4,param3);
            _tf_.x = int(param1 - 14);
            _tf_.y = int(param2 - 10);
            _tf_.visible = true;
            return param5 + 1;
         }
         return param5;
      }

      private function _ptpResolveBeaconName(param1:*, param2:*) : String
      {
         var _mesh_:* = null;
         var _id_:String = null;
         try
         {
            if(param1 != null)
            {
               _mesh_ = param1.getBonusMesh();
               if(_mesh_ != null && _mesh_.getObjectId() != null)
               {
                  _id_ = _mesh_.getObjectId().toString();
               }
            }
         }
         catch(e:Error) {}
         if(_id_ == "13651948690505824" || _id_ == "4583509283833636200" || _id_ == "597079591202930873")
         {
            return "gold";
         }
         if(_id_ == "4499240296742159158")
         {
            return "crystal";
         }
         if(_id_ == "4593273093119448458")
         {
            return "medkit";
         }
         if(_id_ == "450243509098616342")
         {
            return "nitro";
         }
         if(_id_ == "6825621170092079690")
         {
            return "damageup";
         }
         if(_id_ == "6050898475900017690")
         {
            return "armorup";
         }
         if(_id_ == "403388959236366367")
         {
            return "bonus";
         }
         if(param2 != null)
         {
            _id_ = String(param2).toLowerCase();
            if(_id_.indexOf("gold") >= 0)
            {
               return "gold";
            }
            if(_id_.indexOf("crystal") >= 0)
            {
               return "crystal";
            }
            if(_id_.indexOf("medkit") >= 0 || _id_.indexOf("health") >= 0 || _id_.indexOf("heal") >= 0)
            {
               return "medkit";
            }
            if(_id_.indexOf("nitro") >= 0 || _id_.indexOf("speed") >= 0)
            {
               return "nitro";
            }
            if(_id_.indexOf("damageup") >= 0)
            {
               return "damageup";
            }
            if(_id_.indexOf("armorup") >= 0 || _id_.indexOf("armourup") >= 0 || _id_.indexOf("armor") >= 0)
            {
               return "armorup";
            }
            if(_id_.indexOf("bonus") >= 0)
            {
               return "bonus";
            }
         }
         return "?";
      }

      private function _ptpGetBeaconLabel(param1:String) : String
      {
         if(param1 == null)
         {
            return "?";
         }
         param1 = param1.toLowerCase();
         if(param1.indexOf("gold") >= 0)
         {
            return "G";
         }
         if(param1.indexOf("mine") >= 0)
         {
            return "MN";
         }
         if(param1.indexOf("damageup") >= 0)
         {
            return "DD";
         }
         if(param1.indexOf("medkit") >= 0 || param1.indexOf("health") >= 0 || param1.indexOf("heal") >= 0)
         {
            return "HP";
         }
         if(param1.indexOf("nitro") >= 0 || param1.indexOf("speed") >= 0)
         {
            return "SP";
         }
         if(param1.indexOf("armorup") >= 0 || param1.indexOf("armourup") >= 0 || param1.indexOf("armor") >= 0)
         {
            return "DA";
         }
         if(param1.indexOf("crystal") >= 0)
         {
            return "CR";
         }
         if(param1.indexOf("bonus") >= 0)
         {
            return "BN";
         }
         return "?";
      }

      private function _ptpGetBeaconColor(param1:String) : uint
      {
         if(param1 == null)
         {
            return _ptp_fg_value_;
         }
         param1 = param1.toLowerCase();
         if(param1.indexOf("gold") >= 0)
         {
            return 0xFFD700;
         }
         if(param1.indexOf("mine") >= 0)
         {
            return 0xD06F6F;
         }
         if(param1.indexOf("damageup") >= 0)
         {
            return 0xC97A5F;
         }
         if(param1.indexOf("medkit") >= 0 || param1.indexOf("health") >= 0 || param1.indexOf("heal") >= 0)
         {
            return 0x66FF99;
         }
         if(param1.indexOf("nitro") >= 0 || param1.indexOf("speed") >= 0)
         {
            return 0xC7B85A;
         }
         if(param1.indexOf("armorup") >= 0 || param1.indexOf("armourup") >= 0 || param1.indexOf("armor") >= 0)
         {
            return 0x6FA06A;
         }
         if(param1.indexOf("crystal") >= 0)
         {
            return 0x44DDFF;
         }
         if(param1.indexOf("bonus") >= 0)
         {
            return 0x44FF88;
         }
         return _ptp_fg_value_;
      }
      
      private function _ptpOnOff(param1:Boolean, param2:String = "ON", param3:String = "off") : String
      {
         if(param1)
         {
            return param2;
         }
         return param3;
      }
      
      private function _ptpSetToggleState(param1:String, param2:Boolean) : void
      {
         var _button_:Sprite = Sprite(this._ptpToggleButtons_[param1]);
         var _label_:TextField = TextField(this._ptpToggleLabels_[param1]);
         var _fill_:uint = _ptp_btn_off_bg_;
         var _textColor_:uint = _ptp_btn_off_fg_;
         if(_button_ == null || _label_ == null)
         {
            return;
         }
         if(param2)
         {
            _fill_ = _ptp_btn_on_bg_;
            _textColor_ = _ptp_btn_on_fg_;
         }
         _button_.graphics.clear();
         _button_.graphics.lineStyle(1,_ptp_divider_color_,0.85);
         _button_.graphics.beginFill(_fill_,1);
         _button_.graphics.drawRoundRect(0,0,100,22,5,5);
         _button_.graphics.endFill();
         var _fmt_:TextFormat = new TextFormat("Consolas",11,_textColor_,false,null,null,null,null,"center");
         _label_.defaultTextFormat = _fmt_;
         _label_.setTextFormat(_fmt_);
      }
      
      private function _ptpDrawStatusDot(param1:uint) : void
      {
         if(this._ptpStatusDot_ == null)
         {
            return;
         }
         this._ptpStatusDot_.graphics.clear();
         this._ptpStatusDot_.graphics.beginFill(param1,1);
         this._ptpStatusDot_.graphics.drawCircle(0,0,4);
         this._ptpStatusDot_.graphics.endFill();
      }
      
      private function _ptpLayoutOverlay(param1:Event = null) : void
      {
         var _scale_:Number = 1;
         if(this._ptpPanel_ == null || this._ptpStage_ == null)
         {
            return;
         }
         if(this._ptpStage_.stageWidth > 0)
         {
            _scale_ = Math.min(_scale_,(this._ptpStage_.stageWidth - _ptp_panel_pad_ * 2) / _ptp_panel_width_);
         }
         if(this._ptpStage_.stageHeight > 0)
         {
            _scale_ = Math.min(_scale_,(this._ptpStage_.stageHeight - _ptp_panel_pad_ * 2) / _ptp_panel_height_);
         }
         if(_scale_ < 0.68)
         {
            _scale_ = 0.68;
         }
         this._ptpPanel_.scaleX = _scale_;
         this._ptpPanel_.scaleY = _scale_;
         this._ptpPanel_.x = _ptp_panel_pad_;
         this._ptpPanel_.y = _ptp_panel_pad_;
         this._ptpBackground_.graphics.clear();
         this._ptpBackground_.graphics.lineStyle(1,_ptp_divider_color_,0.95);
         this._ptpBackground_.graphics.beginFill(_ptp_bg_color_,0.92);
         this._ptpBackground_.graphics.drawRoundRect(0,0,_ptp_panel_width_,_ptp_panel_height_,8,8);
         this._ptpBackground_.graphics.endFill();
         this._ptpAccent_.graphics.clear();
         this._ptpAccent_.graphics.beginFill(_ptp_fg_title_,1);
         this._ptpAccent_.graphics.moveTo(10,7);
         this._ptpAccent_.graphics.lineTo(14,11);
         this._ptpAccent_.graphics.lineTo(10,15);
         this._ptpAccent_.graphics.lineTo(6,11);
         this._ptpAccent_.graphics.lineTo(10,7);
         this._ptpAccent_.graphics.endFill();
         this._ptpDivider_.graphics.clear();
         this._ptpDivider_.graphics.lineStyle(1,_ptp_divider_color_,1);
         this._ptpDivider_.graphics.moveTo(6,22);
         this._ptpDivider_.graphics.lineTo(_ptp_panel_width_ - 6,22);
         this._ptpDivider2_.graphics.clear();
         this._ptpDivider2_.graphics.lineStyle(1,_ptp_divider_color_,1);
         this._ptpDivider2_.graphics.moveTo(6,116);
         this._ptpDivider2_.graphics.lineTo(_ptp_panel_width_ - 6,116);
         this._ptpTitle_.x = 22;
         this._ptpTitle_.y = 3;
         this._ptpStatusDot_.x = _ptp_panel_width_ - 14;
         this._ptpStatusDot_.y = 11;
         if(this._ptpDotHit_ != null)
         {
            this._ptpDotHit_.x = _ptp_panel_width_ - 14;
            this._ptpDotHit_.y = 11;
         }
         this._ptpVersion_.x = 360;
         this._ptpVersion_.y = 3;
         Sprite(this._ptpToggleButtons_["noclip"]).x = 6;
         Sprite(this._ptpToggleButtons_["noclip"]).y = 24;
         Sprite(this._ptpToggleButtons_["pickup"]).x = 110;
         Sprite(this._ptpToggleButtons_["pickup"]).y = 24;
         Sprite(this._ptpToggleButtons_["xray"]).x = 214;
         Sprite(this._ptpToggleButtons_["xray"]).y = 24;
         Sprite(this._ptpToggleButtons_["freecam"]).x = 318;
         Sprite(this._ptpToggleButtons_["freecam"]).y = 24;
         Sprite(this._ptpToggleButtons_["beacon"]).x = 6;
         Sprite(this._ptpToggleButtons_["beacon"]).y = 50;
         Sprite(this._ptpToggleButtons_["antiafk"]).x = 110;
         Sprite(this._ptpToggleButtons_["antiafk"]).y = 50;
         TextField(this._ptpRowLabels_[0]).x = 6;
         TextField(this._ptpRowLabels_[0]).y = 76;
         TextField(this._ptpRowValues_[0]).x = 62;
         TextField(this._ptpRowValues_[0]).y = 76;
         TextField(this._ptpRowValues_[0]).height = 16;
         TextField(this._ptpRowLabels_[1]).x = 6;
         TextField(this._ptpRowLabels_[1]).y = 94;
         TextField(this._ptpRowValues_[1]).x = 62;
         TextField(this._ptpRowValues_[1]).y = 93;
         TextField(this._ptpRowValues_[1]).height = 20;
         this._ptpPowered_.x = 6;
         this._ptpPowered_.y = 120;
         this._ptpLinksLabel_.x = 6;
         this._ptpLinksLabel_.y = 139;
         this._ptpLinkTg_.x = 58;
         this._ptpLinkTg_.y = 139;
         this._ptpLinkYt_.x = 136;
         this._ptpLinkYt_.y = 139;
         if(this._ptpPanel_.parent != null && this._ptpPanel_.parent.getChildIndex(this._ptpPanel_) != this._ptpPanel_.parent.numChildren - 1)
         {
            this._ptpPanel_.parent.setChildIndex(this._ptpPanel_,this._ptpPanel_.parent.numChildren - 1);
         }
      }
      
      private function _ptpRefreshOverlay(param1:Event = null) : void
      {
         var _keysColor_:uint = _ptp_fg_muted_;
         if(this._ptpPanel_ == null)
         {
            return;
         }
         this._ptpSetToggleState("pickup",__DRIVE_CTRL__._pickup_enabled_);
         this._ptpSetToggleState("freecam",__DRIVE_CTRL__._freecam_active_);
         this._ptpSetToggleState("noclip",__DRIVE_CTRL__._noclip_enabled_);
         this._ptpSetToggleState("xray",DefaultTextureMaterialFactory._xray_on_);
         this._ptpSetToggleState("beacon",__DRIVE_CTRL__._beacon_enabled_);
         this._ptpSetToggleState("antiafk",__DRIVE_CTRL__._anti_afk_enabled_);
         this._ptpUpdateAntiAfk();
         this._ptpDrawStatusDot(_ptp_fg_ok_);
         this._ptpApplyValue(TextField(this._ptpValueFields_["Session"]),"Connected",_ptp_fg_ok_);
         if(__DRIVE_CTRL__._noclip_enabled_)
         {
            _keysColor_ = _ptp_fg_ok_;
         }
         this._ptpApplyValue(
            TextField(this._ptpValueFields_["Keys"]),
            "[~]full=" + this._ptpOnOff(__DRIVE_CTRL__._noclip_full_) +
            "  [R]lvl=" + this._ptpOnOff(__DRIVE_CTRL__._noclip_levelup_) +
            "  [Sft]dn=" + this._ptpOnOff(__DRIVE_CTRL__._noclip_down_) +
            "  [Ctl]up=" + this._ptpOnOff(__DRIVE_CTRL__._noclip_boost_),
            _keysColor_
         );
         if(this._ptpBeaconShape_ != null)
         {
            this._ptpBeaconShape_.graphics.clear();
            this._ptpHideBeaconTexts();
            if(__DRIVE_CTRL__._beacon_enabled_)
            try
            {
            var _bsvc3_:* = __PKG_BONUS_COMMON__.BonusCommonModel.__BATTLE_SERVICE_STATIC__;
            if(_bsvc3_ != null)
            {
               var _bscn3_:* = _bsvc3_.getBattleScene3D();
               if(_bscn3_ != null)
               {
                  var _cam3_:* = _bscn3_.__GET_CAMERA_METHOD__();
                  var _bv3_:* = _bsvc3_.getBattleView();
                  if(_cam3_ != null && _bv3_ != null)
                  {
                     var _vsx3_:Number = _bv3_.getWidth() * 0.5;
                     var _vsy3_:Number = _bv3_.getHeight() * 0.5;
                     var _fl3_:Number = Math.sqrt(_vsx3_*_vsx3_ + _vsy3_*_vsy3_) / Math.tan(Number(_cam3_.fov) * 0.5);
                     var _camX3_:Number = Number(_cam3_.x);
                     var _camY3_:Number = Number(_cam3_.y);
                     var _camZ3_:Number = Number(_cam3_.z);
                     var _bvx3_:Number = Number(_bv3_.getX());
                     var _bvy3_:Number = Number(_bv3_.getY());
                     var _rot3_:Matrix3 = new Matrix3();
                     _rot3_.setRotationMatrix(_cam3_.rotationX,_cam3_.rotationY,_cam3_.rotationZ);
                     var _tv3_:Vector3 = new Vector3();
                     var _cv3_:Vector3 = new Vector3();
                     var _sx3_:Number = 0;
                     var _sy3_:Number = 0;
                     var _bx3_:Number = 0;
                     var _by3_:Number = 0;
                     var _bz3_:Number = 0;
                     var _bm3_:* = null;
                     var _bo3_:* = null;
                     var _bc3_:uint = 0;
                     var _bl3_:String = null;
                     var _btf3_:TextField = null;
                     var _btc3_:int = 0;
                     var _reg3_:* = _bsvc3_.__BONUS_REGISTRY_FIELD__;
                     if(_reg3_ != null)
                     {
                        for(var _bk3_:* in _reg3_.bonuses)
                        {
                           _bo3_ = _reg3_.bonuses[_bk3_];
                           if(_bo3_ != null)
                           {
                              _bm3_ = _bo3_.getBonusMesh();
                              if(_bm3_ != null && _bm3_.object != null)
                              {
                                 _bx3_ = Number(_bm3_.object.x);
                                 _by3_ = Number(_bm3_.object.y);
                                 _bz3_ = Number(_bm3_.object.z);
                                 _tv3_.x = _bx3_ - _camX3_;
                                 _tv3_.y = _by3_ - _camY3_;
                                 _tv3_.z = _bz3_ - _camZ3_;
                                 _rot3_.transformVectorInverse(_tv3_,_cv3_);
                                 if(_cv3_.z > 50)
                                 {
                                    _sx3_ = _bvx3_ + _vsx3_ + _cv3_.x / _cv3_.z * _fl3_;
                                    _sy3_ = _bvy3_ + _vsy3_ + _cv3_.y / _cv3_.z * _fl3_;
                                    var _bname_:String = this._ptpResolveBeaconName(_bo3_,_bk3_);
                                    _bc3_ = this._ptpGetBeaconColor(_bname_);
                                    _bl3_ = this._ptpGetBeaconLabel(_bname_);
                                    _btc3_ = this._ptpDrawBeaconMarker(_sx3_,_sy3_,_bc3_,_bl3_,_btc3_,_bname_.indexOf("gold") >= 0);
                                 }
                              }
                           }
                        }
                     }
                     var _goldDropPts3_:Array = __BONUS_REGIONS_CLASS__.__BONUS_REGIONS_POINTS_METHOD__();
                     if(_goldDropPts3_ != null)
                     {
                        _bc3_ = this._ptpGetBeaconColor("gold");
                        _bl3_ = this._ptpGetBeaconLabel("gold");
                        for each(var _goldDropPt3_:* in _goldDropPts3_)
                        {
                           if(_goldDropPt3_ != null)
                           {
                              _bx3_ = Number(_goldDropPt3_.x);
                              _by3_ = Number(_goldDropPt3_.y);
                              _bz3_ = Number(_goldDropPt3_.z);
                              _tv3_.x = _bx3_ - _camX3_;
                              _tv3_.y = _by3_ - _camY3_;
                              _tv3_.z = _bz3_ - _camZ3_;
                              _rot3_.transformVectorInverse(_tv3_,_cv3_);
                              if(_cv3_.z > 50)
                              {
                                 _sx3_ = _bvx3_ + _vsx3_ + _cv3_.x / _cv3_.z * _fl3_;
                                 _sy3_ = _bvy3_ + _vsy3_ + _cv3_.y / _cv3_.z * _fl3_;
                                 _btc3_ = this._ptpDrawBeaconMarker(_sx3_,_sy3_,_bc3_,_bl3_,_btc3_,true);
                              }
                           }
                        }
                     }
                     /* Mine beacon pass is intentionally disabled for now until live verification.
                     var _mineModel3_:* = __MINE_MODEL_CLASS__.__MINE_MODEL_STATIC_FIELD__;
                     if(_mineModel3_ != null)
                     {
                        var _minePts3_:Array = _mineModel3_.__MINE_MODEL_POINTS_METHOD__();
                        if(_minePts3_ != null)
                        {
                           _bc3_ = this._ptpGetBeaconColor("mine");
                           _bl3_ = this._ptpGetBeaconLabel("mine");
                           for each(var _minePt3_:* in _minePts3_)
                           {
                              if(_minePt3_ != null)
                              {
                                 _bx3_ = Number(_minePt3_.x);
                                 _by3_ = Number(_minePt3_.y);
                                 _bz3_ = Number(_minePt3_.z);
                                 _tv3_.x = _bx3_ - _camX3_;
                                 _tv3_.y = _by3_ - _camY3_;
                                 _tv3_.z = _bz3_ - _camZ3_;
                                 _rot3_.transformVectorInverse(_tv3_,_cv3_);
                                 if(_cv3_.z > 50)
                                 {
                                    _sx3_ = _bvx3_ + _vsx3_ + _cv3_.x / _cv3_.z * _fl3_;
                                    _sy3_ = _bvy3_ + _vsy3_ + _cv3_.y / _cv3_.z * _fl3_;
                                    _btc3_ = this._ptpDrawBeaconMarker(_sx3_,_sy3_,_bc3_,_bl3_,_btc3_);
                                 }
                              }
                           }
                        }
                     }
                     */
                  }
               }
            }
            }
            catch(e_bcn_:Error) {}
         }
      }

'''

D_OVERLAY_METHODS = (
    _OVERLAY_METHODS_TEMPLATE.replace("__DRIVE_CTRL__", DRIVE_CTRL)
    .replace("__ROUTING_MAIN__", _ROUTING_MAIN)
    .replace("__MIRRORS__", _MIRRORS_TEXT)
    .replace("__HOSTS_COUNT__", _HOSTS_COUNT)
    .replace("__PKG_BONUS_COMMON__", PKG_BONUS_COMMON)
    .replace("__BATTLE_SERVICE_STATIC__", BATTLE_SERVICE_STATIC)
    .replace("__BONUS_REGIONS_CLASS__", BONUS_REGIONS_CLASS)
    .replace("__BONUS_REGIONS_POINTS_METHOD__", BONUS_REGIONS_POINTS_METHOD)
    .replace("__GET_CAMERA_METHOD__", GET_CAMERA_METHOD)
    .replace("__BONUS_REGISTRY_FIELD__", BONUS_REGISTRY_FIELD)
    .replace("__MINE_MODEL_CLASS__", MINE_MODEL_CLASS)
    .replace("__MINE_MODEL_POINTS_METHOD__", MINE_MODEL_POINTS_METHOD)
    .replace("__MINE_MODEL_STATIC_FIELD__", MINE_MODEL_STATIC_FIELD)
)


def apply_ingame_overlay_patch(text_d: str) -> str:
    replacements = (
        ("overlay import", D_OVERLAY_IMPORT_OLD, D_OVERLAY_IMPORT_NEW),
        ("overlay fields", D_OVERLAY_FIELDS_OLD, D_OVERLAY_FIELDS_NEW),
        ("overlay ctor", D_OVERLAY_CTOR_OLD, D_OVERLAY_CTOR_NEW),
        (
            "overlay close header",
            D_OVERLAY_CLOSE_HEADER_OLD,
            D_OVERLAY_METHODS + D_OVERLAY_CLOSE_HEADER_OLD,
        ),
        ("overlay close body", D_OVERLAY_CLOSE_BODY_OLD, D_OVERLAY_CLOSE_BODY_NEW),
        ("overlay deactivate", D_OVERLAY_DEACTIVATE_OLD, D_OVERLAY_DEACTIVATE_NEW),
    )
    for label, old, new in replacements:
        if old not in text_d:
            raise RuntimeError(f"noclip_patch {label}: anchor not found - SWF version mismatch.")
        text_d = text_d.replace(old, new, 1)
    return text_d
