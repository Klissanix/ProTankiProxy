package alternativa.tanks.gui
{
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class ModTable extends Sprite
   {
      
      private var §with set package§:int;
      
      public var §521423128652312878123423632234§:int;
      
      public var §521423134292313442123423632234§:Vector.<ModInfoRow>;
      
      public const §52142370023713123423632234§:int = 0;
      
      private var §class var use§:Shape;
      
      private var §case var extends§:int = -1;
      
      private var _width:int;
      
      public function ModTable(param1:int)
      {
         var _loc3_:int = 0;
         var _loc2_:ModInfoRow = null;
         this.§521423134292313442123423632234§ = new Vector.<ModInfoRow>();
         super();
         this._width = param1;
         this.§class var use§ = new Shape();
         addChild(this.§class var use§);
         this.§class var use§.x = 3;
         _loc3_ = 0;
         while(_loc3_ < 4)
         {
            _loc2_ = new ModInfoRow(_loc3_,this._width);
            addChild(_loc2_);
            _loc2_.y = (17 + 0) * _loc3_;
            this.§521423134292313442123423632234§.push(_loc2_);
            _loc3_++;
         }
         this.b1fe5001(this._width);
      }
      
      public function correctNonintegralValues() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§5214231141231154123423632234§ = null;
         var _loc6_:int = 0;
         var _loc7_:Array = [];
         var _loc4_:ModInfoRow = this.§521423134292313442123423632234§[0];
         var _loc5_:int = int(_loc4_.§5214234426234439123423632234§.length);
         var _loc3_:int = 0;
         while(_loc3_ < 4)
         {
            _loc4_ = this.§521423134292313442123423632234§[_loc3_] as ModInfoRow;
            _loc1_ = 0;
            while(_loc1_ < _loc5_)
            {
               _loc2_ = _loc4_.§5214234426234439123423632234§[_loc1_] as §5214231141231154123423632234§;
               if(_loc2_.text.indexOf(".") != -1)
               {
                  _loc7_.push(_loc1_);
               }
               _loc1_++;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < 4)
         {
            _loc4_ = this.§521423134292313442123423632234§[_loc3_];
            _loc1_ = 0;
            while(_loc1_ < _loc7_.length)
            {
               _loc6_ = int(_loc7_[_loc1_]);
               _loc2_ = _loc4_.§5214234426234439123423632234§[_loc6_] as §5214231141231154123423632234§;
               if(_loc2_.text.indexOf(".") == -1)
               {
                  _loc2_.text += ".0";
               }
               _loc1_++;
            }
            _loc3_++;
         }
      }
      
      public function select(param1:int) : void
      {
         var _loc2_:ModInfoRow = null;
         if(this.§case var extends§ != -1)
         {
            _loc2_ = this.§521423134292313442123423632234§[this.§case var extends§];
            _loc2_.unselect();
         }
         this.§case var extends§ = param1;
         this.§class var use§.y = (17 + 0) * param1;
         _loc2_ = this.§521423134292313442123423632234§[this.§case var extends§];
         _loc2_.select();
      }
      
      private function b1fe5001(param1:int) : void
      {
         var _loc2_:int = param1 - 6;
         var _loc3_:Graphics = this.§class var use§.graphics;
         _loc3_.clear();
         _loc3_.beginFill(2071057);
         _loc3_.drawRoundRect(0,0,_loc2_,17,7,7);
         _loc3_.endFill();
      }
      
      public function set maxCostWidth(param1:int) : void
      {
         this.§with set package§ = param1;
         var _loc2_:ModInfoRow = this.§521423134292313442123423632234§[0];
         this.§521423128652312878123423632234§ = _loc2_.§extends static§.width + _loc2_.§5214236045236058123423632234§.width + 3 + _loc2_.§default for final§.width + this.§with set package§ + 10 * 3;
         var _loc3_:int = 0;
         while(_loc3_ < 4)
         {
            _loc2_ = this.§521423134292313442123423632234§[_loc3_] as ModInfoRow;
            _loc2_.§for set case§ = this.§with set package§;
            _loc3_++;
         }
      }
   }
}

