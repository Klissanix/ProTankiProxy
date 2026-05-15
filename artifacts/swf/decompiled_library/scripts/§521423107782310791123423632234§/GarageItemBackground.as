package §521423107782310791123423632234§
{
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.geom.Matrix;
   
   public class GarageItemBackground extends Shape
   {
      
      public static const OFF_NORMAL:int = 1;
      
      public static const OFF_NORMAL_SELECTED:int = 2;
      
      public static const SHIELD_NORMAL:int = 3;
      
      public static const SHIELD_NORMAL_SELECTED:int = 4;
      
      public static const SHIELD_INSTALLED:int = 5;
      
      public static const SHIELD_INSTALLED_SELECTED:int = 6;
      
      public static const GUN_NORMAL:int = 7;
      
      public static const GUN_NORMAL_SELECTED:int = 8;
      
      public static const GUN_INSTALLED:int = 9;
      
      public static const GUN_INSTALLED_SELECTED:int = 10;
      
      public static const ENGINE_NORMAL:int = 11;
      
      public static const ENGINE_NORMAL_SELECTED:int = 12;
      
      public static const ENGINE_INSTALLED:int = 13;
      
      public static const ENGINE_INSTALLED_SELECTED:int = 14;
      
      public static const COLOR_NORMAL:int = 15;
      
      public static const COLOR_NORMAL_SELECTED:int = 16;
      
      public static const COLOR_INSTALLED:int = 17;
      
      public static const COLOR_INSTALLED_SELECTED:int = 18;
      
      public static const PLUGIN_NORMAL:int = 19;
      
      public static const PLUGIN_NORMAL_SELECTED:int = 20;
      
      public static const PLUGIN_INSTALLED:int = 21;
      
      public static const PLUGIN_INSTALLED_SELECTED:int = 22;
      
      private static var matrix:Matrix;
      
      private static const §class for§:Array = [1,1,1];
      
      private static const §else switch extends§:Array = [0,20,255];
      
      private static const §5214233375233388123423632234§:Array = [0,0,0];
      
      private var type:int;
      
      private var §package set include§:Boolean;
      
      public function GarageItemBackground(param1:int = 1)
      {
         super();
         if(matrix == null)
         {
            matrix = new Matrix();
            matrix.createGradientBox(190,160,0,5,-15);
         }
         this.type = param1;
         this.draw();
      }
      
      public static function idByName(param1:String) : int
      {
         var _loc2_:Array = [];
         _loc2_["OFF_NORMAL"] = 1;
         _loc2_["OFF_NORMAL_SELECTED"] = 2;
         _loc2_["OFF_INSTALLED"] = 1;
         _loc2_["OFF_INSTALLED_SELECTED"] = 2;
         _loc2_["ENGINE_NORMAL"] = 11;
         _loc2_["ENGINE_NORMAL_SELECTED"] = 12;
         _loc2_["ENGINE_INSTALLED"] = 13;
         _loc2_["ENGINE_INSTALLED_SELECTED"] = 14;
         _loc2_["GUN_NORMAL"] = 7;
         _loc2_["GUN_NORMAL_SELECTED"] = 8;
         _loc2_["GUN_INSTALLED"] = 9;
         _loc2_["GUN_INSTALLED_SELECTED"] = 10;
         _loc2_["SHIELD_NORMAL"] = 3;
         _loc2_["SHIELD_NORMAL_SELECTED"] = 4;
         _loc2_["SHIELD_INSTALLED"] = 5;
         _loc2_["SHIELD_INSTALLED_SELECTED"] = 6;
         _loc2_["COLOR_NORMAL"] = 15;
         _loc2_["COLOR_NORMAL_SELECTED"] = 16;
         _loc2_["COLOR_INSTALLED"] = 17;
         _loc2_["COLOR_INSTALLED_SELECTED"] = 18;
         _loc2_["PLUGIN_NORMAL"] = 19;
         _loc2_["PLUGIN_NORMAL_SELECTED"] = 20;
         _loc2_["PLUGIN_INSTALLED"] = 21;
         _loc2_["PLUGIN_INSTALLED_SELECTED"] = 22;
         return _loc2_[param1];
      }
      
      public function set mounted(param1:Boolean) : void
      {
         this.§package set include§ = param1;
         this.draw();
      }
      
      private function draw() : void
      {
         var _loc8_:* = 0;
         var _loc6_:Graphics = graphics;
         var _loc5_:int = 2;
         switch(this.type)
         {
            case 1:
               _loc8_ = 7500402;
               §5214233375233388123423632234§[0] = 7631988;
               §5214233375233388123423632234§[2] = 3355443;
               break;
            case 2:
               _loc8_ = 11513775;
               _loc5_ = 4;
               §5214233375233388123423632234§[0] = 10724259;
               §5214233375233388123423632234§[2] = 4408131;
               break;
            case 7:
            case 3:
            case 15:
            case 19:
            case 11:
               _loc8_ = 2981156;
               §5214233375233388123423632234§[0] = 421137;
               §5214233375233388123423632234§[2] = 796687;
               break;
            case 8:
            case 4:
            case 16:
            case 20:
            case 12:
               _loc8_ = 2336795;
               _loc5_ = 4;
               §5214233375233388123423632234§[0] = 367631;
               §5214233375233388123423632234§[2] = 994320;
               break;
            case 9:
            case 5:
            case 17:
            case 21:
            case 13:
               _loc8_ = 8693863;
               §5214233375233388123423632234§[0] = 3628065;
               §5214233375233388123423632234§[2] = 2640662;
               break;
            case 10:
            case 6:
            case 18:
            case 22:
            case 14:
               _loc8_ = 9155185;
               _loc5_ = 4;
               §5214233375233388123423632234§[0] = 5931839;
               §5214233375233388123423632234§[2] = 4154919;
         }
         §5214233375233388123423632234§[1] = §5214233375233388123423632234§[0];
         _loc6_.lineStyle(_loc5_,_loc8_,1);
         _loc6_.beginGradientFill("radial",§5214233375233388123423632234§,§class for§,§else switch extends§,matrix);
         var _loc3_:int = _loc5_ / 2;
         _loc6_.drawRoundRect(_loc3_,_loc3_,200 - _loc5_,130 - _loc5_,5,5);
         _loc6_.endFill();
         if(!this.§package set include§)
         {
            return;
         }
         _loc6_.beginFill(_loc8_);
         _loc6_.lineStyle(0,0,0);
         var _loc7_:int = 34;
         var _loc4_:int = 46;
         var _loc11_:int = (_loc4_ - _loc7_) / 2;
         var _loc2_:int = 77;
         var _loc1_:int = 123;
         _loc6_.moveTo(_loc2_ + _loc11_,_loc1_ + 0);
         _loc6_.lineTo(_loc2_ + _loc11_ + _loc7_,_loc1_ + 0);
         _loc6_.lineTo(_loc2_ + _loc4_,_loc1_ + 5);
         _loc6_.lineTo(_loc2_ + 0,_loc1_ + 5);
         _loc6_.lineTo(_loc2_ + _loc11_,_loc1_ + 0);
         var _loc10_:int = 44;
         var _loc9_:int = 54;
         _loc11_ = (_loc9_ - _loc10_) / 2;
         _loc2_ = 2;
         _loc1_ = 38;
         _loc6_.moveTo(_loc2_ + 5,_loc1_ + _loc11_);
         _loc6_.lineTo(_loc2_ + 5,_loc1_ + _loc11_ + _loc10_);
         _loc6_.lineTo(_loc2_ + 0,_loc1_ + _loc9_);
         _loc6_.lineTo(_loc2_ + 0,_loc1_ + 0);
         _loc6_.lineTo(_loc2_ + 5,_loc1_ + _loc11_);
         _loc2_ = 193;
         _loc6_.moveTo(_loc2_ + 0,_loc1_ + _loc11_);
         _loc6_.lineTo(_loc2_ + 0,_loc1_ + _loc11_ + _loc10_);
         _loc6_.lineTo(_loc2_ + 5,_loc1_ + _loc9_);
         _loc6_.lineTo(_loc2_ + 5,_loc1_ + 0);
         _loc6_.lineTo(_loc2_ + 0,_loc1_ + _loc11_);
         _loc11_ = (_loc4_ - _loc7_) / 2;
         _loc2_ = 77;
         _loc1_ = 2;
         _loc6_.moveTo(_loc2_ + 0,_loc1_ + 0);
         _loc6_.lineTo(_loc2_ + _loc4_,_loc1_ + 0);
         _loc6_.lineTo(_loc2_ + _loc11_ + _loc7_,_loc1_ + 5);
         _loc6_.lineTo(_loc2_ + _loc11_,_loc1_ + 5);
         _loc6_.lineTo(_loc2_ + 0,_loc1_ + 0);
         _loc6_.endFill();
      }
   }
}

