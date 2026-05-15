from __future__ import annotations

from ..noclip.identifiers import DRIVE_CTRL
from .shared import replace_once

TARGETING_INPUT_PKG = "alternativa/tanks/services/targeting"
TARGETING_INPUT_FILE = "TargetingInputManagerImpl.as"

_IMPORT_OLD = "   import flash.system.Capabilities;\n"
_IMPORT_NEW = _IMPORT_OLD + f"   import §5214232446232459123423632234§.{DRIVE_CTRL};\n"

_FIELD_OLD = "      private var §5214234830234843123423632234§:Boolean = false;\n"
_FIELD_NEW = _FIELD_OLD + "      private var _ptpAutobattleShot_:Boolean = false;\n"

_HELPER_ANCHOR_OLD = "      public function startDialogWithAllowedKeyboardInput() : void\n      {\n         this.e4104f8c(true);\n      }\n"

_HELPER_ANCHOR_NEW = """      public function startDialogWithAllowedKeyboardInput() : void
      {
         this.e4104f8c(true);
      }

      private function _ptpDispatchAutobattleShotKey(param1:Boolean) : void
      {
         var _i_:int = 0;
         while(_i_ < this.listeners.length)
         {
            if(!§521423108262310839123423632234§(this.listeners[_i_]).keyboardButton(32,param1,false))
            {
               return;
            }
            _i_++;
         }
      }

      private function _ptpStopAutobattleFire() : void
      {
         if(this._ptpAutobattleShot_)
         {
            this._ptpDispatchAutobattleShotKey(false);
            this.f705bd7(false,true);
            this.§include use finally§ = false;
            this._ptpAutobattleShot_ = false;
         }
      }

      private function _ptpSyncAutobattleFire() : void
      {
         var _desired_:Boolean = false;
         if(this.§else for set§ && this.active && this.§5214232434232447123423632234§ == 0 && !this.pause && !this.c5303())
         {
            _desired_ = §if for switch§._autobattle_enabled_ && §if for switch§._autobattle_fire_requested_;
         }
         if(!_desired_)
         {
            this._ptpStopAutobattleFire();
            return;
         }
         this.§include use finally§ = true;
         if(!this._ptpAutobattleShot_)
         {
            this._ptpAutobattleShot_ = true;
         }
         this._ptpDispatchAutobattleShotKey(true);
      }
"""

_TICK_OLD = "      public function tick() : void\n      {\n         if(this.§else for set§ && this.active)\n         {\n            if(this.§catch switch return§ && !this.c5303())\n            {\n               if(this.§for use import§)\n               {\n                  this.requestMouseLock();\n               }\n            }\n            else if(!this.§catch switch return§ && this.c5303())\n            {\n               if(this.a597a037() && §5214231477231490123423632234§ != \"A\")\n               {\n                  display.stage.mouseLock = false;\n               }\n            }\n            this.§catch switch return§ = this.c5303();\n            if(this.§5214232434232447123423632234§ > 0)\n            {\n               --this.§5214232434232447123423632234§;\n            }\n         }\n         if(this.activate)\n         {\n            this.active = true;\n            this.activate = false;\n            if(this.a597a037() && this.§for use import§)\n            {\n               this.requestMouseLock();\n            }\n         }\n      }\n"

_TICK_NEW = """      public function tick() : void
      {
         if(this.§else for set§ && this.active)
         {
            if(this.§catch switch return§ && !this.c5303())
            {
               if(this.§for use import§)
               {
                  this.requestMouseLock();
               }
            }
            else if(!this.§catch switch return§ && this.c5303())
            {
               if(this.a597a037() && §5214231477231490123423632234§ != "A")
               {
                  display.stage.mouseLock = false;
               }
            }
            this.§catch switch return§ = this.c5303();
            if(this.§5214232434232447123423632234§ > 0)
            {
               --this.§5214232434232447123423632234§;
            }
         }
         this._ptpSyncAutobattleFire();
         if(this.activate)
         {
            this.active = true;
            this.activate = false;
            if(this.a597a037() && this.§for use import§)
            {
               this.requestMouseLock();
            }
         }
      }
"""


_CLOSE_OLD = "      public function close() : void\n      {\n         if(this.§else for set§)\n         {\n            display.stage.removeEventListener(\"mouseMove\",this.f5133bf6);\n"

_CLOSE_NEW = "      public function close() : void\n      {\n         if(this.§else for set§)\n         {\n            this._ptpStopAutobattleFire();\n            §if for switch§._ptpResetAutobattle();\n            display.stage.removeEventListener(\"mouseMove\",this.f5133bf6);\n"


def apply_autobattle_targeting_input_patch(text: str) -> str:
    replacements = (
        ("targeting input import", _IMPORT_OLD, _IMPORT_NEW),
        ("targeting input field", _FIELD_OLD, _FIELD_NEW),
        ("targeting input helper", _HELPER_ANCHOR_OLD, _HELPER_ANCHOR_NEW),
        ("targeting input tick", _TICK_OLD, _TICK_NEW),
            ("targeting input close", _CLOSE_OLD, _CLOSE_NEW),
    )
    for label, old, new in replacements:
        text = replace_once(text, label, old, new)
    return text