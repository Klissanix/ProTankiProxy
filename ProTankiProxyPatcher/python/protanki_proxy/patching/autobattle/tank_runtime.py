from __future__ import annotations

from ..noclip.identifiers import DRIVE_CTRL, POS_FIELD, QUAT_FIELD
from .shared import replace_once

AUTOBATTLE_MODEL_PKG = "§5214235774235787123423632234§"
AUTOBATTLE_MODEL_CLASS = "§super var dynamic§"
AUTOBATTLE_MODEL_STATIC_FIELD = "_ptpAutobattleModel_"
AUTOBATTLE_MODEL_TANKS_METHOD = "§521423115512311564123423632234§"

_HELPER_ANCHOR_OLD = "      public function runAfterPhysicsUpdate(param1:Number) : void\n      {\n"

_HELPER_ANCHOR_NEW = """      private function _ptpAbSee(param1:Vector3) : Boolean
        {
            §5214235490235503123423632234§.x = 0;
            §5214235490235503123423632234§.y = 0;
            §5214235490235503123423632234§.z = 210;
            §override var while§.x = param1.x;
            §override var while§.y = param1.y;
            §override var while§.z = param1.z + 140;
            if(this.§implements with§(§5214235490235503123423632234§,§override var while§))
            {
                return true;
            }
            §5214235490235503123423632234§.z = 235;
            §override var while§.z = param1.z + 165;
            return this.§implements with§(§5214235490235503123423632234§,§override var while§);
        }

        public function runAfterPhysicsUpdate(param1:Number) : void
        {
"""

_NOCLIP_RETURN_OLD = (
    f"            if(!{DRIVE_CTRL}._noclip_enabled_ && !{DRIVE_CTRL}._noclip_full_)\n"
    "            {\n"
    "               return;\n"
    "            }\n"
)

