from __future__ import annotations

from pathlib import Path

XRAY_ALPHA = 0.35

_PKG_ENGINE3D = Path("alternativa") / "tanks" / "engine3d"
_FILE_F = "DefaultTextureMaterialFactory.as"
_F_OLD = (
    "      public function DefaultTextureMaterialFactory()\n"
    "      {\n"
    "         super();\n"
    "      }\n"
    "      \n"
    "      public function createTextureMaterial(param1:BitmapData, param2:Boolean) : TextureMaterial\n"
    "      {\n"
    "         return new TextureMaterial(param1,false,true,param2 ? 2 : 0);\n"
    "      }"
)

_PKG_H = Path("§5214234043234056123423632234§")
_FILE_H = "HidableObject3DWrapper.as"
_H_IMPORT_OLD = "   import alternativa.engine3d.core.Object3D;\n"
_H_IMPORT_NEW = (
    "   import alternativa.engine3d.core.Object3D;\n"
    "   import alternativa.tanks.engine3d.DefaultTextureMaterialFactory;\n"
)
_H_OLD = (
    "      public function setAlphaMultiplier(param1:Number) : void\n"
    "      {\n"
    "         this.object.alpha = param1;\n"
    "      }"
)
_H_NEW = (
    "      public function setAlphaMultiplier(param1:Number) : void\n"
    "      {\n"
    "         var _loc2_:Number = param1;\n"
    "         if(DefaultTextureMaterialFactory._xray_on_)\n"
    "         {\n"
    f"            _loc2_ = _loc2_ * {XRAY_ALPHA};\n"
    "         }\n"
    "         this.object.alpha = _loc2_;\n"
    "      }"
)

_PKG_M = Path("§5214236338236351123423632234§")
_FILE_M = "§5214239451239464123423632234§.as"
_M_IMPORT_OLD = "   import alternativa.utils.TextureMaterialRegistry;\n"
_M_IMPORT_NEW = (
    "   import alternativa.utils.TextureMaterialRegistry;\n"
    "   import alternativa.tanks.engine3d.DefaultTextureMaterialFactory;\n"
)
_M_LOOP_ANCHOR = "for each(var _loc4_ in this.§for set continue§.§get catch dynamic§())\n         {\n"
_M_ADDCHILD_LINE = "            this.§521423137462313759123423632234§.addChild(_loc4_);\n"
_M_INSERT = (
    "            DefaultTextureMaterialFactory._xray_objects_.push(_loc4_);\n"
    "            DefaultTextureMaterialFactory._xray_base_alphas_.push(_loc4_.alpha);\n"
    "            if(DefaultTextureMaterialFactory._xray_on_)\n"
    "            {\n"
    f"               _loc4_.alpha = _loc4_.alpha * {XRAY_ALPHA};\n"
    "            }\n"
)
_M_STATIC_BUILD_INIT_OLD = (
    "         this.§for set continue§ = new §5214237967237980123423632234§(this.§5214237932237945123423632234§);\n"
)
_M_STATIC_BUILD_INIT_NEW = (
    "         DefaultTextureMaterialFactory._xray_objects_.length = 0;\n"
    "         DefaultTextureMaterialFactory._xray_base_alphas_.length = 0;\n"
    "         this.§for set continue§ = new §5214237967237980123423632234§(this.§5214237932237945123423632234§);\n"
)
_M_CREATE_TREE_OLD = (
    "         this.§521423137462313759123423632234§.createTree(_loc2_,this.§for set continue§.§5214239264239277123423632234§());\n"
)
_M_CREATE_TREE_NEW = (
    "         this.§521423137462313759123423632234§.createTree(_loc2_,this.§for set continue§.§5214239264239277123423632234§());\n"
    "         this.§521423137462313759123423632234§.batched = false;\n"
)

_PKG_S = Path("§5214236338236351123423632234§")
_FILE_S = "§5214237967237980123423632234§.as"
_S_IMPORT_OLD = "   import alternativa.engine3d.objects.Sprite3D;\n"
_S_IMPORT_NEW = (
    "   import alternativa.engine3d.objects.Sprite3D;\n"
    "   import alternativa.tanks.engine3d.DefaultTextureMaterialFactory;\n"
)
_S_THROW_FOR_OLD = (
    "      private static function §throw for§(param1:XML) : String\n"
    "      {\n"
    "         var _loc3_:String = null;\n"
    "         var _loc2_:XMLList = param1.elements(\"texture-name\");\n"
    "         if(_loc2_.length() > 0)\n"
    "         {\n"
    "            _loc3_ = _loc2_[0];\n"
    "         }\n"
    "         return _loc3_ || \"$$$_DEFAULT_TEXTURE_$$$\";\n"
    "      }"
)
_S_CASE_OLD = (
    "         var _loc4_:String = §throw for§(param1);\n"
    "         this.§switch catch package§.§521423113682311381123423632234§(param2,_loc4_,_loc6_,\"display\");\n"
)
_S_STORE_TEXTURE_OLD = (
    "         this.§5214233278233291123423632234§[_loc6_] = param2;\n"
    "         this.§set package function§[_loc6_] = _loc4_;\n"
)
_S_BSP_OLD = (
    "            _loc2_.rotationZ = _loc1_.rotationZ;\n"
    "            this.§switch catch package§.§5214236208236221123423632234§(this.§5214233278233291123423632234§[_loc1_],this.§set package function§[_loc1_],_loc2_);\n"
)