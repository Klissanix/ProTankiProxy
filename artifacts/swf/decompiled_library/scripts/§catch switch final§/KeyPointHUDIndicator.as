package §catch switch final§
{
   import §521423120812312094123423632234§.§5214234120234133123423632234§;
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import alternativa.tanks.display.Flash;
   import alternativa.tanks.display.SquareSectorIndicator;
   import alternativa.tanks.models.controlpoints.hud.KeyPoint;
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import flash.utils.getTimer;
   
   public class KeyPointHUDIndicator extends Sprite
   {
      
      private static const SIZE:int = 36;
      
      private static const §521423123202312333123423632234§:uint = 16742221;
      
      private static const §521423136272313640123423632234§:uint = 4760319;
      
      private static const §5214231805231818123423632234§:uint = 16777215;
      
      private static const §5214239850239863123423632234§:uint = 9249024;
      
      private static const §521423117272311740123423632234§:uint = 16256;
      
      private var point:KeyPoint;
      
      private var label:§5214238529238542123423632234§;
      
      private var §521423125922312605123423632234§:SquareSectorIndicator;
      
      private var §521423119622311975123423632234§:§5214234120234133123423632234§ = §5214234120234133123423632234§.§const use while§;
      
      private var score:Number = 0;
      
      private const flash:Flash = Flash.getDefault();
      
      public function KeyPointHUDIndicator(param1:KeyPoint, param2:Boolean)
      {
         super();
         this.point = param1;
         this.e2d5ab90(param2);
         this.c341e10b();
         this.update();
      }
      
      public static function getColor(param1:§5214234120234133123423632234§) : uint
      {
         switch(param1)
         {
            case §5214234120234133123423632234§.§implements set implements§:
               return 4760319;
            case §5214234120234133123423632234§.§521423107532310766123423632234§:
               return 16742221;
            default:
               return 16777215;
         }
      }
      
      override public function get height() : Number
      {
         return 36;
      }
      
      private function a1375c17() : uint
      {
         switch(this.§521423119622311975123423632234§)
         {
            case §5214234120234133123423632234§.§implements set implements§:
               return 4760319;
            case §5214234120234133123423632234§.§521423107532310766123423632234§:
               return 16742221;
            default:
               return 16777215;
         }
      }
      
      private function updateScore() : void
      {
         if(this.score != this.point.getClientProgress())
         {
            this.score = this.point.getClientProgress();
            if(this.score < 0)
            {
               this.§521423125922312605123423632234§.setColor(9249024,1);
            }
            else if(this.score > 0)
            {
               this.§521423125922312605123423632234§.setColor(16256,1);
            }
            else
            {
               this.§521423125922312605123423632234§.setColor(0,0);
            }
            this.§521423125922312605123423632234§.setProgress((score > 0 ? score : -score) / 100);
         }
      }
      
      private function e669fcda() : void
      {
         if(this.§521423119622311975123423632234§ != this.point.getCaptureState())
         {
            this.§521423119622311975123423632234§ = this.point.getCaptureState();
            this.label.color = this.a1375c17();
            if(this.§521423119622311975123423632234§ != §5214234120234133123423632234§.§const use while§)
            {
               this.flash.init();
            }
         }
         if(this.flash.isActive())
         {
            this.c6782e04(this.flash.getColorOffset(getTimer()));
         }
      }
      
      private function c6782e04(param1:uint) : void
      {
         var _loc2_:ColorTransform = this.§521423125922312605123423632234§.transform.colorTransform;
         _loc2_.redOffset = param1;
         _loc2_.greenOffset = param1;
         _loc2_.blueOffset = param1;
         this.§521423125922312605123423632234§.transform.colorTransform = _loc2_;
      }
      
      private function e2d5ab90(param1:Boolean) : void
      {
         this.§521423125922312605123423632234§ = new SquareSectorIndicator(36,0,0,0,param1);
         addChild(this.§521423125922312605123423632234§);
      }
      
      private function c341e10b() : void
      {
         this.label = new §5214238529238542123423632234§();
         this.label.§521423102842310297123423632234§ = 18;
         this.label.bold = true;
         this.label.color = getColor(this.point.getCaptureState());
         this.label.text = this.point.getName();
      }
      
      public function getLabel() : §5214238529238542123423632234§
      {
         return this.label;
      }
      
      override public function get width() : Number
      {
         return 36;
      }
      
      public function update() : void
      {
         this.e669fcda();
         this.updateScore();
      }
   }
}

