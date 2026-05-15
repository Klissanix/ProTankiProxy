package alternativa.engine3d.core
{
   import alternativa.engine3d.alternativa3d;
   import flash.display.Sprite;
   
   use namespace alternativa3d;
   
   public class Debug
   {
      
      public static const BOUNDS:int = 8;
      
      public static const EDGES:int = 16;
      
      public static const NODES:int = 128;
      
      public static const LIGHTS:int = 256;
      
      public static const BONES:int = 512;
      
      private static const boundVertexList:Vertex = Vertex.createList(8);
      
      private static const c5e883db:Vertex = Vertex.createList(4);
      
      public function Debug()
      {
         super();
      }
      
      alternativa3d static function drawEdges(param1:Camera3D, param2:Face, param3:int) : void
      {
         var _loc10_:Wrapper = null;
         var _loc6_:Vertex = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc12_:Number = param1.viewSizeX;
         var _loc11_:Number = param1.viewSizeY;
         var _loc4_:Sprite = param1.view.canvas;
         _loc4_.graphics.lineStyle(0,param3);
         var _loc5_:Face = param2;
         while(_loc5_ != null)
         {
            _loc10_ = _loc5_.wrapper;
            _loc6_ = _loc10_.vertex;
            _loc7_ = 1 / _loc6_.cameraZ;
            _loc8_ = _loc6_.cameraX * _loc12_ * _loc7_;
            _loc9_ = _loc6_.cameraY * _loc11_ * _loc7_;
            _loc4_.graphics.moveTo(_loc8_,_loc9_);
            _loc10_ = _loc10_.next;
            while(_loc10_ != null)
            {
               _loc6_ = _loc10_.vertex;
               _loc7_ = 1 / _loc6_.cameraZ;
               _loc4_.graphics.lineTo(_loc6_.cameraX * _loc12_ * _loc7_,_loc6_.cameraY * _loc11_ * _loc7_);
               _loc10_ = _loc10_.next;
            }
            _loc4_.graphics.lineTo(_loc8_,_loc9_);
            _loc5_ = _loc5_.processNext;
         }
      }
      
      alternativa3d static function drawBounds(param1:Camera3D, param2:Object3D, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:int = -1, param10:Number = 1) : void
      {
         var _loc15_:Vertex = null;
         var _loc21_:Number = NaN;
         var _loc11_:Vertex = boundVertexList;
         _loc11_.x = param3;
         _loc11_.y = param4;
         _loc11_.z = param5;
         var _loc12_:Vertex = _loc11_.next;
         _loc12_.x = param6;
         _loc12_.y = param4;
         _loc12_.z = param5;
         var _loc14_:Vertex = _loc12_.next;
         _loc14_.x = param3;
         _loc14_.y = param7;
         _loc14_.z = param5;
         var _loc16_:Vertex = _loc14_.next;
         _loc16_.x = param6;
         _loc16_.y = param7;
         _loc16_.z = param5;
         var _loc17_:Vertex = _loc16_.next;
         _loc17_.x = param3;
         _loc17_.y = param4;
         _loc17_.z = param8;
         var _loc18_:Vertex = _loc17_.next;
         _loc18_.x = param6;
         _loc18_.y = param4;
         _loc18_.z = param8;
         var _loc19_:Vertex = _loc18_.next;
         _loc19_.x = param3;
         _loc19_.y = param7;
         _loc19_.z = param8;
         var _loc20_:Vertex = _loc19_.next;
         _loc20_.x = param6;
         _loc20_.y = param7;
         _loc20_.z = param8;
         _loc15_ = _loc11_;
         while(_loc15_ != null)
         {
            _loc15_.cameraX = param2.ma * _loc15_.x + param2.mb * _loc15_.y + param2.mc * _loc15_.z + param2.md;
            _loc15_.cameraY = param2.me * _loc15_.x + param2.mf * _loc15_.y + param2.mg * _loc15_.z + param2.mh;
            _loc15_.cameraZ = param2.mi * _loc15_.x + param2.mj * _loc15_.y + param2.mk * _loc15_.z + param2.ml;
            if(_loc15_.cameraZ <= 0)
            {
               return;
            }
            _loc15_ = _loc15_.next;
         }
         var _loc23_:Number = param1.viewSizeX;
         var _loc22_:Number = param1.viewSizeY;
         _loc15_ = _loc11_;
         while(_loc15_ != null)
         {
            _loc21_ = 1 / _loc15_.cameraZ;
            _loc15_.cameraX = _loc15_.cameraX * _loc23_ * _loc21_;
            _loc15_.cameraY = _loc15_.cameraY * _loc22_ * _loc21_;
            _loc15_ = _loc15_.next;
         }
         var _loc13_:Sprite = param1.view.canvas;
         _loc13_.graphics.lineStyle(0,param9 < 0 ? (param2.culling > 0 ? 16776960 : 65280) : param9,param10);
         _loc13_.graphics.moveTo(_loc11_.cameraX,_loc11_.cameraY);
         _loc13_.graphics.lineTo(_loc12_.cameraX,_loc12_.cameraY);
         _loc13_.graphics.lineTo(_loc16_.cameraX,_loc16_.cameraY);
         _loc13_.graphics.lineTo(_loc14_.cameraX,_loc14_.cameraY);
         _loc13_.graphics.lineTo(_loc11_.cameraX,_loc11_.cameraY);
         _loc13_.graphics.moveTo(_loc17_.cameraX,_loc17_.cameraY);
         _loc13_.graphics.lineTo(_loc18_.cameraX,_loc18_.cameraY);
         _loc13_.graphics.lineTo(_loc20_.cameraX,_loc20_.cameraY);
         _loc13_.graphics.lineTo(_loc19_.cameraX,_loc19_.cameraY);
         _loc13_.graphics.lineTo(_loc17_.cameraX,_loc17_.cameraY);
         _loc13_.graphics.moveTo(_loc11_.cameraX,_loc11_.cameraY);
         _loc13_.graphics.lineTo(_loc17_.cameraX,_loc17_.cameraY);
         _loc13_.graphics.moveTo(_loc12_.cameraX,_loc12_.cameraY);
         _loc13_.graphics.lineTo(_loc18_.cameraX,_loc18_.cameraY);
         _loc13_.graphics.moveTo(_loc16_.cameraX,_loc16_.cameraY);
         _loc13_.graphics.lineTo(_loc20_.cameraX,_loc20_.cameraY);
         _loc13_.graphics.moveTo(_loc14_.cameraX,_loc14_.cameraY);
         _loc13_.graphics.lineTo(_loc19_.cameraX,_loc19_.cameraY);
      }
      
      alternativa3d static function drawKDNode(param1:Camera3D, param2:Object3D, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc16_:Vertex = null;
         var _loc18_:Number = NaN;
         var _loc12_:Vertex = c5e883db;
         var _loc13_:Vertex = _loc12_.next;
         var _loc15_:Vertex = _loc13_.next;
         var _loc17_:Vertex = _loc15_.next;
         if(param3 == 0)
         {
            _loc12_.x = param4;
            _loc12_.y = param6;
            _loc12_.z = param10;
            _loc13_.x = param4;
            _loc13_.y = param9;
            _loc13_.z = param10;
            _loc15_.x = param4;
            _loc15_.y = param9;
            _loc15_.z = param7;
            _loc17_.x = param4;
            _loc17_.y = param6;
            _loc17_.z = param7;
         }
         else if(param3 == 1)
         {
            _loc12_.x = param8;
            _loc12_.y = param4;
            _loc12_.z = param10;
            _loc13_.x = param5;
            _loc13_.y = param4;
            _loc13_.z = param10;
            _loc15_.x = param5;
            _loc15_.y = param4;
            _loc15_.z = param7;
            _loc17_.x = param8;
            _loc17_.y = param4;
            _loc17_.z = param7;
         }
         else
         {
            _loc12_.x = param5;
            _loc12_.y = param6;
            _loc12_.z = param4;
            _loc13_.x = param8;
            _loc13_.y = param6;
            _loc13_.z = param4;
            _loc15_.x = param8;
            _loc15_.y = param9;
            _loc15_.z = param4;
            _loc17_.x = param5;
            _loc17_.y = param9;
            _loc17_.z = param4;
         }
         _loc16_ = _loc12_;
         while(_loc16_ != null)
         {
            _loc16_.cameraX = param2.ma * _loc16_.x + param2.mb * _loc16_.y + param2.mc * _loc16_.z + param2.md;
            _loc16_.cameraY = param2.me * _loc16_.x + param2.mf * _loc16_.y + param2.mg * _loc16_.z + param2.mh;
            _loc16_.cameraZ = param2.mi * _loc16_.x + param2.mj * _loc16_.y + param2.mk * _loc16_.z + param2.ml;
            if(_loc16_.cameraZ <= 0)
            {
               return;
            }
            _loc16_ = _loc16_.next;
         }
         var _loc20_:Number = param1.viewSizeX;
         var _loc19_:Number = param1.viewSizeY;
         _loc16_ = _loc12_;
         while(_loc16_ != null)
         {
            _loc18_ = 1 / _loc16_.cameraZ;
            _loc16_.cameraX = _loc16_.cameraX * _loc20_ * _loc18_;
            _loc16_.cameraY = _loc16_.cameraY * _loc19_ * _loc18_;
            _loc16_ = _loc16_.next;
         }
         var _loc14_:Sprite = param1.view.canvas;
         _loc14_.graphics.lineStyle(0,param3 == 0 ? 16711680 : (param3 == 1 ? 65280 : 255),param11);
         _loc14_.graphics.moveTo(_loc12_.cameraX,_loc12_.cameraY);
         _loc14_.graphics.lineTo(_loc13_.cameraX,_loc13_.cameraY);
         _loc14_.graphics.lineTo(_loc15_.cameraX,_loc15_.cameraY);
         _loc14_.graphics.lineTo(_loc17_.cameraX,_loc17_.cameraY);
         _loc14_.graphics.lineTo(_loc12_.cameraX,_loc12_.cameraY);
      }
      
      alternativa3d static function drawBone(param1:Camera3D, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int) : void
      {
         var _loc13_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc10_:Sprite = null;
         var _loc15_:Number = param4 - param2;
         var _loc8_:Number = param5 - param3;
         var _loc12_:Number = Math.sqrt(_loc15_ * _loc15_ + _loc8_ * _loc8_);
         if(_loc12_ > 0.001)
         {
            _loc15_ /= _loc12_;
            _loc8_ /= _loc12_;
            _loc13_ = _loc8_ * param6;
            _loc9_ = -_loc15_ * param6;
            _loc11_ = -_loc8_ * param6;
            _loc14_ = _loc15_ * param6;
            if(_loc12_ > param6 * 2)
            {
               _loc12_ = param6;
            }
            else
            {
               _loc12_ /= 2;
            }
            _loc10_ = param1.view.canvas;
            _loc10_.graphics.lineStyle(1,param7);
            _loc10_.graphics.beginFill(param7,0.6);
            _loc10_.graphics.moveTo(param2,param3);
            _loc10_.graphics.lineTo(param2 + _loc15_ * _loc12_ + _loc13_,param3 + _loc8_ * _loc12_ + _loc9_);
            _loc10_.graphics.lineTo(param4,param5);
            _loc10_.graphics.lineTo(param2 + _loc15_ * _loc12_ + _loc11_,param3 + _loc8_ * _loc12_ + _loc14_);
            _loc10_.graphics.lineTo(param2,param3);
            _loc10_.graphics.endFill();
         }
      }
   }
}

