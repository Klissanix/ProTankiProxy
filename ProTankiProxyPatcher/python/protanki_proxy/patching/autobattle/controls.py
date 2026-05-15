from __future__ import annotations

from ..noclip.identifiers import DRIVE_CTRL
from .shared import AUTOBATTLE_KEYCODE, replace_once

_STATE_OLD = (
    "      public static var _anti_afk_flip_:Boolean = false;\n"
    "\n"
    "      public static const §else catch if§:int = 5;\n"
)

_STATE_NEW = (
    "      public static var _anti_afk_flip_:Boolean = false;\n"
    "      public static var _autobattle_enabled_:Boolean = false;\n"
    "      public static var _autobattle_cycle_:Number = 0;\n"
    "      public static var _autobattle_turn_sign_:int = 1;\n"
    "      public static var _autobattle_fire_requested_:Boolean = false;\n"
    "      public static var _autobattle_move_forward_:Boolean = false;\n"
   "      public static var _autobattle_move_backward_:Boolean = false;\n"
    "      public static var _autobattle_move_left_:Boolean = false;\n"
    "      public static var _autobattle_move_right_:Boolean = false;\n"
   "      public static var _autobattle_last_x_:Number = NaN;\n"
   "      public static var _autobattle_last_y_:Number = NaN;\n"
   "      public static var _autobattle_stuck_time_:Number = 0;\n"
   "      public static var _autobattle_reverse_time_:Number = 0;\n"
   "      public static var _autobattle_nav_bias_:Number = 0.45;\n"
   "      public static var _autobattle_nav_timer_:Number = 0;\n"
      "      public static var _autobattle_target_:* = null;\n"
      "      public static var _autobattle_lost_time_:Number = 0;\n"
      "      public static var _autobattle_seen_x_:Number = 0;\n"
      "      public static var _autobattle_seen_y_:Number = 0;\n"
      "      public static var _autobattle_seen_z_:Number = 0;\n"
      "      public static var _autobattle_lock_time_:Number = 0;\n"
         "      public static var _autobattle_last_best_yaw_:Number = 0;\n"
         "      public static var _autobattle_last_stuck_yaw_:Number = 0;\n"
         "      public static var _autobattle_stuck_penalty_:Number = 0;\n"
         "      public static var _autobattle_commit_time_:Number = 0;\n"
         "      public static var _autobattle_wall_side_:int = 1;\n"
      "\n"
      "      public static function _ptpResetAutobattle(param1:Boolean = false) : void\n"
      "      {\n"
      "         _autobattle_enabled_ = param1;\n"
      "         _autobattle_cycle_ = 0;\n"
      "         _autobattle_turn_sign_ = 1;\n"
      "         _autobattle_fire_requested_ = false;\n"
      "         _autobattle_move_forward_ = false;\n"
      "         _autobattle_move_backward_ = false;\n"
      "         _autobattle_move_left_ = false;\n"
      "         _autobattle_move_right_ = false;\n"
      "         _autobattle_last_x_ = NaN;\n"
      "         _autobattle_last_y_ = NaN;\n"
      "         _autobattle_stuck_time_ = 0;\n"
      "         _autobattle_reverse_time_ = 0;\n"
      "         _autobattle_nav_bias_ = 0.45;\n"
      "         _autobattle_nav_timer_ = 0;\n"
      "         _autobattle_target_ = null;\n"
      "         _autobattle_lost_time_ = 0;\n"
      "         _autobattle_seen_x_ = 0;\n"
      "         _autobattle_seen_y_ = 0;\n"
      "         _autobattle_seen_z_ = 0;\n"
      "         _autobattle_lock_time_ = 0;\n"
      "         _autobattle_last_best_yaw_ = 0;\n"
      "         _autobattle_last_stuck_yaw_ = 0;\n"
      "         _autobattle_stuck_penalty_ = 0;\n"
      "         _autobattle_commit_time_ = 0;\n"
      "         _autobattle_wall_side_ = 1;\n"
      "      }\n"
    "\n"
    "      public static const §else catch if§:int = 5;\n"
)

