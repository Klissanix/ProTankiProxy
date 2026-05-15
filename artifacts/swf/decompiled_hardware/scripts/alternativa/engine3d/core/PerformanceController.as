package alternativa.engine3d.core
{
   import flash.display.Stage;
   import flash.events.Event;
   import flash.net.SharedObject;
   import flash.utils.clearInterval;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   
   public class PerformanceController
   {
      
      public static const FOG:String = "fog";
      
      public static const DIRECTIONAL_LIGHT:String = "directionalLight";
      
      public static const SHADOW_MAP:String = "shadowMap";
      
      public static const SOFT_TRANSPARENCY:String = "softTransparency";
      
      public static const SHADOWS:String = "shadows";
      
      public static const ANTI_ALIAS:String = "antiAlias";
      
      public static const SSAO:String = "ssao";
      
      public static const DEFERRED_LIGHTING:String = "deferredLighting";
      
      private static var storage:SharedObject = SharedObject.getLocal("performance");
      
      private var types:Vector.<String> = new Vector.<String>();
      
      private var d6f38c47:Vector.<Number> = new Vector.<Number>();
      
      private var da3595c:Vector.<Boolean> = new Vector.<Boolean>();
      
      private var stage:Stage;
      
      private var camera:Camera3D;
      
      private var f677ca92:Number;
      
      private var f5537af9:Number;
      
      private var b37d0fd0:Number;
      
      private var e533ca8a:uint;
      
      private var key:String;
      
      private var c5ad79c0:Boolean;
      
      private var mask:int;
      
      private var id:uint;
      
      private var b636c033:uint;
      
      private var timer:int;
      
      private var b25b2d4f:int;
      
      private var e3e7baa2:int;
      
      private var state:int;
      
      private var e5c8b61d:Vector.<Feature>;
      
      private var d14a3cb4:int;
      
      private var index:int;
      
      private var a1f540be:Boolean = false;
      
      private var c24421cf:Boolean;
      
      public function PerformanceController()
      {
         super();
      }
      
      public function addFeature(param1:String, param2:Number, param3:Boolean) : void
      {
         if(this.camera != null)
         {
            throw new Error("Cannot add f227cde6 during analysis.");
         }
         if(param1 != "fog" && param1 != "shadows" && param1 != "directionalLight" && param1 != "shadowMap" && param1 != "softTransparency" && param1 != "antiAlias" && param1 != "ssao" && param1 != "deferredLighting")
         {
            throw new Error("Nonexistent f227cde6.");
         }
         for each(var _loc5_ in this.types)
         {
            if(_loc5_ == param1)
            {
               throw new Error("Feature already exists.");
            }
         }
         var _loc4_:int = int(types.length);
         this.types[_loc4_] = param1;
         this.d6f38c47[_loc4_] = param2;
         this.da3595c[_loc4_] = param3;
      }
      
      public function get activated() : Boolean
      {
         return this.camera != null;
      }
      
      public function clearSharedObject() : void
      {
         storage.clear();
      }
      
      public function start(param1:Stage, param2:Camera3D, param3:Number, param4:Number, param5:Number, param6:Number, param7:uint, param8:String, param9:Boolean = false) : void
      {
         var _loc11_:int = 0;
         if(this.camera != null)
         {
            throw new Error("Analysis already started.");
         }
         var _loc10_:int = int(this.types.length);
         this.stage = param1;
         this.camera = param2;
         this.f677ca92 = param3;
         this.f5537af9 = param4;
         this.b37d0fd0 = param6;
         this.e533ca8a = param7;
         this.key = param8;
         this.c5ad79c0 = param9;
         this.mask = 0;
         _loc11_ = 0;
         while(_loc11_ < _loc10_)
         {
            this.key += "_5_" + this.types[_loc11_];
            if(this.da3595c[_loc11_])
            {
               this.mask |= 1 << _loc11_;
            }
            _loc11_++;
         }
         if(storage.data[this.key] != undefined)
         {
            this.mask = storage.data[this.key];
         }
         else
         {
            this.d1cb09bf();
         }
         this.e5c8b61d = new Vector.<Feature>();
         this.d14a3cb4 = 0;
         _loc11_ = 0;
         while(_loc11_ < _loc10_)
         {
            if((this.mask & 1 << _loc11_) > 0)
            {
               this.e5c8b61d[this.d14a3cb4] = new Feature(this.types[_loc11_],this.d6f38c47[_loc11_]);
               this.d14a3cb4++;
            }
            _loc11_++;
         }
         this.index = this.d14a3cb4 - 1;
         _loc11_ = 0;
         while(_loc11_ < _loc10_)
         {
            if((this.mask & 1 << _loc11_) == 0)
            {
               this.e5c8b61d[this.d14a3cb4] = new Feature(this.types[_loc11_],this.d6f38c47[_loc11_]);
               this.d14a3cb4++;
               this.c43c6358(this.types[_loc11_]);
            }
            _loc11_++;
         }
         this.c24421cf = false;
         if(param5 > 0)
         {
            this.b636c033 = setTimeout(this.f1328e0c,param5 * 1000);
         }
         else
         {
            this.f1328e0c();
         }
         this.c4e8a4db("\nStart",true);
      }
      
      public function stop() : void
      {
         var _loc2_:int = 0;
         if(this.camera == null)
         {
            return;
         }
         this.stage.removeEventListener("enterFrame",this.a5efa35a);
         clearInterval(this.id);
         clearInterval(this.b636c033);
         var _loc1_:int = int(this.types.length);
         while(_loc2_ < _loc1_)
         {
            this.b7291ece(this.types[_loc2_]);
            _loc2_++;
         }
         this.stage = null;
         this.camera = null;
      }
      
      public function get block() : Boolean
      {
         return this.a1f540be;
      }
      
      public function set block(param1:Boolean) : void
      {
         if(this.a1f540be != param1)
         {
            this.a1f540be = param1;
            this.c4e8a4db("\nBlock " + this.a1f540be,false);
            if(this.camera != null && this.c24421cf)
            {
               if(this.a1f540be)
               {
                  this.stage.removeEventListener("enterFrame",this.a5efa35a);
                  clearInterval(this.id);
                  if(this.index < this.d14a3cb4 - 1)
                  {
                     this.c43c6358(Feature(this.e5c8b61d[this.index + 1]).type);
                  }
               }
               else
               {
                  this.stage.addEventListener("enterFrame",this.a5efa35a);
                  this.timer = getTimer();
                  if(this.state == 0)
                  {
                     this.fe96e2a();
                  }
               }
            }
         }
      }
      
      private function f1328e0c() : void
      {
         this.state = 0;
         this.c24421cf = true;
         if(!this.a1f540be)
         {
            this.stage.addEventListener("enterFrame",this.a5efa35a);
            this.timer = getTimer();
            this.fe96e2a();
         }
      }
      
      private function a5efa35a(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:int = getTimer();
         var _loc2_:Number = (_loc3_ - this.timer) / 1000;
         this.timer = _loc3_;
         if(this.state == 1)
         {
            _loc4_ = this.d3a822e9(Feature(this.e5c8b61d[this.index]).type,_loc2_ * this.d6f38c47[this.index]);
            if(_loc4_ >= 1)
            {
               if(this.index + 1 < this.d14a3cb4)
               {
                  this.b5c79b77();
               }
               else
               {
                  this.fe96e2a();
               }
            }
         }
         else if(this.state == -1)
         {
            _loc4_ = this.d3a822e9(Feature(this.e5c8b61d[this.index]).type,-_loc2_ * this.d6f38c47[this.index]);
            if(_loc4_ <= 0)
            {
               this.mask &= ~(1 << this.types.indexOf(Feature(this.e5c8b61d[this.index]).type));
               this.d1cb09bf();
               this.index--;
               this.e4d794a0();
               this.c4e8a4db(null,true);
               this.fe96e2a();
            }
         }
         else
         {
            this.b25b2d4f++;
            if(1 / _loc2_ < this.f677ca92)
            {
               this.e3e7baa2++;
            }
         }
      }
      
      private function b5c79b77() : void
      {
         this.state = 0;
         this.b25b2d4f = 0;
         this.e3e7baa2 = 0;
         this.f3260a9(Feature(this.e5c8b61d[this.index + 1]).type);
         this.id = setTimeout(this.a30d330a,this.b37d0fd0 * 1000);
         this.c4e8a4db("\nTest Next " + (String(this.index + 1)) + " " + this.e5c8b61d[this.index + 1].type,false);
      }
      
      private function a30d330a() : void
      {
         if(this.e3e7baa2 / this.b25b2d4f < this.f5537af9)
         {
            this.index++;
            this.mask |= 1 << this.types.indexOf(Feature(this.e5c8b61d[this.index]).type);
            this.d1cb09bf();
            Feature(this.e5c8b61d[this.index]).attempts = 0;
            this.state = 1;
            this.c4e8a4db("SUCCESS",true);
         }
         else
         {
            this.e4d794a0();
            this.c4e8a4db("FAIL",true);
            if(this.index + 1 < this.d14a3cb4)
            {
               this.b5c79b77();
            }
            else
            {
               this.fe96e2a();
            }
         }
      }
      
      private function fe96e2a() : void
      {
         this.state = 0;
         this.b25b2d4f = 0;
         this.e3e7baa2 = 0;
         this.id = setTimeout(this.c3226ebe,this.b37d0fd0 * 1000);
         this.c4e8a4db("\nTest Current " + this.index + " " + (this.index >= 0 ? this.e5c8b61d[this.index].type : "none"),false);
      }
      
      private function c3226ebe() : void
      {
         if(this.e3e7baa2 / this.b25b2d4f < this.f5537af9)
         {
            this.c4e8a4db("SUCCESS",true);
            if(this.index + 1 < this.d14a3cb4)
            {
               this.b5c79b77();
            }
            else
            {
               this.fe96e2a();
            }
         }
         else if(this.index >= 0)
         {
            this.c4e8a4db("FAIL",false);
            this.state = -1;
         }
         else
         {
            this.c4e8a4db("FAIL",true);
            this.fe96e2a();
         }
      }
      
      private function e4d794a0() : void
      {
         var _loc1_:Feature = Feature(this.e5c8b61d[this.index + 1]);
         this.c43c6358(_loc1_.type);
         _loc1_.attempts++;
         var _loc2_:int = this.index + 1;
         while(_loc2_ < this.d14a3cb4 - 1)
         {
            this.e5c8b61d[_loc2_] = this.e5c8b61d[_loc2_ + 1];
            _loc2_++;
         }
         if(_loc1_.attempts < this.e533ca8a)
         {
            this.e5c8b61d[this.d14a3cb4 - 1] = _loc1_;
         }
         else
         {
            this.d14a3cb4--;
            this.e5c8b61d.length = this.d14a3cb4;
         }
      }
      
      private function d1cb09bf() : void
      {
         storage.data[this.key] = this.mask;
      }
      
      private function c4e8a4db(param1:String = null, param2:Boolean = false) : void
      {
         var _loc4_:int = 0;
         var _loc3_:String = null;
         if(this.c5ad79c0)
         {
            if(param1 != null)
            {
               trace(param1);
            }
            if(param2)
            {
               _loc4_ = 0;
               while(_loc4_ <= this.index)
               {
                  trace(" +",Feature(this.e5c8b61d[_loc4_]).type,Feature(this.e5c8b61d[_loc4_]).attempts);
                  _loc4_++;
               }
               _loc4_ = this.index + 1;
               while(_loc4_ < this.d14a3cb4)
               {
                  trace(" -",Feature(this.e5c8b61d[_loc4_]).type,Feature(this.e5c8b61d[_loc4_]).attempts);
                  _loc4_++;
               }
               _loc3_ = " ";
               _loc4_ = 0;
               while(_loc4_ < this.types.length)
               {
                  _loc3_ += this.types[_loc4_] + ((this.mask & 1 << _loc4_) > 0 ? "+ " : "- ");
                  _loc4_++;
               }
               trace(_loc3_);
            }
         }
      }
      
      private function c43c6358(param1:String) : void
      {
         switch(param1)
         {
            case "fog":
               this.camera.fogStrength = 0;
               break;
            case "directionalLight":
               this.camera.directionalLightStrength = 0;
               break;
            case "shadowMap":
               this.camera.shadowMapStrength = 0;
               break;
            case "softTransparency":
               this.camera.softTransparencyStrength = 0;
               break;
            case "shadows":
               this.camera.shadowsStrength = 0;
               break;
            case "antiAlias":
               this.camera.view.antiAliasEnabled = false;
               break;
            case "ssao":
               this.camera.ssaoStrength = 0;
               break;
            case "deferredLighting":
               this.camera.deferredLightingStrength = 0;
         }
      }
      
      private function b7291ece(param1:String) : void
      {
         switch(param1)
         {
            case "fog":
               this.camera.fogStrength = 1;
               break;
            case "directionalLight":
               this.camera.directionalLightStrength = 1;
               break;
            case "shadowMap":
               this.camera.shadowMapStrength = 1;
               break;
            case "softTransparency":
               this.camera.softTransparencyStrength = 1;
               break;
            case "shadows":
               this.camera.shadowsStrength = 1;
               this.camera.shadowsDistanceMultiplier = 1;
               break;
            case "antiAlias":
               this.camera.view.antiAliasEnabled = true;
               break;
            case "ssao":
               this.camera.ssaoStrength = 1;
               break;
            case "deferredLighting":
               this.camera.deferredLightingStrength = 1;
         }
      }
      
      private function f3260a9(param1:String) : void
      {
         switch(param1)
         {
            case "fog":
               this.camera.fogStrength = 0.01;
               break;
            case "directionalLight":
               this.camera.directionalLightStrength = 0.01;
               break;
            case "shadowMap":
               this.camera.shadowMapStrength = 0.01;
               break;
            case "softTransparency":
               this.camera.softTransparencyStrength = 0.01;
               break;
            case "shadows":
               this.camera.shadowsStrength = 0.01;
               break;
            case "antiAlias":
               this.camera.view.antiAliasEnabled = true;
               break;
            case "ssao":
               this.camera.ssaoStrength = 0.01;
               break;
            case "deferredLighting":
               this.camera.deferredLightingStrength = 0.01;
         }
      }
      
      private function d3a822e9(param1:String, param2:Number) : Number
      {
         var _loc3_:Number = 0;
         switch(param1)
         {
            case "fog":
               this.camera.fogStrength += param2;
               if(this.camera.fogStrength > 1)
               {
                  this.camera.fogStrength = 1;
               }
               if(this.camera.fogStrength < 0)
               {
                  this.camera.fogStrength = 0;
               }
               _loc3_ = this.camera.fogStrength;
               break;
            case "directionalLight":
               this.camera.directionalLightStrength += param2;
               if(this.camera.directionalLightStrength > 1)
               {
                  this.camera.directionalLightStrength = 1;
               }
               if(this.camera.directionalLightStrength < 0)
               {
                  this.camera.directionalLightStrength = 0;
               }
               _loc3_ = this.camera.directionalLightStrength;
               break;
            case "shadowMap":
               this.camera.shadowMapStrength += param2;
               if(this.camera.shadowMapStrength > 1)
               {
                  this.camera.shadowMapStrength = 1;
               }
               if(this.camera.shadowMapStrength < 0)
               {
                  this.camera.shadowMapStrength = 0;
               }
               _loc3_ = this.camera.shadowMapStrength;
               break;
            case "softTransparency":
               this.camera.softTransparencyStrength += param2;
               if(this.camera.softTransparencyStrength > 1)
               {
                  this.camera.softTransparencyStrength = 1;
               }
               if(this.camera.softTransparencyStrength < 0)
               {
                  this.camera.softTransparencyStrength = 0;
               }
               _loc3_ = this.camera.softTransparencyStrength;
               break;
            case "shadows":
               this.camera.shadowsStrength += param2;
               if(this.camera.shadowsStrength > 1)
               {
                  this.camera.shadowsStrength = 1;
               }
               if(this.camera.shadowsStrength < 0)
               {
                  this.camera.shadowsStrength = 0;
               }
               _loc3_ = this.camera.shadowsStrength;
               break;
            case "antiAlias":
               this.camera.view.antiAliasEnabled = param2 > 0;
               _loc3_ = this.camera.view.antiAliasEnabled ? 1 : 0;
               break;
            case "ssao":
               this.camera.ssaoStrength += param2;
               if(this.camera.ssaoStrength > 1)
               {
                  this.camera.ssaoStrength = 1;
               }
               if(this.camera.ssaoStrength < 0)
               {
                  this.camera.ssaoStrength = 0;
               }
               _loc3_ = this.camera.ssaoStrength;
               break;
            case "deferredLighting":
               this.camera.deferredLightingStrength += param2;
               if(this.camera.deferredLightingStrength > 1)
               {
                  this.camera.deferredLightingStrength = 1;
               }
               if(this.camera.deferredLightingStrength < 0)
               {
                  this.camera.deferredLightingStrength = 0;
               }
               _loc3_ = this.camera.deferredLightingStrength;
         }
         return _loc3_;
      }
   }
}

class Feature
{
   
   public var type:String;
   
   public var speed:Number;
   
   public var attempts:int = 0;
   
   public function Feature(param1:String, param2:Number)
   {
      super();
      this.type = param1;
      this.speed = param2;
   }
}
