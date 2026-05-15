from __future__ import annotations

from ..noclip.identifiers import MINE_MODEL_STATIC_FIELD
from .shared import AUTOBATTLE_NEAREST_METHOD, replace_once

_HANDLE_EVENT_OLD = "      public function handleBattleEvent(param1:Object) : void\n      {\n"

_HANDLE_EVENT_NEW = f'''      public function {AUTOBATTLE_NEAREST_METHOD}(param1:§5214239411239424123423632234§) : §5214239411239424123423632234§
      {{
         var _best_:§5214239411239424123423632234§ = null;
         var _tank_:§5214239411239424123423632234§ = null;
         var _myPos_:Vector3 = null;
         var _tankPos_:Vector3 = null;
         var _dx_:Number = NaN;
         var _dy_:Number = NaN;
         var _dist2_:Number = NaN;
         var _bestDist_:Number = 1.7976931348623157e+308;
         var _myTeam_:* = null;
         if(param1 == null)
         {{
            return null;
         }}
         _myPos_ = param1.§521423102952310308123423632234§();
         if(_myPos_ == null)
         {{
            return null;
         }}
         _myTeam_ = param1.§5214238124238137123423632234§;
         for each(_tank_ in this.§5214239755239768123423632234§)
         {{
            if(_tank_ == null || _tank_ == param1 || !_tank_.§5214231182231195123423632234§())
            {{
               continue;
            }}
            if(_myTeam_ != §5214231658231671123423632234§.§dynamic use false§ && _tank_.§5214238124238137123423632234§ == _myTeam_)
            {{
               continue;
            }}
            _tankPos_ = _tank_.§521423102952310308123423632234§();
            if(_tankPos_ == null)
            {{
               continue;
            }}
            _dx_ = _tankPos_.x - _myPos_.x;
            _dy_ = _tankPos_.y - _myPos_.y;
            _dist2_ = _dx_ * _dx_ + _dy_ * _dy_;
            if(_dist2_ < _bestDist_)
            {{
               _bestDist_ = _dist2_;
               _best_ = _tank_;
            }}
         }}
         return _best_;
      }}

{_HANDLE_EVENT_OLD}'''


def apply_autobattle_mine_targets_patch(text_mine: str) -> str:
    if f"public static var {MINE_MODEL_STATIC_FIELD}:*;" not in text_mine:
        raise RuntimeError("autobattle_patch mine static: noclip mine patch must run before autobattle patch.")
    return replace_once(text_mine, "mine nearest target", _HANDLE_EVENT_OLD, _HANDLE_EVENT_NEW)