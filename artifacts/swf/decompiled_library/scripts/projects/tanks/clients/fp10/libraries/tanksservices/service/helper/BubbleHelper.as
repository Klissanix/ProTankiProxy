package projects.tanks.clients.fp10.libraries.tanksservices.service.helper
{
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class BubbleHelper extends Helper
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var display:IDisplay;
      
      public static const §with var false§:int = 16;
      
      private static const §try switch in§:int = 1;
      
      private static const §521423105232310536123423632234§:uint = 16777215;
      
      private static const §521423121212312134123423632234§:uint = 0;
      
      private static const §switch use set§:Number = 1;
      
      private static const §const switch catch§:Number = 0.85;
      
      private static const §break switch get§:int = 24;
      
      private static const §521423123252312338123423632234§:int = 24;
      
      private var back:Shape;
      
      private var §5214232119232132123423632234§:Shape;
      
      private var §extends use super§:int = 48;
      
      private var §catch set continue§:int;
      
      private var §get set finally§:Point = new Point();
      
      private var §import switch var§:Point = new Point();
      
      private var §521423122302312243123423632234§:Point = new Point();
      
      private var §include var set§:Point = new Point();
      
      private var §52142376823781123423632234§:Point = new Point();
      
      private var §5214233283233296123423632234§:Point = new Point();
      
      private var §5214232236232249123423632234§:Boolean;
      
      protected var §5214238030238043123423632234§:TextField;
      
      protected const §final var class§:int = 12;
      
      private var §with switch const§:Bitmap;
      
      private var §function final§:Sprite;
      
      public function BubbleHelper()
      {
         super();
         _size = new Point();
         §5214234160234173123423632234§ = new Point();
         this.§with switch const§ = new Bitmap();
         addChild(this.§with switch const§);
         this.§function final§ = new Sprite();
         this.§function final§.mouseEnabled = false;
         this.§function final§.mouseChildren = false;
         this.§function final§.tabEnabled = false;
         this.§function final§.tabChildren = false;
         this.§5214232119232132123423632234§ = new Shape();
         this.§function final§.addChild(this.§5214232119232132123423632234§);
         this.back = new Shape();
         this.§function final§.addChild(this.back);
         this.arrowAlign = 34;
         this.§5214238030238043123423632234§ = new §5214238529238542123423632234§();
         this.§5214238030238043123423632234§.antiAliasType = "advanced";
         this.§5214238030238043123423632234§.gridFitType = "subpixel";
         this.§5214238030238043123423632234§.autoSize = "left";
         this.§5214238030238043123423632234§.wordWrap = false;
         this.§5214238030238043123423632234§.multiline = true;
         this.§5214238030238043123423632234§.selectable = false;
         addChild(this.§5214238030238043123423632234§);
         this.§5214238030238043123423632234§.x = 12 - 3;
         this.§5214238030238043123423632234§.y = 12 - 4;
         this.§5214238030238043123423632234§.mouseEnabled = false;
         this.§5214238030238043123423632234§.tabEnabled = false;
      }
      
      override public function align(param1:int, param2:int) : void
      {
         this.doAlign();
      }
      
      public function set arrowLehgth(param1:int) : void
      {
         this.§extends use super§ = param1;
      }
      
      public function set arrowAlign(param1:int) : void
      {
         if(param1 == 18)
         {
            this.§catch set continue§ = 12;
         }
         else
         {
            this.§catch set continue§ = param1;
         }
         if(Boolean(this.§catch set continue§ & 1) || Boolean(this.§catch set continue§ & 4))
         {
            this.§5214232236232249123423632234§ = true;
         }
         else
         {
            this.§5214232236232249123423632234§ = false;
         }
      }
      
      protected function doAlign() : void
      {
         var _loc1_:Point = null;
         if(parent != null)
         {
            §5214234160234173123423632234§.x *= Display.§521423132512313264123423632234§;
            _loc1_ = parent.globalToLocal(§5214234160234173123423632234§);
            this.x = Math.round(_loc1_.x - this.§5214233283233296123423632234§.x);
            this.y = Math.round(_loc1_.y - this.§5214233283233296123423632234§.y);
         }
      }
      
      override public function draw(param1:Point) : void
      {
         _size.x = int(param1.x);
         _size.y = int(param1.y);
         this.§5214232119232132123423632234§.graphics.clear();
         this.§5214232119232132123423632234§.graphics.beginFill(16777215,1);
         this.§5214232119232132123423632234§.graphics.drawRoundRect(-1,-1,param1.x + 1 * 2,param1.y + 1 * 2,16 + 2,16 + 2);
         this.§5214232119232132123423632234§.graphics.drawRoundRect(0,0,param1.x,param1.y,16,16);
         this.back.graphics.clear();
         this.back.graphics.beginFill(0,0.85);
         this.back.graphics.drawRoundRect(0,0,param1.x,param1.y,16,16);
         var _loc4_:Number = this.§extends use super§ / 24;
         if(this.§catch set continue§ & 1)
         {
            this.§get set finally§.y = 0;
            this.§import switch var§.y = 0;
            this.§521423122302312243123423632234§.y = -this.§extends use super§;
            this.§include var set§.y = 0;
            this.§52142376823781123423632234§.y = 0;
            this.§5214233283233296123423632234§.y = -_loc4_ * (24 + 1 * 2);
         }
         else if(this.§catch set continue§ & 2)
         {
            this.§get set finally§.y = param1.y - 24 >> 1;
            this.§import switch var§.y = this.§get set finally§.y + 24;
            this.§521423122302312243123423632234§.y = this.§get set finally§.y;
            this.§include var set§.y = this.§get set finally§.y - 1;
            this.§52142376823781123423632234§.y = this.§get set finally§.y + 24 + 1;
            this.§5214233283233296123423632234§.y = this.§include var set§.y;
         }
         else
         {
            this.§get set finally§.y = param1.y;
            this.§import switch var§.y = param1.y;
            this.§521423122302312243123423632234§.y = param1.y + this.§extends use super§;
            this.§include var set§.y = param1.y;
            this.§52142376823781123423632234§.y = param1.y;
            this.§5214233283233296123423632234§.y = param1.y + _loc4_ * (24 + 1 * 2);
         }
         if(this.§catch set continue§ & 8)
         {
            if(this.§5214232236232249123423632234§ == true)
            {
               this.§521423122302312243123423632234§.x = 24;
               this.§get set finally§.x = 24;
               this.§import switch var§.x = 24 + 24;
               this.§5214233283233296123423632234§.x = 24 - 1;
               this.§include var set§.x = 24 - 1;
               this.§52142376823781123423632234§.x = 24 + 24 + 1;
            }
            else
            {
               this.§521423122302312243123423632234§.x = -this.§extends use super§;
               this.§get set finally§.x = 0;
               this.§import switch var§.x = 0;
               this.§5214233283233296123423632234§.x = -_loc4_ * (24 + 1 * 2);
               this.§include var set§.x = 0;
               this.§52142376823781123423632234§.x = 0;
            }
            if(this.§catch set continue§ & 1)
            {
               this.§5214232119232132123423632234§.graphics.drawRect(this.§get set finally§.x,this.§get set finally§.y - 1,this.§import switch var§.x - this.§get set finally§.x,1);
            }
            else if(this.§catch set continue§ & 2)
            {
               this.§5214232119232132123423632234§.graphics.drawRect(this.§get set finally§.x - 1,this.§get set finally§.y,1,this.§import switch var§.y - this.§get set finally§.y);
            }
            else
            {
               this.§5214232119232132123423632234§.graphics.drawRect(this.§get set finally§.x,this.§get set finally§.y,this.§import switch var§.x - this.§get set finally§.x,1);
            }
         }
         else if(this.§catch set continue§ & 0x10)
         {
            this.§521423122302312243123423632234§.x = param1.x - 24 >> 1;
            this.§get set finally§.x = this.§521423122302312243123423632234§.x;
            this.§import switch var§.x = this.§521423122302312243123423632234§.x + 24;
            this.§5214233283233296123423632234§.x = this.§521423122302312243123423632234§.x - 1;
            this.§include var set§.x = this.§5214233283233296123423632234§.x;
            this.§52142376823781123423632234§.x = this.§import switch var§.x + 1;
            if(this.§catch set continue§ & 1)
            {
               this.§5214232119232132123423632234§.graphics.drawRect(this.§get set finally§.x,this.§get set finally§.y - 1,this.§import switch var§.x - this.§get set finally§.x,1);
            }
            else
            {
               this.§5214232119232132123423632234§.graphics.drawRect(this.§get set finally§.x,this.§get set finally§.y,this.§import switch var§.x - this.§get set finally§.x,1);
            }
         }
         else
         {
            if(this.§5214232236232249123423632234§ == true)
            {
               this.§521423122302312243123423632234§.x = param1.x - 24;
               this.§get set finally§.x = this.§521423122302312243123423632234§.x;
               this.§import switch var§.x = this.§get set finally§.x - 24;
               this.§5214233283233296123423632234§.x = this.§521423122302312243123423632234§.x + 1;
               this.§include var set§.x = this.§5214233283233296123423632234§.x;
               this.§52142376823781123423632234§.x = this.§521423122302312243123423632234§.x - 24 - 1;
            }
            else
            {
               this.§521423122302312243123423632234§.x = param1.x + this.§extends use super§;
               this.§get set finally§.x = param1.x;
               this.§import switch var§.x = param1.x;
               this.§5214233283233296123423632234§.x = param1.x + _loc4_ * (24 + 1 * 2);
               this.§include var set§.x = param1.x;
               this.§52142376823781123423632234§.x = param1.x;
            }
            if(this.§catch set continue§ & 1)
            {
               this.§5214232119232132123423632234§.graphics.drawRect(this.§get set finally§.x,this.§get set finally§.y - 1,this.§import switch var§.x - this.§get set finally§.x,1);
            }
            else if(this.§catch set continue§ & 2)
            {
               this.§5214232119232132123423632234§.graphics.drawRect(this.§get set finally§.x,this.§get set finally§.y,1,this.§import switch var§.y - this.§get set finally§.y);
            }
            else
            {
               this.§5214232119232132123423632234§.graphics.drawRect(this.§get set finally§.x,this.§get set finally§.y,this.§import switch var§.x - this.§get set finally§.x,1);
            }
         }
         this.back.graphics.moveTo(this.§521423122302312243123423632234§.x,this.§521423122302312243123423632234§.y);
         this.back.graphics.lineTo(this.§get set finally§.x,this.§get set finally§.y);
         this.back.graphics.lineTo(this.§import switch var§.x,this.§import switch var§.y);
         this.back.graphics.lineTo(this.§521423122302312243123423632234§.x,this.§521423122302312243123423632234§.y);
         this.§5214232119232132123423632234§.graphics.beginFill(16777215,1);
         this.§5214232119232132123423632234§.graphics.moveTo(this.§5214233283233296123423632234§.x,this.§5214233283233296123423632234§.y);
         this.§5214232119232132123423632234§.graphics.lineTo(this.§include var set§.x,this.§include var set§.y);
         this.§5214232119232132123423632234§.graphics.lineTo(this.§52142376823781123423632234§.x,this.§52142376823781123423632234§.y);
         this.§5214232119232132123423632234§.graphics.lineTo(this.§5214233283233296123423632234§.x,this.§5214233283233296123423632234§.y);
         this.§5214232119232132123423632234§.graphics.moveTo(this.§521423122302312243123423632234§.x,this.§521423122302312243123423632234§.y);
         this.§5214232119232132123423632234§.graphics.lineTo(this.§get set finally§.x,this.§get set finally§.y);
         this.§5214232119232132123423632234§.graphics.lineTo(this.§import switch var§.x,this.§import switch var§.y);
         this.§5214232119232132123423632234§.graphics.lineTo(this.§521423122302312243123423632234§.x,this.§521423122302312243123423632234§.y);
         var _loc2_:String = display.stage.quality;
         display.stage.quality = "high";
         var _loc3_:Matrix = new Matrix();
         if(this.§5214233283233296123423632234§.x < 0)
         {
            _loc3_.tx = -Math.round(this.§5214233283233296123423632234§.x);
            this.§with switch const§.x = Math.round(this.§5214233283233296123423632234§.x);
         }
         else
         {
            _loc3_.tx = 1;
            this.§with switch const§.x = -1;
         }
         if(this.§5214233283233296123423632234§.y < 0)
         {
            _loc3_.ty = -Math.round(this.§5214233283233296123423632234§.y);
            this.§with switch const§.y = Math.round(this.§5214233283233296123423632234§.y);
         }
         else
         {
            _loc3_.ty = 1;
            this.§with switch const§.y = -1;
         }
         this.§with switch const§.bitmapData = new BitmapData(Math.round(this.§5214232119232132123423632234§.width),Math.round(this.§5214232119232132123423632234§.height),true,0);
         this.§with switch const§.bitmapData.draw(this.§function final§,_loc3_,new ColorTransform(),"normal",null,true);
         display.stage.quality = _loc2_;
         this.§5214238030238043123423632234§.width = param1.x - 12 * 2;
      }
      
      public function set text(param1:String) : void
      {
         this.§5214238030238043123423632234§.htmlText = param1;
         _size.x = Math.round(this.§5214238030238043123423632234§.textWidth + 12 * 2);
         _size.y = Math.round(this.§5214238030238043123423632234§.textHeight + 12 * 2) - 3;
      }
      
      public function get arrowAlign() : int
      {
         return this.§catch set continue§;
      }
      
      public function get arrowLehgth() : int
      {
         return this.§extends use super§;
      }
   }
}

