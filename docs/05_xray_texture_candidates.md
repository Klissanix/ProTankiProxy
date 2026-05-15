# XRay texture candidates

Date: 2026-04-10

Edit location for active xray matching list:

- `scripts/proxy/xray_texture_rules.py`

## Sources reviewed

- `scripts/proxy/transparency_patch.py`
- `artifacts/swf/decompiled_library/scripts/<map_pkg_5214236338236351123423632234>/<map_builder_5214237967237980123423632234>.as`
- `artifacts/swf/decompiled_library/scripts/<map_pkg_5214236338236351123423632234>/<include_finally_dynamic>.as`
- `artifacts/swf/decompiled_library/scripts/<map_pkg_5214236338236351123423632234>/<smooth_exceptions_52142343323446123423632234>.as`
- `artifacts/swf/decompiled_library/scripts/<library_pkg_5214232916232929123423632234>/<library_loader_5214232415232428123423632234>.as`

## How map textures are resolved

- `static-geometry` props carry `texture-name`.
- `library-name` + `group-name` + `name` resolve a prop in `library.xml`.
- Mesh textures come from `diffuse-map` in `library.xml` and `images.xml`.

For xray patching, matching by `texture-name` and/or final `library#texture` is viable.

## Candidates: houses and buildings

- `SmHouse008`
- `#smhouse2`
- `#smhouse4`
- `#sm_br_1.`
- `#sm_br_1_`
- `#bk_roof`
- `#fahwerk1`
- `#fahwerk2`
- `#gate.`
- `#tower.`
- `#vilhou4`
- `wall_broke_1`
- `wall_broke_2`
- Fort maps: prefix `wall_` except `wall_out.jpg`

## Candidates: surfaces and terrain

- `ground21*`
- `ground22*`
- `grass_a*`
- `grass_b*`
- `grass2*` in `Land Tiles`
- `zamin*` except `newnakhl`
- `cliff_1*`
- `cliff_2*`
- `cliff_c2*`
- `concrete_*`
- `concrete2x2_*`
- `pave*`
- `steel_*`
- `slope*`
- `spring_*`
- `bg_rock*`
- `land33*`
- `roof.jpg`
- `wallbrok.jpg`

## Candidates: map props and obstacles

- `Tree01`, `Tree02`
- `tube_1`, `tube_2`, `tube_3`, `tube_cor`
- `Big_Rock`, `Big_Rock04`
- `sm_rock1`, `sm_rock2`
- `Up_Rock`, `Up_Rock1`, `Up_Rock2`, `Up_Rock14`, `up_Brock`
- `cliff_3`, `cliff_4`, `cliff_inco`, `cliff_cor`, `cliff_r2`, `cliff_ri`
- `Land`, `Land02`, `Land03`, `Land04`, `Land05`, `Land06`, `Land07`, `Land08`, `Land09`, `Land22`, `Land33`
- `crater`
- `Corn1`, `Corn2`, `Corn3`, `Corn4`, `Corn_B`
- `Change01`, `Change02`
- `pumpkin`
- `rise_g1..rise_g6`
- `Rise_gr1`, `Rise_gr2`
- `rise_r1`, `rise_r5`, `rise_r6`
- `hang_1`, `hang_2`, `hang_3`

## Important note for current xray patch

Current `transparency_patch.py` mainly affects the dynamic object vector path and `HidableObject3DWrapper`.
Static BSP/Mesh geometry (walls, houses, terrain) follows another path, so it needs a separate alpha patch using `texture-name` or `library#texture`.
