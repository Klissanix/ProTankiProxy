package §finally catch with§
{
   import §5214231817231830123423632234§.§5214231737231750123423632234§;
   import §5214233087233100123423632234§.§if finally catch§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.math.Vector3;
   import alternativa.tanks.engine3d.TextureAnimation;
   import alternativa.tanks.engine3d.UVFrame;
   import alternativa.utils.TextureMaterialRegistry;
   import flash.display.BitmapData;
   import flash.filters.BitmapFilter;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public class §true use package§
   {
      
      private static var §with package finally§:Dictionary = new Dictionary(true);
      
      public function §true use package§()
      {
         super();
      }
      
      public static function §5214237836237849123423632234§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Number, param7:Number, param8:Number) : Vector.<UVFrame>
      {
         var _loc19_:int = 0;
         var _loc16_:int = 0;
         var _loc14_:int = 0;
         var _loc18_:int = 0;
         var _loc15_:int = 0;
         var _loc20_:int = 0;
         var _loc9_:int = Math.min(param3,param1);
         var _loc21_:int = param1 / _loc9_;
         var _loc10_:int = Math.min(param4,param2);
         var _loc12_:int = param2 / _loc10_;
         var _loc17_:int = _loc21_ * _loc12_;
         if(param5 > 0 && _loc17_ > param5)
         {
            _loc17_ = param5;
         }
         var _loc13_:Vector.<UVFrame> = new Vector.<UVFrame>(_loc17_,true);
         var _loc11_:int = 0;
         while(_loc19_ < _loc12_)
         {
            _loc16_ = _loc19_ * _loc10_;
            _loc14_ = _loc16_ + _loc10_;
            _loc18_ = 0;
            while(_loc18_ < _loc21_)
            {
               _loc15_ = _loc18_ * _loc9_;
               _loc20_ = _loc15_ + _loc9_;
               _loc13_[_loc11_++] = new UVFrame(_loc15_ / param1,param8 + _loc16_ / param2 * param7,_loc20_ / param1 * param6,param8 + _loc14_ / param2 * param7);
               if(_loc11_ == _loc17_)
               {
                  return _loc13_;
               }
               _loc18_++;
            }
            _loc19_++;
         }
         return _loc13_;
      }
      
      public static function §5214231046231059123423632234§(param1:TextureMaterialRegistry, param2:BitmapData, param3:int, param4:int, param5:int = 0, param6:Boolean = true, param7:Boolean = true) : TextureAnimation
      {
         var _loc8_:TextureMaterial = param1.getMaterial(param2,param6,param7);
         var _loc9_:Vector.<UVFrame> = §5214234220234233123423632234§(param2,param3,param4,param5);
         return new TextureAnimation(_loc8_,_loc9_);
      }
      
      public static function §override const get§(param1:TextureMaterialRegistry, param2:§5214231737231750123423632234§) : TextureAnimation
      {
         var _loc3_:TextureMaterial = param1.getMaterialFromAtf(param2.data);
         var _loc4_:Vector.<UVFrame> = §5214232849232862123423632234§(param2.§const var case§,param2.§5214231887231900123423632234§,param2.§5214233118233131123423632234§,param2.§5214231432231445123423632234§,param2.§get set var§);
         return new TextureAnimation(_loc3_,_loc4_,param2.§in for in§);
      }
      
      public static function §5214238431238444123423632234§(param1:Object3D, param2:Vector3, param3:Vector3) : void
      {
         param1.x = param2.x;
         param1.y = param2.y;
         param1.z = param2.z;
         param1.rotationX = param3.x;
         param1.rotationY = param3.y;
         param1.rotationZ = param3.z;
      }
      
      public static function §in for native§(param1:TextureMaterialRegistry, param2:§if finally catch§, param3:Boolean = true) : TextureAnimation
      {
         var _loc4_:TextureAnimation = §5214231046231059123423632234§(param1,param2.data,param2.§5214233118233131123423632234§,param2.§5214231432231445123423632234§,param2.§get set var§,true,param3);
         _loc4_.fps = param2.§in for in§;
         return _loc4_;
      }
      
      private static function §5214232849232862123423632234§(param1:int, param2:int, param3:int, param4:int, param5:int = 0) : Vector.<UVFrame>
      {
         var _loc16_:int = 0;
         var _loc13_:int = 0;
         var _loc11_:int = 0;
         var _loc15_:int = 0;
         var _loc12_:int = 0;
         var _loc17_:int = 0;
         var _loc6_:int = Math.min(param3,param1);
         var _loc18_:int = param1 / _loc6_;
         var _loc7_:int = Math.min(param4,param2);
         var _loc9_:int = param2 / _loc7_;
         var _loc14_:int = _loc18_ * _loc9_;
         if(param5 > 0 && _loc14_ > param5)
         {
            _loc14_ = param5;
         }
         var _loc10_:Vector.<UVFrame> = new Vector.<UVFrame>(_loc14_);
         var _loc8_:int = 0;
         while(_loc16_ < _loc9_)
         {
            _loc13_ = _loc16_ * _loc7_;
            _loc11_ = _loc13_ + _loc7_;
            _loc15_ = 0;
            while(_loc15_ < _loc18_)
            {
               _loc12_ = _loc15_ * _loc6_;
               _loc17_ = _loc12_ + _loc6_;
               _loc10_[_loc8_++] = new UVFrame(_loc12_ / param1,_loc13_ / param2,_loc17_ / param1,_loc11_ / param2);
               if(_loc8_ == _loc14_)
               {
                  return _loc10_;
               }
               _loc15_++;
            }
            _loc16_++;
         }
         return _loc10_;
      }
      
      public static function §5214234220234233123423632234§(param1:BitmapData, param2:int, param3:int, param4:int = 0) : Vector.<UVFrame>
      {
         var _loc17_:int = 0;
         var _loc14_:int = 0;
         var _loc11_:int = 0;
         var _loc16_:int = 0;
         var _loc13_:int = 0;
         var _loc18_:int = 0;
         var _loc10_:int = param1.width;
         var _loc5_:int = Math.min(param2,_loc10_);
         var _loc19_:int = _loc10_ / _loc5_;
         var _loc12_:int = param1.height;
         var _loc6_:int = Math.min(param3,_loc12_);
         var _loc8_:int = _loc12_ / _loc6_;
         var _loc15_:int = _loc19_ * _loc8_;
         if(param4 > 0 && _loc15_ > param4)
         {
            _loc15_ = param4;
         }
         var _loc9_:Vector.<UVFrame> = new Vector.<UVFrame>(_loc15_,true);
         var _loc7_:int = 0;
         while(_loc17_ < _loc8_)
         {
            _loc14_ = _loc17_ * _loc6_;
            _loc11_ = _loc14_ + _loc6_;
            _loc16_ = 0;
            while(_loc16_ < _loc19_)
            {
               _loc13_ = _loc16_ * _loc5_;
               _loc18_ = _loc13_ + _loc5_;
               _loc9_[_loc7_++] = new UVFrame(_loc13_ / _loc10_,_loc14_ / _loc12_,_loc18_ / _loc10_,_loc11_ / _loc12_);
               if(_loc7_ == _loc15_)
               {
                  return _loc9_;
               }
               _loc16_++;
            }
            _loc17_++;
         }
         return _loc9_;
      }
      
      public static function §5214235316235329123423632234§(param1:BitmapData, param2:BitmapFilter) : BitmapData
      {
         var _loc4_:Object = null;
         for(var _loc5_ in §with package finally§)
         {
            _loc4_ = §with package finally§[_loc5_];
            if(_loc4_.s == param1 && _loc4_.f == param2)
            {
               return _loc5_;
            }
         }
         var _loc3_:BitmapData = param1.clone();
         _loc3_.applyFilter(param1,param1.rect,new Point(),param2);
         §with package finally§[_loc3_] = {
            "s":param1,
            "f":param2
         };
         return _loc3_;
      }
      
      public static function §5214232982232995123423632234§(param1:TextureMaterialRegistry, param2:§if finally catch§, param3:BitmapFilter, param4:Boolean = true) : TextureAnimation
      {
         var _loc6_:BitmapData = §5214235316235329123423632234§(param2.data,param3);
         var _loc5_:TextureAnimation = §5214231046231059123423632234§(param1,_loc6_,param2.§5214233118233131123423632234§,param2.§5214231432231445123423632234§,param2.§get set var§,true,param4);
         _loc5_.fps = param2.§in for in§;
         return _loc5_;
      }
   }
}

