package alternativa.tanks.gui
{
   import §521423133832313396123423632234§.§class const package§;
   import §5214232472232485123423632234§.§break switch dynamic§;
   import §5214232472232485123423632234§.§case use import§;
   import §5214232472232485123423632234§.§continue switch for§;
   import §continue switch final§.LobbyChatUserLabel;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class ChatOutputLine extends Sprite
   {
      
      private static const §521423123402312353123423632234§:uint = 8454016;
      
      private static const §521423119182311931123423632234§:uint = 1244928;
      
      private static const §default const try§:uint = 5898034;
      
      private var §continue set override§:§5214231141231154123423632234§;
      
      private var §var finally dynamic§:String;
      
      private var §521423127282312741123423632234§:String;
      
      private var §5214237025237038123423632234§:LobbyChatUserLabel;
      
      private var §include const§:LobbyChatUserLabel;
      
      private var §break var if§:§5214231141231154123423632234§;
      
      private var §521423130762313089123423632234§:Boolean = false;
      
      private var _self:Boolean = false;
      
      private var §5214232720232733123423632234§:int = 0;
      
      private var §5214231039231052123423632234§:Boolean = false;
      
      private var §5214239177239190123423632234§:Boolean;
      
      private var §521423119672311980123423632234§:String;
      
      private var _width:int;
      
      private var §521423101102310123123423632234§:Bitmap;
      
      public function ChatOutputLine(param1:int, param2:§class const package§, param3:§class const package§, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super();
         this._width = param1;
         this.§521423119672311980123423632234§ = param2.§switch var try§;
         this.§5214231039231052123423632234§ = param5;
         mouseEnabled = false;
         this.§521423101102310123123423632234§ = new Bitmap();
         addChild(this.§521423101102310123123423632234§);
         if(param2.§each use get§ != null)
         {
            this.§var finally dynamic§ = param2.uid;
            this.§5214237025237038123423632234§ = new LobbyChatUserLabel(param2.§each use get§,param2.uid,param2.§521423119912312004123423632234§,param2.§521423123012312314123423632234§);
            addChild(this.§5214237025237038123423632234§);
            this.§5214237025237038123423632234§.§5214234846234859123423632234§(1244928);
            this.f24033b1(param3.§each use get§ == null);
         }
         if(param3.§each use get§ != null)
         {
            this.§521423127282312741123423632234§ = param3.uid;
            this.§include const§ = new LobbyChatUserLabel(param3.§each use get§,param3.uid,param3.§521423119912312004123423632234§,param3.§521423123012312314123423632234§);
            addChild(this.§include const§);
            this.§include const§.§5214234846234859123423632234§(1244928);
            this.§break var if§ = new §5214231141231154123423632234§();
            addChild(this.§break var if§);
            this.§break var if§.text = "→";
            this.§break var if§.color = 1244928;
            this.d292bf5e();
         }
         this.§continue set override§ = new §5214231141231154123423632234§();
         this.§continue set override§.color = this.§5214231039231052123423632234§ ? 8454016 : 16777215;
         this.§continue set override§.multiline = true;
         this.§continue set override§.wordWrap = true;
         this.§continue set override§.selectable = true;
         addChild(this.§continue set override§);
         if(this.§5214232720232733123423632234§ > this._width / 2)
         {
            this.§continue set override§.y = 15;
            this.§continue set override§.x = 0;
            this.§continue set override§.width = this._width - 5;
         }
         else
         {
            this.§continue set override§.x = this.§5214232720232733123423632234§ + 3;
            this.§continue set override§.y = 0;
            this.§continue set override§.width = this._width - this.§5214232720232733123423632234§ - 8;
         }
         if(param6)
         {
            this.§continue set override§.htmlText = param4;
         }
         else
         {
            this.§continue set override§.text = param4;
         }
      }
      
      public function get userName() : String
      {
         return this.§var finally dynamic§;
      }
      
      private function f24033b1(param1:Boolean) : void
      {
         var _loc2_:String = "";
         if(this.§521423119672311980123423632234§ != "" && !this.§5214231039231052123423632234§ && this.§5214239177239190123423632234§)
         {
            _loc2_ += " (" + this.§521423119672311980123423632234§ + ")";
         }
         else
         {
            this.§5214237025237038123423632234§.§finally for do§("");
         }
         if(param1)
         {
            _loc2_ += ":";
         }
         if(_loc2_.length != 0)
         {
            this.§5214237025237038123423632234§.§finally for do§(_loc2_);
         }
         if(param1)
         {
            this.§5214232720232733123423632234§ = this.§5214237025237038123423632234§.width + 2;
         }
         else
         {
            this.§5214232720232733123423632234§ = this.§5214237025237038123423632234§.width + 6;
         }
      }
      
      public function set self(param1:Boolean) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(this.§5214231039231052123423632234§)
         {
            return;
         }
         this._self = param1;
         if(this._self)
         {
            _loc3_ = 4278985229;
            _loc2_ = 4278985229;
         }
         else
         {
            _loc2_ = 1244928;
            _loc3_ = this.§5214231039231052123423632234§ ? 8454016 : 16777215;
         }
         if(this.§5214237025237038123423632234§ != null)
         {
            this.§5214237025237038123423632234§.§5214234846234859123423632234§(_loc2_,this._self);
         }
         if(this.§include const§ != null)
         {
            this.§include const§.§5214234846234859123423632234§(_loc2_);
            this.§break var if§.color = _loc2_;
         }
         this.§continue set override§.color = _loc3_;
         this.width = this._width;
      }
      
      override public function set width(param1:Number) : void
      {
         var _loc2_:§continue switch for§ = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         this._width = param1;
         if(this.§5214232720232733123423632234§ > this._width / 2 && this.§continue set override§.text.length * 8 > this._width - this.§5214232720232733123423632234§)
         {
            this.§continue set override§.y = 19;
            this.§continue set override§.x = 0;
            this.§continue set override§.width = this._width - 5;
            _loc4_ = 21;
         }
         else
         {
            this.§continue set override§.x = this.§5214232720232733123423632234§;
            this.§continue set override§.y = 0;
            this.§continue set override§.width = this._width - this.§5214232720232733123423632234§ - 5;
            this.§continue set override§.height = 20;
         }
         this.§521423101102310123123423632234§.bitmapData = new BitmapData(1,Math.max(int(this.§continue set override§.textHeight + 7.5 + _loc4_),19),true,0);
         _loc2_ = this._self ? new §case use import§() : new §break switch dynamic§();
         if(this.§521423130762313089123423632234§ || this._self)
         {
            _loc2_.width = this._width;
            _loc2_.height = Math.max(int(this.§continue set override§.textHeight + 5.5 + _loc4_),19);
            _loc2_.y = 2;
            _loc2_.graphics.beginFill(0,0);
            _loc2_.graphics.drawRect(0,0,2,2);
            _loc2_.graphics.endFill();
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height + 2,true,0);
            _loc3_.draw(_loc2_);
            this.§521423101102310123123423632234§.bitmapData = _loc3_;
         }
      }
      
      private function d292bf5e() : void
      {
         this.§include const§.§finally for do§(":");
         this.§include const§.x = this.§5214237025237038123423632234§.x + this.§5214237025237038123423632234§.width + 14;
         this.§5214232720232733123423632234§ += this.§include const§.width + 11;
         this.§break var if§.x = this.§5214237025237038123423632234§.x + this.§5214237025237038123423632234§.width - 1;
      }
      
      public function get system() : Boolean
      {
         return this.§5214231039231052123423632234§;
      }
      
      public function set showIP(param1:Boolean) : void
      {
         this.§5214239177239190123423632234§ = param1;
         if(this.§5214237025237038123423632234§ != null)
         {
            this.f24033b1(this.§include const§ == null);
         }
         if(this.§include const§ != null)
         {
            this.d292bf5e();
         }
         this.width = this._width;
      }
      
      public function get userNameTo() : String
      {
         return this.§521423127282312741123423632234§;
      }
      
      public function set light(param1:Boolean) : void
      {
         var _loc2_:* = 0;
         if(this.§5214231039231052123423632234§)
         {
            return;
         }
         this.§521423130762313089123423632234§ = param1;
         if(this.§521423130762313089123423632234§)
         {
            _loc2_ = 5898034;
         }
         else
         {
            _loc2_ = 1244928;
         }
         if(this.§5214237025237038123423632234§ != null)
         {
            this.§5214237025237038123423632234§.§5214234846234859123423632234§(_loc2_);
         }
         if(this.§include const§ != null)
         {
            this.§include const§.§5214234846234859123423632234§(_loc2_);
            this.§break var if§.color = _loc2_;
         }
         this.width = this._width;
      }
   }
}

