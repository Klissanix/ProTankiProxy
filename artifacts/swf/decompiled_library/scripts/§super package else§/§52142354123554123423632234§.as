package §super package else§
{
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import alternativa.osgi.service.display.Display;
   import alternativa.tanks.services.ping.PingService;
   import filters.Filters;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §52142354123554123423632234§ extends Sprite
   {
      
      private static const §case set include§:int = 999;
      
      private static const §case var each§:int = 19;
      
      private static const §super const in§:int = 58;
      
      private static const §use package class§:int = 93;
      
      private static const §5214237909237922123423632234§:int = 48;
      
      public static var §class switch throw§:PingService;
      
      private var §5214236236236249123423632234§:int = 10;
      
      private var §521423127452312758123423632234§:§5214238529238542123423632234§;
      
      private var §class var package§:§5214238529238542123423632234§;
      
      private var §function use extends§:§5214238529238542123423632234§;
      
      private var §52142382923842123423632234§:§5214238529238542123423632234§;
      
      private var §5214231853231866123423632234§:int;
      
      private var §dynamic finally var§:int;
      
      private var §return for package§:int = 60;
      
      public function §52142354123554123423632234§()
      {
         super();
         addEventListener("addedToStage",this.§switch override§);
      }
      
      private function §switch override§(param1:Event) : void
      {
         this.init();
         this.§52142326923282123423632234§();
         this.§5214231853231866123423632234§ = 0;
         this.§dynamic finally var§ = getTimer();
         stage.addEventListener("enterFrame",this.§5214232334232347123423632234§);
         stage.addEventListener("resize",this.§52142326923282123423632234§);
         removeEventListener("addedToStage",this.§switch override§);
         addEventListener("removedFromStage",this.§continue use each§);
      }
      
      private function §521423112172311230123423632234§(param1:int, param2:int, param3:Number) : int
      {
         var _loc8_:int = param1 >> 16 & 0xFF;
         var _loc6_:int = param1 >> 8 & 0xFF;
         var _loc9_:int = param1 & 0xFF;
         var _loc4_:int = param2 >> 16 & 0xFF;
         var _loc7_:int = param2 >> 8 & 0xFF;
         var _loc5_:int = param2 & 0xFF;
         if(param3 > 1)
         {
            param3 = 1;
         }
         return _loc8_ + (_loc4_ - _loc8_) * param3 << 16 | _loc6_ + (_loc7_ - _loc6_) * param3 << 8 | int(_loc9_ + (_loc5_ - _loc9_) * param3);
      }
      
      public function §import try§(param1:int) : void
      {
         this.§return for package§ = param1;
         this.§5214236236236249123423632234§ = Math.max(8,param1 / 6);
      }
      
      private function §52142326923282123423632234§(param1:Event = null) : void
      {
         x = stage.stageWidth / Display.§521423132512313264123423632234§ - 58;
         y = stage.stageHeight / Display.§521423132512313264123423632234§ - 93;
         this.§class var package§.x = 48 - this.§class var package§.width;
         this.§52142382923842123423632234§.x = 48 - this.§52142382923842123423632234§.width;
      }
      
      private function §5214232334232347123423632234§(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc4_:Number = NaN;
         var _loc3_:int = 0;
         if(++this.§5214231853231866123423632234§ >= this.§5214236236236249123423632234§)
         {
            _loc2_ = getTimer();
            _loc4_ = 1000 * this.§5214231853231866123423632234§ / (_loc2_ - this.§dynamic finally var§);
            if(_loc4_ > this.§return for package§)
            {
               _loc4_ = this.§return for package§;
            }
            this.§class var package§.text = Math.round(_loc4_).toString();
            this.§class var package§.x = 48 - this.§class var package§.width;
            if(_loc4_ > 30)
            {
               if(_loc4_ < 60)
               {
                  this.§class var package§.color = this.§521423112172311230123423632234§(16776960,65280,(_loc4_ - 30) / 30);
               }
               else
               {
                  this.§class var package§.color = 65280;
               }
            }
            else if(_loc4_ > 15)
            {
               this.§class var package§.color = this.§521423112172311230123423632234§(15741974,16776960,(_loc4_ - 15) / 15);
            }
            else
            {
               this.§class var package§.color = 15741974;
            }
            this.§dynamic finally var§ = _loc2_;
            this.§5214231853231866123423632234§ = 0;
            _loc3_ = §class switch throw§.getPing();
            if(_loc3_ > 999)
            {
               _loc3_ = 999;
            }
            this.§52142382923842123423632234§.text = _loc3_.toString();
            this.§52142382923842123423632234§.x = 48 - this.§52142382923842123423632234§.width;
            if(_loc3_ < 200)
            {
               if(_loc3_ > 100)
               {
                  this.§52142382923842123423632234§.color = this.§521423112172311230123423632234§(65280,16776960,(_loc3_ - 100) / 100);
               }
               else
               {
                  this.§52142382923842123423632234§.color = 65280;
               }
            }
            else if(_loc3_ < 500)
            {
               this.§52142382923842123423632234§.color = this.§521423112172311230123423632234§(16776960,15741974,(_loc3_ - 200) / 300);
            }
            else
            {
               this.§52142382923842123423632234§.color = 15741974;
            }
         }
      }
      
      private function init() : void
      {
         if(this.§521423127452312758123423632234§ == null)
         {
            this.§521423127452312758123423632234§ = new §5214238529238542123423632234§();
            this.§521423127452312758123423632234§.autoSize = "left";
            this.§521423127452312758123423632234§.color = 16777215;
            this.§521423127452312758123423632234§.text = "FPS: ";
            this.§521423127452312758123423632234§.selectable = false;
            addChild(this.§521423127452312758123423632234§);
            this.§class var package§ = new §5214238529238542123423632234§();
            this.§class var package§.autoSize = "left";
            this.§class var package§.color = 65280;
            this.§class var package§.text = this.§return for package§.toString();
            this.§class var package§.selectable = false;
            addChild(this.§class var package§);
            this.§function use extends§ = new §5214238529238542123423632234§();
            this.§function use extends§.autoSize = "left";
            this.§function use extends§.color = 16777215;
            this.§function use extends§.text = "PING: ";
            this.§function use extends§.selectable = false;
            this.§function use extends§.x = -7;
            this.§function use extends§.y = 19;
            addChild(this.§function use extends§);
            this.§52142382923842123423632234§ = new §5214238529238542123423632234§();
            this.§52142382923842123423632234§.autoSize = "left";
            this.§52142382923842123423632234§.color = 65280;
            this.§52142382923842123423632234§.text = "0";
            this.§52142382923842123423632234§.selectable = false;
            this.§52142382923842123423632234§.y = 19;
            addChild(this.§52142382923842123423632234§);
            filters = Filters.§include set each§;
         }
      }
      
      private function §continue use each§(param1:Event) : void
      {
         stage.removeEventListener("enterFrame",this.§5214232334232347123423632234§);
         stage.removeEventListener("resize",this.§52142326923282123423632234§);
         removeEventListener("removedFromStage",this.§continue use each§);
         addEventListener("addedToStage",this.§switch override§);
      }
   }
}

