package alternativa.engine3d.core
{
   import alternativa.engine3d.alternativa3d;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   
   use namespace alternativa3d;
   
   public class Canvas extends Sprite
   {
      
      alternativa3d static var collectorLength:int = 0;
      
      alternativa3d static const defaultColorTransform:ColorTransform = new ColorTransform();
      
      alternativa3d static const collector:Vector.<Canvas> = new Vector.<Canvas>();
      
      alternativa3d var gfx:Graphics = graphics;
      
      alternativa3d var modifiedGraphics:Boolean;
      
      alternativa3d var modifiedAlpha:Boolean;
      
      alternativa3d var modifiedBlendMode:Boolean;
      
      alternativa3d var modifiedColorTransform:Boolean;
      
      alternativa3d var modifiedFilters:Boolean;
      
      alternativa3d var _numChildren:int = 0;
      
      alternativa3d var numDraws:int = 0;
      
      alternativa3d var object:Object3D;
      
      public function Canvas()
      {
         super();
         mouseEnabled = false;
         mouseChildren = false;
      }
      
      alternativa3d function getChildCanvas(param1:Boolean, param2:Boolean, param3:Object3D = null, param4:Number = 1, param5:String = "normal", param6:ColorTransform = null, param7:Array = null) : Canvas
      {
         var _loc8_:Canvas = null;
         var _loc9_:DisplayObject = null;
         while(true)
         {
            _loc9_ = getChildAt(this._numChildren - 1 - this.numDraws);
            if(!(this._numChildren > this.numDraws && !(_loc9_ is Canvas)))
            {
               break;
            }
            removeChild(_loc9_);
            this._numChildren--;
         }
         if(this._numChildren > this.numDraws++)
         {
            _loc8_ = _loc9_ as Canvas;
            if(_loc8_.modifiedGraphics)
            {
               _loc8_.gfx.clear();
            }
            if(_loc8_._numChildren > 0 && !param2)
            {
               _loc8_.remChildren(0);
            }
         }
         else
         {
            _loc8_ = collectorLength > 0 ? collector[--collectorLength] : new Canvas();
            addChildAt(_loc8_,0);
            this._numChildren++;
         }
         _loc8_.object = param3;
         _loc8_.modifiedGraphics = param1;
         if(param4 != 1)
         {
            _loc8_.alpha = param4;
            _loc8_.modifiedAlpha = true;
         }
         else if(_loc8_.modifiedAlpha)
         {
            _loc8_.alpha = 1;
            _loc8_.modifiedAlpha = false;
         }
         if(param5 != "normal")
         {
            _loc8_.blendMode = param5;
            _loc8_.modifiedBlendMode = true;
         }
         else if(_loc8_.modifiedBlendMode)
         {
            _loc8_.blendMode = "normal";
            _loc8_.modifiedBlendMode = false;
         }
         if(param6 != null)
         {
            param6.alphaMultiplier = param4;
            _loc8_.transform.colorTransform = param6;
            _loc8_.modifiedColorTransform = true;
         }
         else if(_loc8_.modifiedColorTransform)
         {
            defaultColorTransform.alphaMultiplier = param4;
            _loc8_.transform.colorTransform = defaultColorTransform;
            _loc8_.modifiedColorTransform = false;
         }
         if(param7 != null)
         {
            _loc8_.filters = param7;
            _loc8_.modifiedFilters = true;
         }
         else if(_loc8_.modifiedFilters)
         {
            _loc8_.filters = null;
            _loc8_.modifiedFilters = false;
         }
         return _loc8_;
      }
      
      alternativa3d function remChildren(param1:int) : void
      {
         var _loc2_:Canvas = null;
         while(this._numChildren > param1)
         {
            _loc2_ = removeChildAt(0) as Canvas;
            if(_loc2_ != null)
            {
               _loc2_.object = null;
               if(_loc2_.modifiedGraphics)
               {
                  _loc2_.gfx.clear();
               }
               if(_loc2_._numChildren > 0)
               {
                  _loc2_.remChildren(0);
               }
               collector[collectorLength++] = _loc2_;
            }
            this._numChildren--;
         }
      }
   }
}

