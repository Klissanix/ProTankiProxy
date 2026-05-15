package §521423100862310099123423632234§
{
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class §native for else§ extends Sprite
   {
      
      private static const §5214232753232766123423632234§:Class = §e34gh75_png$f95826a00b2fec85a4df9e00c0e077e1-2084789854§;
      
      private static const §else with§:Class = §c725g10_png$8fc22dfbf692fea8f2964a730df6f1ff-1909479788§;
      
      private static const §5214236469236482123423632234§:Class = S74f9b1_png$8c1c765c2ddfaba7eecfe943062450d1529242103;
      
      protected var §5214232714232727123423632234§:BitmapData = new §5214232753232766123423632234§().bitmapData;
      
      protected var §break var set§:BitmapData = new §else with§().bitmapData;
      
      protected var §set package super§:BitmapData = new §5214236469236482123423632234§().bitmapData;
      
      protected var §5214237851237864123423632234§:int;
      
      protected var §521423117872311800123423632234§:Boolean;
      
      protected var §function use while§:Number = 0;
      
      protected var §521423121082312121123423632234§:Number = 100;
      
      protected var §in use include§:Number = 10;
      
      public function §native for else§(param1:Boolean = true)
      {
         super();
         this.§521423117872311800123423632234§ = param1;
      }
      
      protected function §5214233910233923123423632234§() : void
      {
         var _loc1_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Graphics = this.graphics;
         _loc2_.clear();
         _loc2_.beginBitmapFill(this.§5214232714232727123423632234§);
         _loc2_.drawRect(0,0,5,30);
         _loc2_.endFill();
         var _loc3_:Matrix = new Matrix();
         _loc3_.translate(5,0);
         _loc2_.beginBitmapFill(this.§break var set§,_loc3_);
         _loc2_.drawRect(5,0,this.§5214237851237864123423632234§ - 11,30);
         _loc2_.endFill();
         _loc3_.identity();
         _loc3_.translate(this.§5214237851237864123423632234§ - 6,0);
         _loc2_.beginBitmapFill(this.§set package super§,_loc3_);
         _loc2_.drawRect(this.§5214237851237864123423632234§ - 6,0,6,30);
         _loc2_.endFill();
         if(this.§521423117872311800123423632234§)
         {
            _loc1_ = width / ((this.§521423121082312121123423632234§ - this.§function use while§) / this.§in use include§);
            _loc4_ = _loc1_;
            while(_loc4_ < this.§5214237851237864123423632234§)
            {
               _loc2_.lineStyle(0,16777215,0.4);
               _loc2_.moveTo(_loc4_,5);
               _loc2_.lineTo(_loc4_,25);
               _loc4_ += _loc1_;
            }
         }
      }
      
      public function set §else const in§(param1:Number) : void
      {
         this.§521423121082312121123423632234§ = param1;
         this.§5214233910233923123423632234§();
      }
      
      public function set §5214232241232254123423632234§(param1:Number) : void
      {
         this.§function use while§ = param1;
         this.§5214233910233923123423632234§();
      }
      
      public function set §521423137382313751123423632234§(param1:Number) : void
      {
         this.§in use include§ = param1;
         this.§5214233910233923123423632234§();
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§5214233910233923123423632234§();
      }
   }
}

