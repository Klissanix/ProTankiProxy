from __future__ import annotations

from .identifiers import BONUS_REGIONS_POINTS_METHOD

BONUS_REGIONS_IMPORT_OLD = "   import alternativa.tanks.models.tank.service.LocalTankInfoService;\n"

BONUS_REGIONS_IMPORT_NEW = (
    "   import alternativa.math.Vector3;\n"
    "   import alternativa.tanks.battle.BattleUtils;\n"
    "   import alternativa.tanks.models.tank.service.LocalTankInfoService;\n"
)

BONUS_REGIONS_FIELDS_OLD = "      public static var §5214237923237936123423632234§:LocalTankInfoService;\n"

BONUS_REGIONS_FIELDS_NEW = (
    "      public static var §5214237923237936123423632234§:LocalTankInfoService;\n"
    "      private static var _ptpGoldDropZones_:Object = {};\n"
)

BONUS_REGIONS_OBJECT_UNLOADED_OLD = "      public function objectUnloaded() : void\n      {\n"

BONUS_REGIONS_OBJECT_UNLOADED_NEW = (
    "      public function objectUnloaded() : void\n"
    "      {\n"
    "         _ptpGoldDropZones_ = {};\n"
)

BONUS_REGIONS_SHOW_DROP_OLD = "      public function showDropZone(param1:§5214234821234834123423632234§) : void\n      {\n         §521423105142310527123423632234§.addAndShowRegion(param1);\n      }\n"

BONUS_REGIONS_SHOW_DROP_NEW = (
    "      public function showDropZone(param1:§5214234821234834123423632234§) : void\n"
    "      {\n"
    "         _ptpTrackGoldDropZone(param1);\n"
    "         §521423105142310527123423632234§.addAndShowRegion(param1);\n"
    "      }\n"
)

BONUS_REGIONS_HIDE_DROP_OLD = "      public function hideDropZone(param1:§5214234821234834123423632234§) : void\n      {\n         §521423105142310527123423632234§.hideAndRemoveRegion(param1);\n      }\n"

BONUS_REGIONS_HIDE_DROP_NEW = (
    "      public function hideDropZone(param1:§5214234821234834123423632234§) : void\n"
    "      {\n"
    "         _ptpUntrackGoldDropZone(param1);\n"
    "         §521423105142310527123423632234§.hideAndRemoveRegion(param1);\n"
    "      }\n"
)

BONUS_REGIONS_OBJECT_LOADED_POST_OLD = "      public function objectLoadedPost() : void\n      {\n"

BONUS_REGIONS_OBJECT_LOADED_POST_NEW = f'''      public static function {BONUS_REGIONS_POINTS_METHOD}() : Array
      {{
         var _out_:Array = [];
         if(_ptpGoldDropZones_ != null)
         {{
            for each(var _point_:* in _ptpGoldDropZones_)
            {{
               if(_point_ != null)
               {{
                  _out_.push(_point_);
               }}
            }}
         }}
         return _out_;
      }}
      
      private static function _ptpGetGoldDropKey(param1:Vector3) : String
      {{
         if(param1 == null)
         {{
            return null;
         }}
         return int(param1.x) + "|" + int(param1.y) + "|" + int(param1.z);
      }}
      
      private static function _ptpTrackGoldDropZone(param1:§5214234821234834123423632234§) : void
      {{
         var _point_:Vector3 = null;
         var _key_:String = null;
         if(param1 == null || param1.§native finally§ == null || param1.§native finally§.value < 5 || param1.§dynamic final§ == null)
         {{
            return;
         }}
         if(_ptpGoldDropZones_ == null)
         {{
            _ptpGoldDropZones_ = {{}};
         }}
         _point_ = BattleUtils.getVector3(param1.§dynamic final§);
         _key_ = _ptpGetGoldDropKey(_point_);
         if(_key_ != null)
         {{
            _ptpGoldDropZones_[_key_] = _point_;
         }}
      }}
      
      private static function _ptpUntrackGoldDropZone(param1:§5214234821234834123423632234§) : void
      {{
         var _point_:Vector3 = null;
         var _key_:String = null;
         if(_ptpGoldDropZones_ == null || param1 == null || param1.§dynamic final§ == null)
         {{
            return;
         }}
         _point_ = BattleUtils.getVector3(param1.§dynamic final§);
         _key_ = _ptpGetGoldDropKey(_point_);
         if(_key_ != null)
         {{
            delete _ptpGoldDropZones_[_key_];
         }}
      }}
      
{BONUS_REGIONS_OBJECT_LOADED_POST_OLD}'''

BONUS_REGIONS_INIT_REGIONS_OLD = "         §521423105142310527123423632234§.addFewRegions(§switch var switch§().§5214231694231707123423632234§);\n"

BONUS_REGIONS_INIT_REGIONS_NEW = (
    "         _ptpGoldDropZones_ = {};\n"
    "         var _ptpInitRegions_:* = §switch var switch§().§5214231694231707123423632234§;\n"
    "         if(_ptpInitRegions_ != null)\n"
    "         {\n"
    "            for each(var _ptpInitRegion_:* in _ptpInitRegions_)\n"
    "            {\n"
    "               _ptpTrackGoldDropZone(_ptpInitRegion_);\n"
    "            }\n"
    "         }\n"
    "         §521423105142310527123423632234§.addFewRegions(§switch var switch§().§5214231694231707123423632234§);\n"
)


def apply_bonus_regions_patch(text: str) -> str:
    replacements = (
        ("bonus regions import", BONUS_REGIONS_IMPORT_OLD, BONUS_REGIONS_IMPORT_NEW),
        ("bonus regions fields", BONUS_REGIONS_FIELDS_OLD, BONUS_REGIONS_FIELDS_NEW),
        ("bonus regions show", BONUS_REGIONS_SHOW_DROP_OLD, BONUS_REGIONS_SHOW_DROP_NEW),
        ("bonus regions post header", BONUS_REGIONS_OBJECT_LOADED_POST_OLD, BONUS_REGIONS_OBJECT_LOADED_POST_NEW),
        ("bonus regions init scan", BONUS_REGIONS_INIT_REGIONS_OLD, BONUS_REGIONS_INIT_REGIONS_NEW),
        ("bonus regions hide", BONUS_REGIONS_HIDE_DROP_OLD, BONUS_REGIONS_HIDE_DROP_NEW),
        ("bonus regions unload", BONUS_REGIONS_OBJECT_UNLOADED_OLD, BONUS_REGIONS_OBJECT_UNLOADED_NEW),
    )
    for label, old, new in replacements:
        if old not in text:
            raise RuntimeError(f"{label}: anchor not found - SWF version mismatch.")
        text = text.replace(old, new, 1)
    return text