_NOCLIP_RETURN_NEW = (
     """            if(__CTRL__._autobattle_enabled_)
                {
                    __CTRL__._autobattle_fire_requested_ = false;
                    __CTRL__._autobattle_move_forward_ = false;
                    __CTRL__._autobattle_move_backward_ = false;
                    __CTRL__._autobattle_move_left_ = false;
                    __CTRL__._autobattle_move_right_ = false;
                    if(this.§do for final§ == null || this.§do for final§.§5214231837231850123423632234§ <= 0 || !this.§5214231182231195123423632234§())
                    {
                        __CTRL__._autobattle_last_x_ = NaN;
                        __CTRL__._autobattle_last_y_ = NaN;
                        __CTRL__._autobattle_stuck_time_ = 0;
                        __CTRL__._autobattle_reverse_time_ = 0;
                        __CTRL__._autobattle_nav_timer_ = 0;
                        __CTRL__._autobattle_commit_time_ = 0;
                        __CTRL__._autobattle_fire_requested_ = false;
                        __CTRL__._autobattle_move_forward_ = false;
                        __CTRL__._autobattle_move_backward_ = false;
                        __CTRL__._autobattle_move_left_ = false;
                        __CTRL__._autobattle_move_right_ = false;
                        __CTRL__._autobattle_target_ = null;
                        __CTRL__._autobattle_lost_time_ = 0;
                        __CTRL__._autobattle_lock_time_ = 0;
                        return;
                    }
                    __CTRL__._autobattle_cycle_ = Number(__CTRL__._autobattle_cycle_) - param1;
                    __CTRL__._autobattle_nav_timer_ = Number(__CTRL__._autobattle_nav_timer_) - param1;
                    __CTRL__._autobattle_reverse_time_ = Math.max(0,Number(__CTRL__._autobattle_reverse_time_) - param1);
                    __CTRL__._autobattle_stuck_penalty_ = Math.max(0,Number(__CTRL__._autobattle_stuck_penalty_) - param1 * 0.55);
                    __CTRL__._autobattle_commit_time_ = Math.max(0,Number(__CTRL__._autobattle_commit_time_) - param1);
                    if(Number(__CTRL__._autobattle_cycle_) <= 0)
                    {
                        __CTRL__._autobattle_turn_sign_ = -int(__CTRL__._autobattle_turn_sign_);
                        if(int(__CTRL__._autobattle_turn_sign_) == 0)
                        {
                            __CTRL__._autobattle_turn_sign_ = 1;
                        }
                        if(Math.random() < 0.35)
                        {
                            __CTRL__._autobattle_turn_sign_ = -int(__CTRL__._autobattle_turn_sign_);
                        }
                        __CTRL__._autobattle_cycle_ = 1.6 + Math.random() * 1.6;
                        __CTRL__._autobattle_nav_bias_ = (0.3 + Math.random() * 0.45) * int(__CTRL__._autobattle_turn_sign_);
                    }
                    if(_bs_ == null || this.§finally continue§ == null)
                    {
                        __CTRL__._autobattle_target_ = null;
                        __CTRL__._autobattle_lost_time_ = 0;
                        __CTRL__._autobattle_lock_time_ = 0;
                        return;
                    }
                    var _abp_:* = _bs_.__POS__;
                    var _abq_:* = _bs_.__QUAT__;
                    if(_abp_ == null || _abq_ == null)
                    {
                        __CTRL__._autobattle_target_ = null;
                        __CTRL__._autobattle_lost_time_ = 0;
                        __CTRL__._autobattle_lock_time_ = 0;
                        return;
                    }
                    var _abPX_:Number = _abp_.x;
                    var _abPY_:Number = _abp_.y;
                    var _abPZ_:Number = _abp_.z;
                    var _abDX_:Number = NaN;
                    var _abDY_:Number = NaN;
                    var _abMove2_:Number = _dxy2_;
                    if(!isNaN(__CTRL__._autobattle_last_x_))
                    {
                        _abDX_ = _abPX_ - Number(__CTRL__._autobattle_last_x_);
                        _abDY_ = _abPY_ - Number(__CTRL__._autobattle_last_y_);
                        _abMove2_ = Math.max(_abMove2_,_abDX_ * _abDX_ + _abDY_ * _abDY_);
                    }
                    __CTRL__._autobattle_last_x_ = _abPX_;
                    __CTRL__._autobattle_last_y_ = _abPY_;
                    var _abFwdX_:Number = 2 * (_abq_.x * _abq_.y - _abq_.w * _abq_.z);
                    var _abFwdY_:Number = 1 - 2 * (_abq_.x * _abq_.x + _abq_.z * _abq_.z);
                    var _abRgtX_:Number = 1 - 2 * (_abq_.y * _abq_.y + _abq_.z * _abq_.z);
                    var _abRgtY_:Number = 2 * (_abq_.x * _abq_.y + _abq_.w * _abq_.z);
                    var _abModel_:* = __PKG__.__CLS__.__FIELD__;
                    var _abTanks_:* = null;
                    var _abTank_:* = null;
                    var _abTarget_:* = null;
                    var _abLock_:* = __CTRL__._autobattle_target_;
                    var _abOther_:* = null;
                    var _abBestDist_:Number = 1.7976931348623157e+308;
                    var _abDist2_:Number = NaN;
                    var _abAimDist2_:Number = NaN;
                    var _abLocX_:Number = 0;
                    var _abLocY_:Number = 0;
                    var _abAimYaw_:Number = 0;
                    var _abTurretYaw_:Number = 0;
                    var _abTurretErr_:Number = 0;
                    var _abTX_:Number = 0;
                    var _abTY_:Number = 0;
                    var _abTZ_:Number = 0;
                    var _abCanFire_:Boolean = false;
                    if(_abModel_ != null)
                    {
                        _abTanks_ = _abModel_.__TANKS__();
                    }
                    if(_abTanks_ != null)
                    {
                        for each(_abTank_ in _abTanks_)
                        {
                            if(_abTank_ == null || _abTank_ == this || !_abTank_.§5214231182231195123423632234§() || _abTank_.§try for const§(this.§5214238124238137123423632234§))
                            {
                                continue;
                            }
                            if(_abTank_.§do for final§ == null || _abTank_.§do for final§.§5214231837231850123423632234§ <= 0)
                            {
                                continue;
                            }
                            _abOther_ = _abTank_.§break switch catch§();
                            if(_abOther_ == null || _abOther_.§implements catch catch§ == null)
                            {
                                continue;
                            }
                            _abOther_ = _abOther_.§implements catch catch§.§dynamic final§;
                            if(_abOther_ == null || !this._ptpAbSee(_abOther_))
                            {
                                continue;
                            }
                            _abDX_ = _abOther_.x - _abPX_;
                            _abDY_ = _abOther_.y - _abPY_;
                            _abDist2_ = _abDX_ * _abDX_ + _abDY_ * _abDY_;
                            if(_abTank_ == _abLock_ && Number(__CTRL__._autobattle_lost_time_) < 0.85)
                            {
                                _abDist2_ = _abDist2_ - 900000;
                            }
                            if(_abDist2_ < _abBestDist_)
                            {
                                _abBestDist_ = _abDist2_;
                                _abTarget_ = _abTank_;
                                _abTX_ = _abDX_;
                                _abTY_ = _abDY_;
                                _abTZ_ = _abOther_.z;
                            }
                        }
                    }
                    if(_abTarget_ != null)
                    {
                        _abAimDist2_ = _abTX_ * _abTX_ + _abTY_ * _abTY_;
                        _abLocX_ = _abRgtX_ * _abTX_ + _abRgtY_ * _abTY_;
                        _abLocY_ = _abFwdX_ * _abTX_ + _abFwdY_ * _abTY_;
                        _abAimYaw_ = Math.atan2(-_abLocX_,_abLocY_);
                        __CTRL__._autobattle_target_ = _abTarget_;
                        __CTRL__._autobattle_lost_time_ = 0;
                        if(_abTarget_ == _abLock_)
                        {
                            __CTRL__._autobattle_lock_time_ = Math.min(1.1,Number(__CTRL__._autobattle_lock_time_) + param1);
                        }
                        else
                        {
                            __CTRL__._autobattle_lock_time_ = 0;
                        }
                        __CTRL__._autobattle_seen_x_ = _abPX_ + _abTX_;
                        __CTRL__._autobattle_seen_y_ = _abPY_ + _abTY_;
                        __CTRL__._autobattle_seen_z_ = _abTZ_;
                        this.§finally continue§.§in switch use§(_abAimYaw_);
                        _abTurretYaw_ = this.§finally continue§.§final use throw§();
                        _abTurretErr_ = Math.atan2(Math.sin(_abAimYaw_ - _abTurretYaw_),Math.cos(_abAimYaw_ - _abTurretYaw_));
                        _abCanFire_ = _abAimDist2_ <= 100000000 && Math.abs(_abTurretErr_) < 0.12;
                    }
                    else if(_abLock_ != null && Number(__CTRL__._autobattle_lost_time_) < 0.85)
                    {
                        if(_abLock_ == this || !_abLock_.§5214231182231195123423632234§() || _abLock_.§try for const§(this.§5214238124238137123423632234§) || _abLock_.§do for final§ == null || _abLock_.§do for final§.§5214231837231850123423632234§ <= 0)
                        {
                            __CTRL__._autobattle_target_ = null;
                            __CTRL__._autobattle_lost_time_ = 0;
                            __CTRL__._autobattle_lock_time_ = 0;
                            this.§finally continue§.§in switch use§(0);
                        }
                        else
                        {
                            _abTarget_ = _abLock_;
                            __CTRL__._autobattle_target_ = _abTarget_;
                            __CTRL__._autobattle_lost_time_ = Number(__CTRL__._autobattle_lost_time_) + param1;
                            __CTRL__._autobattle_lock_time_ = Math.max(0,Number(__CTRL__._autobattle_lock_time_) - param1 * 0.5);
                            _abTX_ = Number(__CTRL__._autobattle_seen_x_) - _abPX_;
                            _abTY_ = Number(__CTRL__._autobattle_seen_y_) - _abPY_;
                            _abTZ_ = Number(__CTRL__._autobattle_seen_z_);
                            _abLocX_ = _abRgtX_ * _abTX_ + _abRgtY_ * _abTY_;
                            _abLocY_ = _abFwdX_ * _abTX_ + _abFwdY_ * _abTY_;
                            _abAimYaw_ = Math.atan2(-_abLocX_,_abLocY_);
                            _abAimDist2_ = _abTX_ * _abTX_ + _abTY_ * _abTY_;
                            this.§finally continue§.§in switch use§(_abAimYaw_);
                        }
                    }
                    else
                    {
                        __CTRL__._autobattle_target_ = null;
                        __CTRL__._autobattle_lost_time_ = 0;
                        __CTRL__._autobattle_lock_time_ = 0;
                        this.§finally continue§.§in switch use§(0);
                    }
                    var _abGoalX_:Number = -_abPX_;
                    var _abGoalY_:Number = -_abPY_;
                    var _abCenter2_:Number = _abGoalX_ * _abGoalX_ + _abGoalY_ * _abGoalY_;
                    if(Number(__CTRL__._autobattle_nav_timer_) <= 0 || _abCenter2_ < 810000)
                    {
                        __CTRL__._autobattle_nav_timer_ = 0.9 + Math.random() * 1.4;
                        if(Math.random() < 0.35)
                        {
                            __CTRL__._autobattle_turn_sign_ = -int(__CTRL__._autobattle_turn_sign_);
                        }
                        if(int(__CTRL__._autobattle_turn_sign_) == 0)
                        {
                            __CTRL__._autobattle_turn_sign_ = 1;
                        }
                        __CTRL__._autobattle_nav_bias_ = (0.25 + Math.random() * 0.8) * int(__CTRL__._autobattle_turn_sign_);
                    }
                    if(_abCenter2_ < 3240000)
                    {
                        var _abOrbit_:Number = _abCenter2_ < 490000 ? 1.15 : 0.55;
                        _abGoalX_ = _abGoalX_ + _abPY_ * Number(__CTRL__._autobattle_nav_bias_) * _abOrbit_;
                        _abGoalY_ = _abGoalY_ - _abPX_ * Number(__CTRL__._autobattle_nav_bias_) * _abOrbit_;
                    }
                    if(_abTarget_ != null)
                    {
                        if(Number(__CTRL__._autobattle_lost_time_) <= 0)
                        {
                            if(_abAimDist2_ > 640000)
                            {
                                _abGoalX_ = _abGoalX_ + _abTX_ * 0.32;
                                _abGoalY_ = _abGoalY_ + _abTY_ * 0.32;
                            }
                            else
                            {
                                _abGoalX_ = _abGoalX_ + _abTX_ * 0.08 + _abTY_ * 0.24 * int(__CTRL__._autobattle_turn_sign_);
                                _abGoalY_ = _abGoalY_ + _abTY_ * 0.08 - _abTX_ * 0.24 * int(__CTRL__._autobattle_turn_sign_);
                            }
                        }
                        else if(Number(__CTRL__._autobattle_lost_time_) < 0.85)
                        {
                            _abGoalX_ = _abGoalX_ + _abTX_ * 0.14;
                            _abGoalY_ = _abGoalY_ + _abTY_ * 0.14;
                        }
                    }
                    if(Math.abs(_abGoalX_) + Math.abs(_abGoalY_) < 1)
                    {
                        _abGoalX_ = _abFwdX_ + _abRgtX_ * Number(__CTRL__._autobattle_nav_bias_);
                        _abGoalY_ = _abFwdY_ + _abRgtY_ * Number(__CTRL__._autobattle_nav_bias_);
                    }
                    var _abGoalLen_:Number = Math.sqrt(_abGoalX_ * _abGoalX_ + _abGoalY_ * _abGoalY_);
                    if(_abGoalLen_ < 0.001)
                    {
                        _abGoalX_ = _abFwdX_;
                        _abGoalY_ = _abFwdY_;
                        _abGoalLen_ = 1;
                    }
                    _abGoalX_ = _abGoalX_ / _abGoalLen_;
                    _abGoalY_ = _abGoalY_ / _abGoalLen_;
                    var _abPrevBestYaw_:Number = Number(__CTRL__._autobattle_last_best_yaw_);
                    var _abStuckYaw_:Number = Number(__CTRL__._autobattle_last_stuck_yaw_);
                    var _abWallSide_:int = int(__CTRL__._autobattle_wall_side_);
                    if(_abWallSide_ == 0)
                    {
                        _abWallSide_ = int(__CTRL__._autobattle_turn_sign_);
                        if(_abWallSide_ == 0)
                        {
                            _abWallSide_ = 1;
                        }
                        __CTRL__._autobattle_wall_side_ = _abWallSide_;
                    }
                    var _abCol_:* = null;
                    var _abHaveGround_:Boolean = false;
                    var _abGroundZ_:Number = _abPZ_;
                    if(this.§52142380523818123423632234§ != null && this.§52142380523818123423632234§.getBattleRunner() != null)
                    {
                        _abCol_ = this.§52142380523818123423632234§.getBattleRunner().getCollisionDetector();
                    }
                    if(_abCol_ != null)
                    {
                        §override var while§.x = _abPX_;
                        §override var while§.y = _abPY_;
                        §override var while§.z = _abPZ_ + 260;
                        if(_abCol_.§set use for§(§override var while§,Vector3.DOWN,16,2600,null,§get switch class§))
                        {
                            _abHaveGround_ = true;
                            _abGroundZ_ = §get switch class§.§dynamic final§.z;
                        }
                    }
                    var _abBestYaw_:Number = int(__CTRL__._autobattle_turn_sign_) > 0 ? 1.15 : -1.15;
                    var _abBestScore_:Number = -1.7976931348623157e+308;
                    var _abBestSafe_:Boolean = false;
                    var _abOff_:* = null;
                    var _abDrop_:Number = 0;
                    var _abRise_:Number = 0;
                    var _abNorm_:Number = 0;
                    for each(_abOff_ in [0,0.35,-0.35,0.7,-0.7,1.1,-1.1,1.6,-1.6])
                    {
                        var _abAng_:Number = Number(_abOff_);
                        var _abCos_:Number = Math.cos(_abAng_);
                        var _abSin_:Number = Math.sin(_abAng_);
                        var _abDirX_:Number = _abGoalX_ * _abCos_ - _abGoalY_ * _abSin_;
                        var _abDirY_:Number = _abGoalX_ * _abSin_ + _abGoalY_ * _abCos_;
                        var _abTurnX_:Number = _abRgtX_ * _abDirX_ + _abRgtY_ * _abDirY_;
                        var _abTurnY_:Number = _abFwdX_ * _abDirX_ + _abFwdY_ * _abDirY_;
                        var _abYaw_:Number = Math.atan2(-_abTurnX_,_abTurnY_);
                        var _abScore_:Number = _abDirX_ * _abGoalX_ + _abDirY_ * _abGoalY_ + (_abFwdX_ * _abDirX_ + _abFwdY_ * _abDirY_) * 0.3 - Math.abs(_abYaw_) * 0.28;
                        var _abKeepYaw_:Number = Math.atan2(Math.sin(_abYaw_ - _abPrevBestYaw_),Math.cos(_abYaw_ - _abPrevBestYaw_));
                        if(Number(__CTRL__._autobattle_commit_time_) > 0)
                        {
                            _abScore_ = _abScore_ + Math.max(0,0.8 - Math.abs(_abKeepYaw_)) * 0.42;
                        }
                        if(Number(__CTRL__._autobattle_stuck_penalty_) > 0)
                        {
                            var _abBadYaw_:Number = Math.atan2(Math.sin(_abYaw_ - _abStuckYaw_),Math.cos(_abYaw_ - _abStuckYaw_));
                            _abScore_ = _abScore_ - Math.max(0,0.75 - Math.abs(_abBadYaw_)) * Number(__CTRL__._autobattle_stuck_penalty_) * 1.8;
                        }
                        var _abSafe_:Boolean = _abHaveGround_;
                        if(_abCol_ != null && _abSafe_)
                        {
                            §override var while§.x = _abPX_;
                            §override var while§.y = _abPY_;
                            §override var while§.z = _abGroundZ_ + 150;
                            §class use case§.x = _abDirX_;
                            §class use case§.y = _abDirY_;
                            §class use case§.z = 0;
                            if(_abCol_.§set use for§(§override var while§,§class use case§,16,560,null,§get switch class§))
                            {
                                var _abHitDist_:Number = §get switch class§.§5214232932232945123423632234§;
                                _abScore_ = _abScore_ - (1 - Math.min(_abHitDist_,560) / 560) * 1.8;
                                if(§get switch class§.§5214233761233774123423632234§.z < 0.85)
                                {
                                    var _abWallNx_:Number = §get switch class§.§5214233761233774123423632234§.x;
                                    var _abWallNy_:Number = §get switch class§.§5214233761233774123423632234§.y;
                                    var _abWallPush_:Number = Math.max(0,_abDirX_ * _abWallNx_ + _abDirY_ * _abWallNy_);
                                    var _abWallTan_:Number = _abDirX_ * (-_abWallNy_ * _abWallSide_) + _abDirY_ * (_abWallNx_ * _abWallSide_);
                                    _abScore_ = _abScore_ - _abWallPush_ * 1.6 + _abWallTan_ * 0.42;
                                }
                                if(_abHitDist_ < 260 && §get switch class§.§5214233761233774123423632234§.z < 0.6)
                                {
                                    _abSafe_ = false;
                                    _abScore_ = _abScore_ - 3.5;
                                }
                            }
                            if(_abSafe_ && Math.abs(_abYaw_) < 0.95 && _abCol_.§set use for§(§override var while§,§class use case§,16,920,null,§get switch class§))
                            {
                                _abScore_ = _abScore_ - (1 - Math.min(§get switch class§.§5214232932232945123423632234§,920) / 920) * 0.75;
                            }
                            §5214235490235503123423632234§.x = _abPX_ + _abDirX_ * 280;
                            §5214235490235503123423632234§.y = _abPY_ + _abDirY_ * 280;
                            §5214235490235503123423632234§.z = _abGroundZ_ + 280;
                            if(!_abCol_.§set use for§(§5214235490235503123423632234§,Vector3.DOWN,16,2600,null,§get switch class§))
                            {
                                _abSafe_ = false;
                                _abScore_ = _abScore_ - 4;
                            }
                            else
                            {
                                _abDrop_ = _abGroundZ_ - §get switch class§.§dynamic final§.z;
                                _abRise_ = §get switch class§.§dynamic final§.z - _abGroundZ_;
                                _abNorm_ = §get switch class§.§5214233761233774123423632234§.z;
                                if(_abDrop_ > 220 || _abNorm_ < 0.58 || (_abRise_ > 170 && _abNorm_ < 0.75))
                                {
                                    _abSafe_ = false;
                                }
                                else
                                {
                                    _abScore_ = _abScore_ + _abNorm_ * 0.8 - Math.max(0,_abDrop_ - 90) / 260;
                                }
                            }
                            if(_abSafe_)
                            {
                                §5214235490235503123423632234§.x = _abPX_ + _abDirX_ * 520;
                                §5214235490235503123423632234§.y = _abPY_ + _abDirY_ * 520;
                                §5214235490235503123423632234§.z = _abGroundZ_ + 280;
                                if(!_abCol_.§set use for§(§5214235490235503123423632234§,Vector3.DOWN,16,3000,null,§get switch class§))
                                {
                                    _abSafe_ = false;
                                    _abScore_ = _abScore_ - 2.5;
                                }
                                else
                                {
                                    _abDrop_ = _abGroundZ_ - §get switch class§.§dynamic final§.z;
                                    _abRise_ = §get switch class§.§dynamic final§.z - _abGroundZ_;
                                    _abNorm_ = §get switch class§.§5214233761233774123423632234§.z;
                                    if(_abDrop_ > 250 || _abNorm_ < 0.55 || (_abRise_ > 210 && _abNorm_ < 0.72))
                                    {
                                        _abSafe_ = false;
                                        _abScore_ = _abScore_ - 3;
                                    }
                                    else
                                    {
                                        _abScore_ = _abScore_ + _abNorm_ * 0.55 - Math.max(0,_abDrop_ - 120) / 320;
                                    }
                                }
                            }
                        }
                        if(_abSafe_)
                        {
                            _abScore_ = _abScore_ + 1.6;
                        }
                        if((_abSafe_ && !_abBestSafe_) || (_abSafe_ == _abBestSafe_ && _abScore_ > _abBestScore_))
                        {
                            _abBestSafe_ = _abSafe_;
                            _abBestScore_ = _abScore_;
                            _abBestYaw_ = _abYaw_;
                        }
                    }
                    if(_abBestSafe_)
                    {
                        __CTRL__._autobattle_last_best_yaw_ = _abBestYaw_;
                        __CTRL__._autobattle_commit_time_ = 0.42;
                    }
                    if(_abCanFire_)
                    {
                        __CTRL__._autobattle_fire_requested_ = true;
                    }
                    if(Number(__CTRL__._autobattle_reverse_time_) > 0)
                    {
                        __CTRL__._autobattle_move_backward_ = true;
                        __CTRL__._autobattle_move_left_ = _abBestYaw_ >= 0;
                        __CTRL__._autobattle_move_right_ = _abBestYaw_ < 0;
                        if(Math.abs(_abBestYaw_) < 0.12)
                        {
                            __CTRL__._autobattle_move_left_ = int(__CTRL__._autobattle_turn_sign_) > 0;
                            __CTRL__._autobattle_move_right_ = int(__CTRL__._autobattle_turn_sign_) < 0;
                        }
                        __CTRL__._autobattle_stuck_time_ = 0;
                    }
                    else if(_abBestSafe_ && Math.abs(_abBestYaw_) < 1.85)
                    {
                        __CTRL__._autobattle_move_forward_ = true;
                        __CTRL__._autobattle_move_left_ = _abBestYaw_ > 0.18;
                        __CTRL__._autobattle_move_right_ = _abBestYaw_ < -0.18;
                        if(_abMove2_ < 6)
                        {
                            __CTRL__._autobattle_stuck_time_ = Number(__CTRL__._autobattle_stuck_time_) + param1;
                        }
                        else
                        {
                            __CTRL__._autobattle_stuck_time_ = Math.max(0,Number(__CTRL__._autobattle_stuck_time_) - param1 * 0.5);
                        }
                    }
                    else
                    {
                        __CTRL__._autobattle_move_left_ = _abBestYaw_ > 0.12;
                        __CTRL__._autobattle_move_right_ = _abBestYaw_ < -0.12;
                        if(_abHaveGround_ && _abMove2_ < 4)
                        {
                            __CTRL__._autobattle_stuck_time_ = Number(__CTRL__._autobattle_stuck_time_) + param1 * 0.4;
                        }
                        else
                        {
                            __CTRL__._autobattle_stuck_time_ = Math.max(0,Number(__CTRL__._autobattle_stuck_time_) - param1 * 0.5);
                        }
                    }
                    if(Number(__CTRL__._autobattle_stuck_time_) > 0.7)
                    {
                        __CTRL__._autobattle_stuck_time_ = 0;
                        __CTRL__._autobattle_last_stuck_yaw_ = _abBestYaw_;
                        __CTRL__._autobattle_stuck_penalty_ = 1.6;
                        __CTRL__._autobattle_commit_time_ = 0;
                        __CTRL__._autobattle_reverse_time_ = 0.45 + Math.random() * 0.35;
                        __CTRL__._autobattle_turn_sign_ = -int(__CTRL__._autobattle_turn_sign_);
                        __CTRL__._autobattle_wall_side_ = -int(__CTRL__._autobattle_wall_side_);
                        if(int(__CTRL__._autobattle_wall_side_) == 0)
                        {
                            __CTRL__._autobattle_wall_side_ = 1;
                        }
                        if(int(__CTRL__._autobattle_turn_sign_) == 0)
                        {
                            __CTRL__._autobattle_turn_sign_ = 1;
                        }
                        __CTRL__._autobattle_nav_bias_ = (0.35 + Math.random() * 0.55) * int(__CTRL__._autobattle_turn_sign_);
                        __CTRL__._autobattle_nav_timer_ = 0;
                        __CTRL__._autobattle_move_forward_ = false;
                        __CTRL__._autobattle_move_backward_ = true;
                        __CTRL__._autobattle_move_left_ = int(__CTRL__._autobattle_turn_sign_) > 0;
                        __CTRL__._autobattle_move_right_ = int(__CTRL__._autobattle_turn_sign_) < 0;
                    }
                    return;
                }
"""
     .replace("__CTRL__", DRIVE_CTRL)
     .replace("__PKG__", AUTOBATTLE_MODEL_PKG)
     .replace("__CLS__", AUTOBATTLE_MODEL_CLASS)
     .replace("__FIELD__", AUTOBATTLE_MODEL_STATIC_FIELD)
     .replace("__TANKS__", AUTOBATTLE_MODEL_TANKS_METHOD)
     .replace("__POS__", POS_FIELD)
     .replace("__QUAT__", QUAT_FIELD)
     + _NOCLIP_RETURN_OLD
)


def apply_autobattle_tank_patch(text_b: str) -> str:
    text_b = replace_once(text_b, "tank runtime helper", _HELPER_ANCHOR_OLD, _HELPER_ANCHOR_NEW)
    return replace_once(text_b, "tank runtime", _NOCLIP_RETURN_OLD, _NOCLIP_RETURN_NEW)
