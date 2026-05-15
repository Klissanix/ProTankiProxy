from __future__ import annotations

from .identifiers import (
    BODY_FIELD,
    BODY_STATE,
    CASE_FIELD,
    COLLIDER_TYPE,
    CP_RECYCLE,
    DRIVE_CTRL,
    DYNAMIC_FLAG,
    LINEAR_VEL,
    NORMAL_FIELD,
    WALL_THRESHOLD,
)

A_IMPORT_ANCHOR = "   import alternativa.math.Matrix3;\n"

A_OLD = (
    f"         var _loc4_:{COLLIDER_TYPE} = this.{CASE_FIELD}[param1.type | param2.type];\n"
    "         _loc4_.getContacts(param1,param2,param3);\n"
    "      }"
)

A_NEW = (
    f"         var _loc4_:{COLLIDER_TYPE} = this.{CASE_FIELD}[param1.type | param2.type];\n"
    "         var _loc5_:int = param3.length;\n"
    "         _loc4_.getContacts(param1,param2,param3);\n"
    f"         var _nb1_:* = param1.{BODY_FIELD};\n"
    f"         var _nb2_:* = param2.{BODY_FIELD};\n"
    f"         var _isDyn1_:Boolean = _nb1_ != null && _nb1_.{DYNAMIC_FLAG};\n"
    f"         var _isDyn2_:Boolean = _nb2_ != null && _nb2_.{DYNAMIC_FLAG};\n"
    "         var _isStaticContact_:Boolean = _isDyn1_ != _isDyn2_;\n"
    f"         var _myBody_:* = {DRIVE_CTRL}._noclip_body_;\n"
    f"         if(_isStaticContact_ && _myBody_ != null && (_nb1_ == _myBody_ || _nb2_ == _myBody_) && ({DRIVE_CTRL}._noclip_enabled_ || {DRIVE_CTRL}._noclip_full_))\n"
    "         {\n"
    "            var _loc6_:int = param3.length - 1;\n"
    "            var _droppedAny_:Boolean = false;\n"
    "            while(_loc6_ >= _loc5_)\n"
    "            {\n"
    f"               if({DRIVE_CTRL}._noclip_full_ || Math.abs(param3[_loc6_].{NORMAL_FIELD}.z) < {WALL_THRESHOLD})\n"
    "               {\n"
    f"                  param3[_loc6_].{CP_RECYCLE}();\n"
    "                  param3.splice(_loc6_,1);\n"
    "                  _droppedAny_ = true;\n"
    "               }\n"
    "               _loc6_--;\n"
    "            }\n"
    "            if(_droppedAny_)\n"
    "            {\n"
    "               var _dynBody_:* = _isDyn1_ ? _nb1_ : _nb2_;\n"
    f"               var _lv_:Vector3 = _dynBody_.{BODY_STATE}.{LINEAR_VEL};\n"
    f"               if(_lv_.z < 0 && !{DRIVE_CTRL}._noclip_full_)\n"
    "               {\n"
    "                  _lv_.z = 0;\n"
    "               }\n"
    "            }\n"
    "         }\n"
    "      }"
)