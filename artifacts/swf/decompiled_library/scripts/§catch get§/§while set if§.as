package §catch get§
{
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import §5214237509237522123423632234§.CrystalIcon;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import utils.§if set for§;
   
   public class §while set if§ extends Sprite
   {
      
      private static const §finally catch native§:Class = D5dfb21_png$aaed1e9610789fe84c49a9035b5b055d188511234;
      
      private static const §override var final§:Class = §S2fe6c_png$53f5f40ddc609a6530d64ec2e9a4c2f2-2004765939§;
      
      private static const §521423107392310752123423632234§:Class = §S2fe6c_png$53f5f40ddc609a6530d64ec2e9a4c2f2-2004765939§;
      
      private static const §while package include§:Class = D5dfb21_png$aaed1e9610789fe84c49a9035b5b055d188511234;
      
      public var §5214236571236584123423632234§:§5214238529238542123423632234§ = new §5214238529238542123423632234§();
      
      public var §521423113202311333123423632234§:§5214238529238542123423632234§ = new §5214238529238542123423632234§();
      
      public var §super var default§:§5214238529238542123423632234§ = new §5214238529238542123423632234§();
      
      public var §in use break§:§5214238529238542123423632234§ = new §5214238529238542123423632234§();
      
      public var §5214231992232005123423632234§:§var set switch§;
      
      private var §5214237851237864123423632234§:int;
      
      private var §null catch while§:Sprite = new Sprite();
      
      private var §521423126812312694123423632234§:Bitmap;
      
      private var §null for§:Bitmap;
      
      private var §in var implements§:Bitmap;
      
      private var §true set function§:Bitmap;
      
      private var §for final§:Bitmap;
      
      private var §521423118272311840123423632234§:Sprite;
      
      private var §5214236569236582123423632234§:DisplayObject;
      
      private var §5214239977239990123423632234§:Timer = new Timer(50);
      
      private var §with for throw§:Sprite = null;
      
      private var §5214233457233470123423632234§:int;
      
      private var §5214235544235557123423632234§:int;
      
      private var §catch set return§:int;
      
      public function §while set if§()
      {
         super();
         this.§521423126812312694123423632234§ = new §521423107392310752123423632234§();
         addChild(§521423126812312694123423632234§);
         var _loc2_:BitmapData = §if set for§.flipH(this.§521423126812312694123423632234§.bitmapData);
         this.§null for§ = new §while package include§();
         §null for§.x = 7;
         addChild(§null for§);
         this.§in var implements§ = new Bitmap(_loc2_);
         addChild(§in var implements§);
         this.§true set function§ = new §override var final§();
         addChild(§true set function§);
         this.§for final§ = new §while package include§();
         addChild(§for final§);
         this.§521423118272311840123423632234§ = new Sprite();
         §521423118272311840123423632234§.addChild(new Bitmap(_loc2_));
         var _loc1_:Bitmap = CrystalIcon.createSmallInstance();
         _loc1_.x = -9;
         _loc1_.y = 8;
         §521423118272311840123423632234§.addChild(_loc1_);
         addChild(§521423118272311840123423632234§);
         this.§5214231992232005123423632234§ = new §var set switch§();
         §5214231992232005123423632234§.y = 9;
         addChild(this.§null catch while§);
         addChild(§5214231992232005123423632234§);
         addChild(this.§5214236571236584123423632234§);
         addChild(this.§521423113202311333123423632234§);
         addChild(this.§super var default§);
         addChild(this.§in use break§);
         this.§null catch while§.x = 5;
         this.§null catch while§.y = 5;
         this.§5214236571236584123423632234§.x = 6;
         this.§5214236571236584123423632234§.autoSize = "none";
         this.§521423113202311333123423632234§.autoSize = "none";
         this.§521423113202311333123423632234§.align = "right";
         this.§521423113202311333123423632234§.width = 120;
         this.§521423113202311333123423632234§.color = this.§super var default§.color = this.§5214236571236584123423632234§.color = this.§in use break§.color = 1244928;
         this.§521423113202311333123423632234§.y = this.§super var default§.y = this.§5214236571236584123423632234§.y = this.§in use break§.y = 4;
         this.§521423113202311333123423632234§.height = this.§in use break§.height = this.§5214236571236584123423632234§.height = 18;
         this.§in use break§.align = "right";
         this.§in use break§.autoSize = "none";
         this.§in use break§.width = 59;
         this.§with for throw§ = new Sprite();
         this.§5214239977239990123423632234§ = new Timer(50);
         this.§5214239977239990123423632234§.addEventListener("timer",this.§5214234162234175123423632234§);
         this.§null catch while§.addChild(this.§with for throw§);
         this.§with for throw§.alpha = 0;
      }
      
      public function get §5214238426238439123423632234§() : int
      {
         return this.§5214233457233470123423632234§;
      }
      
      public function set §package const override§(param1:DisplayObject) : void
      {
         this.§5214236569236582123423632234§ = param1;
         addChild(this.§5214236569236582123423632234§);
         this.width = this.§5214237851237864123423632234§;
      }
      
      private function §5214234162234175123423632234§(param1:TimerEvent) : void
      {
         var _loc2_:DisplayObject = this.§with for throw§;
         _loc2_.alpha -= 0.03;
         if(_loc2_.alpha <= 0)
         {
            this.§5214239977239990123423632234§.stop();
         }
      }
      
      override public function set width(param1:Number) : void
      {
         var _loc2_:int = 0;
         this.§5214237851237864123423632234§ = param1;
         if(Boolean(this.§5214236569236582123423632234§) && this.§5214236569236582123423632234§.visible)
         {
            _loc2_ = this.§5214237851237864123423632234§ - 184 - this.§5214236569236582123423632234§.width;
         }
         else
         {
            _loc2_ = this.§5214237851237864123423632234§ - 180;
         }
         this.§null for§.width = _loc2_;
         this.§in var implements§.x = this.§null for§.width + this.§521423126812312694123423632234§.width;
         if(Boolean(this.§5214236569236582123423632234§) && this.§5214236569236582123423632234§.visible)
         {
            this.§5214236569236582123423632234§.x = this.§in var implements§.x + this.§in var implements§.width + 1;
            this.§true set function§.x = this.§5214236569236582123423632234§.x + this.§5214236569236582123423632234§.width + 11;
         }
         else
         {
            this.§true set function§.x = this.§in var implements§.x + this.§in var implements§.width + 11 - 1 + 1;
         }
         this.§for final§.width = 67;
         this.§for final§.x = this.§true set function§.x + this.§true set function§.width;
         this.§521423118272311840123423632234§.x = this.§for final§.x + this.§for final§.width;
         this.§in use break§.x = this.§for final§.x - 2;
         this.§super var default§.x = int(this.§in var implements§.x - this.§super var default§.textWidth - 3);
         this.§5214231992232005123423632234§.x = int(this.§in var implements§.x - this.§super var default§.textWidth - 10);
         this.§521423113202311333123423632234§.x = this.§5214231992232005123423632234§.x - 125;
         this.§5214236571236584123423632234§.width = this.§null for§.width - this.§super var default§.width - this.§5214231992232005123423632234§.width - 5;
         this.§5214238426238439123423632234§ = this.§5214233457233470123423632234§;
      }
      
      public function set §throw in§(param1:int) : void
      {
         this.§5214235544235557123423632234§ = param1;
         this.§catch set return§ = this.§5214233457233470123423632234§;
         var _loc2_:Graphics = this.§with for throw§.graphics;
         var _loc3_:int = this.§null for§.width + 4;
         this.§with for throw§.alpha = 1;
         _loc2_.clear();
         if(this.§5214235544235557123423632234§ >= this.§catch set return§)
         {
            _loc2_.beginFill(16763904,1);
            _loc2_.drawRect(_loc3_ / 10000 * this.§catch set return§,0,_loc3_ / 10000 * (param1 - this.§catch set return§),16);
            _loc2_.endFill();
         }
         else
         {
            _loc2_.beginFill(16763904,1);
            _loc2_.drawRect(0,0,_loc3_,16);
            _loc2_.endFill();
         }
         this.§5214239977239990123423632234§.stop();
         this.§5214239977239990123423632234§.start();
      }
      
      public function set §5214238426238439123423632234§(param1:int) : void
      {
         var _loc2_:Graphics = this.§null catch while§.graphics;
         var _loc3_:int = this.§null for§.width + 4;
         this.§5214233457233470123423632234§ = param1;
         _loc2_.clear();
         _loc2_.beginFill(1244928,0.2);
         _loc2_.drawRect(0,0,_loc3_ / 10000 * this.§5214233457233470123423632234§,16);
         _loc2_.endFill();
      }
      
      public function get §package const override§() : DisplayObject
      {
         return this.§5214236569236582123423632234§;
      }
   }
}

