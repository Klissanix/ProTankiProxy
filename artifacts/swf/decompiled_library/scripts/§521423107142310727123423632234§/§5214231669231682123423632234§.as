package §521423107142310727123423632234§
{
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §5214231669231682123423632234§ extends Sprite
   {
      
      private static var §package use import§:Array = [5885719,1519104];
      
      private static var §5214232418232431123423632234§:Array = [1,1];
      
      private static var §class var else§:Array = [0,255];
      
      private var §5214236830236843123423632234§:§5214231141231154123423632234§;
      
      private var §use catch default§:int = 0;
      
      private var §52142391123924123423632234§:int = 0;
      
      public function §5214231669231682123423632234§()
      {
         super();
         this.init();
      }
      
      public function set §while set return§(param1:int) : void
      {
         this.§false null§(this.§use catch default§,param1);
      }
      
      private function §521423118432311856123423632234§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§5214236830236843123423632234§.text.length;
         if(_loc2_ == 1)
         {
            _loc1_ = 1;
         }
         else if(_loc2_ > 1)
         {
            _loc1_ = (_loc2_ - 1) * 6;
         }
         return _loc1_;
      }
      
      public function §false null§(param1:int, param2:int) : void
      {
         this.§use catch default§ = param1;
         this.§52142391123924123423632234§ = param2;
         this.visible = param2 != 0;
         this.§5214236830236843123423632234§.text = String(param2);
         this.resize();
      }
      
      private function init() : void
      {
         this.§5214236830236843123423632234§ = new §5214231141231154123423632234§();
         addChild(this.§5214236830236843123423632234§);
         this.§false null§(this.§use catch default§,this.§52142391123924123423632234§);
         this.resize();
      }
      
      public function set §extends catch while§(param1:int) : void
      {
         this.§false null§(param1,this.§52142391123924123423632234§);
      }
      
      private function resize() : void
      {
         this.§5214236830236843123423632234§.x = -int(this.§5214236830236843123423632234§.width) - 1;
         var _loc3_:Matrix = new Matrix();
         var _loc1_:int = this.§521423118432311856123423632234§() + 14;
         _loc3_.createGradientBox(_loc1_,14,3.141592653589793 * 0.5,0,1);
         var _loc2_:Graphics = graphics;
         _loc2_.clear();
         _loc2_.beginGradientFill("linear",§package use import§,§5214232418232431123423632234§,§class var else§,_loc3_);
         _loc2_.drawRoundRect(-_loc1_ + 2,2,_loc1_,14,15,15);
      }
   }
}