_HOTKEY_OLD = (
    "         if(param1.keyCode == 116 && param1.type == \"keyDown\")\n"
    "         {\n"
    f"            {DRIVE_CTRL}._beacon_enabled_ = !{DRIVE_CTRL}._beacon_enabled_;\n"
    "         }\n"
)

_HOTKEY_NEW = (
    f"         if(param1.keyCode == {AUTOBATTLE_KEYCODE} && param1.type == \"keyDown\")\n"
    "         {\n"
   f"            {DRIVE_CTRL}._ptpResetAutobattle(!{DRIVE_CTRL}._autobattle_enabled_);\n"
    "         }\n"
    + _HOTKEY_OLD
)

_FIELD_OLD = "      private var _ptpBeaconTextPool_:Array;\n"
_FIELD_NEW = _FIELD_OLD + "      private var _ptpAutobattleMask_:int = 0;\n"

_HELPER_ANCHOR_OLD = "      private function _ptpOpenUrl(param1:String) : void\n      {\n"

_HELPER_ANCHOR_NEW = """      private function _ptpApplyAutobattleChassisMask(param1:int) : void
      {
         var _fullMask_:int = param1 | this.§set use super§;
         if(_fullMask_ != this._ptpAutobattleMask_)
         {
            this._ptpAutobattleMask_ = _fullMask_;
            §521423127992312812123423632234§(_fullMask_);
         }
      }

      private function _ptpClearAutobattleChassisState() : void
      {
         §if for switch§._autobattle_fire_requested_ = false;
         §if for switch§._autobattle_move_forward_ = false;
         §if for switch§._autobattle_move_backward_ = false;
         §if for switch§._autobattle_move_left_ = false;
         §if for switch§._autobattle_move_right_ = false;
      }

      private function _ptpSyncAutobattleChassis() : void
      {
         var _tank_:§5214239411239424123423632234§ = this.§521423110872311100123423632234§();
         var _mask_:int = 0;
         if(_tank_ == null)
         {
            this._ptpClearAutobattleChassisState();
            this._ptpAutobattleMask_ = 0;
            return;
         }
         if(!§if for switch§._autobattle_enabled_)
         {
            this._ptpApplyAutobattleChassisMask(0);
            return;
         }
         if(_tank_.§do for final§ == null || _tank_.§do for final§.§5214231837231850123423632234§ <= 0 || !_tank_.§5214231182231195123423632234§())
         {
            this._ptpClearAutobattleChassisState();
            this._ptpApplyAutobattleChassisMask(0);
            return;
         }
         if(§if for switch§._autobattle_move_forward_)
         {
            _mask_ |= 1;
         }
         if(§if for switch§._autobattle_move_backward_)
         {
            _mask_ |= 2;
         }
         if(§if for switch§._autobattle_move_left_)
         {
            _mask_ |= 4;
         }
         if(§if for switch§._autobattle_move_right_)
         {
            _mask_ |= 8;
         }
         this._ptpApplyAutobattleChassisMask(_mask_);
      }

      private function _ptpOpenUrl(param1:String) : void
      {
"""

_REFRESH_OLD = "         var _keysColor_:uint = _ptp_fg_muted_;\n"
_REFRESH_NEW = _REFRESH_OLD + "         this._ptpSyncAutobattleChassis();\n"

_CLOSE_OLD = "      override public function close() : void\n      {\n         super.close();\n"
_CLOSE_NEW = "      override public function close() : void\n      {\n         §if for switch§._ptpResetAutobattle();\n         this._ptpSyncAutobattleChassis();\n         super.close();\n"


def apply_autobattle_controls_patch(text_c: str, text_d: str) -> tuple[str, str]:
    text_c = replace_once(text_c, "controls state", _STATE_OLD, _STATE_NEW)
    replacements = (
        ("controls hotkey", _HOTKEY_OLD, _HOTKEY_NEW),
        ("controls field", _FIELD_OLD, _FIELD_NEW),
        ("controls helper", _HELPER_ANCHOR_OLD, _HELPER_ANCHOR_NEW),
        ("controls refresh", _REFRESH_OLD, _REFRESH_NEW),
      ("controls close", _CLOSE_OLD, _CLOSE_NEW),
    )
    for label, old, new in replacements:
        text_d = replace_once(text_d, label, old, new)
    return text_c, text_d