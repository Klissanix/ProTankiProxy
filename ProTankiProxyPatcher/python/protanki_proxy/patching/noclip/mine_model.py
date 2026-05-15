from __future__ import annotations

from .identifiers import MINE_MODEL_POINTS_METHOD, MINE_MODEL_STATIC_FIELD

MINE_MODEL_FIELDS_OLD = "      public static var §with set include§:BattleEventDispatcher;\n"

MINE_MODEL_FIELDS_NEW = (
    "      public static var §with set include§:BattleEventDispatcher;\n"
    f"      public static var {MINE_MODEL_STATIC_FIELD}:*;\n"
)

MINE_MODEL_OBJECT_LOADED_OLD = "      public function objectLoaded() : void\n      {\n"

MINE_MODEL_OBJECT_LOADED_NEW = (
    "      public function objectLoaded() : void\n"
    "      {\n"
    f"         {MINE_MODEL_STATIC_FIELD} = this;\n"
)

MINE_MODEL_OBJECT_UNLOADED_OLD = "      public function objectUnloaded() : void\n      {\n"

MINE_MODEL_OBJECT_UNLOADED_NEW = (
    "      public function objectUnloaded() : void\n"
    "      {\n"
    f"         if({MINE_MODEL_STATIC_FIELD} == this)\n"
    "         {\n"
    f"            {MINE_MODEL_STATIC_FIELD} = null;\n"
    "         }\n"
)

MINE_MODEL_HANDLE_EVENT_OLD = "      public function handleBattleEvent(param1:Object) : void\n      {\n"

MINE_MODEL_HANDLE_EVENT_NEW = f'''      public function {MINE_MODEL_POINTS_METHOD}() : Array
      {{
         var _out_:Array = [];
         if(this.§use set const§ != null)
         {{
            for each(var _pending_:* in this.§use set const§)
            {{
               if(_pending_ != null && _pending_.§dynamic final§ != null)
               {{
                  _out_.push(BattleUtils.getVector3(_pending_.§dynamic final§));
               }}
            }}
         }}
         for each(var _mine_:* in this.§include switch with§)
         {{
            if(_mine_ != null && _mine_.§dynamic final§ != null)
            {{
               _out_.push(_mine_.§dynamic final§);
            }}
         }}
         return _out_;
      }}
      
{MINE_MODEL_HANDLE_EVENT_OLD}'''


def apply_mine_model_patch(text: str) -> str:
    replacements = (
        ("mine model fields", MINE_MODEL_FIELDS_OLD, MINE_MODEL_FIELDS_NEW),
        ("mine model objectLoaded", MINE_MODEL_OBJECT_LOADED_OLD, MINE_MODEL_OBJECT_LOADED_NEW),
        ("mine model objectUnloaded", MINE_MODEL_OBJECT_UNLOADED_OLD, MINE_MODEL_OBJECT_UNLOADED_NEW),
        ("mine model getter", MINE_MODEL_HANDLE_EVENT_OLD, MINE_MODEL_HANDLE_EVENT_NEW),
    )
    for label, old, new in replacements:
        if old not in text:
            raise RuntimeError(f"{label}: anchor not found - SWF version mismatch.")
        text = text.replace(old, new, 1)
    return text
