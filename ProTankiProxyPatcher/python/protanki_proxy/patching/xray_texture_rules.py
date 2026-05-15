"""
Centralized texture-name matching rules for static xray transparency.

Rules are applied to lowercase texture-name with a leading "#" stripped.
"""
from __future__ import annotations

# Exact names that should always be treated as xray-transparent.
XRAY_TEXTURE_EXACT: tuple[str, ...] = (
    "smhouse008",
    "wall_broke_1",
    "wall_broke_2",
    "tree01",
    "tree02",
    "roof.jpg",
    "wallbrok.jpg",
    "dot2_2",
    "broktank",
    "med_rock",
    "line",
    "crater",
    "pumpkin",
    "land",
)

# Prefixes that should be treated as xray-transparent.
XRAY_TEXTURE_PREFIXES: tuple[str, ...] = (
    "smhouse",
    "sm_br_1",
    "bk_roof",
    "fahwerk",
    "gate.",
    "tower.",
    "vilhou",
    "hang_",
    "wall_broke_",
    "wall_",
    "ground21",
    "ground22",
    "gravest",
    "grid",
    "grass_a",
    "grass_b",
    "grass2",
    "cliff_",
    "concrete_",
    "concrete2x2_",
    "pave",
    "pc_",
    "pg_",
    "steel_",
    "dark_",
    "dd_",
    "dg_",
    "gd",
    "slope",
    "spring_",
    "bg_rock",
    "land",
    "zamin",
    "tube_",
    "big_rock",
    "sm_rock",
    "up_rock",
    "up_brock",
    "tree",
    "corn",
    "change",
    "rise_",
    "rise_gr",
    "nubu_",
)

# Exact names to exclude even if they match a prefix above.
XRAY_TEXTURE_EXCLUDED_EXACT: tuple[str, ...] = (
    "$$$_default_texture_$$$",
    "wall_out.jpg",
)

# Prefix-specific blocked substrings.
# Example: zamin* should match except variants containing newnakhl.
XRAY_TEXTURE_PREFIX_BLOCKED_SUBSTRINGS: dict[str, tuple[str, ...]] = {
    "zamin": ("newnakhl",),
}

# If True, any non-empty texture-name that is not explicitly excluded will match.
# This is useful for obfuscated/new map packs where names differ from known prefixes.
XRAY_MATCH_UNKNOWN_NAMES = True 
