package alternativa.tanks.gui
{
   import §521423133832313396123423632234§.§class const package§;
   import fl.containers.ScrollPane;
   import flash.display.Sprite;
   
   public class ChatOutput extends ScrollPane
   {
      
      public var §set const do§:Boolean = true;
      
      public var §use catch§:int = 9;
      
      public var selfName:String;
      
      private const §case use native§:int = 80;
      
      private var §52142371423727123423632234§:Sprite = new Sprite();
      
      private var §5214235240235253123423632234§:Number;
      
      private var §52142324823261123423632234§:ChatOutputLine;
      
      private var §5214233376233389123423632234§:Boolean = false;
      
      public function ChatOutput()
      {
         super();
         this.source = this.§52142371423727123423632234§;
         this.horizontalScrollPolicy = "off";
         this.focusEnabled = false;
      }
      
      public function set showIPMode(param1:Boolean) : void
      {
         this.§5214233376233389123423632234§ = param1;
         this.e5a66607();
      }
      
      private function d480857f() : void
      {
         this.§52142324823261123423632234§ = this.§52142371423727123423632234§.getChildAt(0) as ChatOutputLine;
         var _loc1_:Number = this.§52142324823261123423632234§.height + this.§52142324823261123423632234§.y;
         this.§52142371423727123423632234§.removeChild(this.§52142324823261123423632234§);
         var _loc2_:int = 0;
         while(_loc2_ < this.§52142371423727123423632234§.numChildren)
         {
            this.§52142371423727123423632234§.getChildAt(_loc2_).y = this.§52142371423727123423632234§.getChildAt(_loc2_).y - _loc1_;
            _loc2_++;
         }
      }
      
      public function scrollDown() : void
      {
         this.verticalScrollPosition = this.maxVerticalScrollPosition;
      }
      
      public function selectUser(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:ChatOutputLine = null;
         var _loc4_:int = param2 ? int(this.§52142371423727123423632234§.numChildren - 1) : 0;
         while(_loc4_ < this.§52142371423727123423632234§.numChildren)
         {
            _loc3_ = this.§52142371423727123423632234§.getChildAt(_loc4_) as ChatOutputLine;
            _loc3_.light = _loc3_.userName == param1;
            _loc3_.self = _loc3_.userNameTo == this.selfName;
            _loc4_++;
         }
      }
      
      public function addLine(param1:§class const package§, param2:§class const package§, param3:String, param4:Boolean = false, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc8_:ChatOutputLine = null;
         _loc6_ = this.verticalScrollPosition + 5 > this.maxVerticalScrollPosition || this.§set const do§;
         if(this.§52142371423727123423632234§.numChildren > 80)
         {
            this.d480857f();
            this.§52142324823261123423632234§ = null;
            _loc8_ = new ChatOutputLine(this.§5214235240235253123423632234§,param1,param2,param3,param4,param5);
         }
         else
         {
            _loc8_ = new ChatOutputLine(this.§5214235240235253123423632234§,param1,param2,param3,param4,param5);
         }
         _loc8_.showIP = this.§5214233376233389123423632234§;
         var _loc7_:int = this.§52142371423727123423632234§.height + 0.5;
         _loc8_.self = _loc8_.userNameTo == this.selfName;
         _loc8_.y = _loc7_;
         this.§52142371423727123423632234§.addChild(_loc8_);
         this.update();
         if(_loc6_)
         {
            this.verticalScrollPosition = this.maxVerticalScrollPosition;
         }
      }
      
      public function cleanOutUsersMessages(param1:String) : void
      {
         var _loc2_:ChatOutputLine = null;
         var _loc3_:Array = [];
         var _loc4_:int = 0;
         while(_loc4_ < this.§52142371423727123423632234§.numChildren)
         {
            _loc2_ = this.§52142371423727123423632234§.getChildAt(_loc4_) as ChatOutputLine;
            if(_loc2_.userName == param1 && !_loc2_.system)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc3_.length)
         {
            this.§52142371423727123423632234§.removeChild(_loc3_[_loc4_]);
            _loc4_++;
         }
         this.e5a66607();
      }
      
      public function clear() : void
      {
         var _loc1_:ChatOutputLine = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < this.§52142371423727123423632234§.numChildren)
         {
            _loc1_ = this.§52142371423727123423632234§.getChildAt(_loc3_) as ChatOutputLine;
            _loc2_.push(_loc1_);
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < _loc2_.length)
         {
            this.§52142371423727123423632234§.removeChild(_loc2_[_loc3_]);
            _loc3_++;
         }
         this.e5a66607();
      }
      
      private function e5a66607() : void
      {
         var _loc1_:ChatOutputLine = null;
         var _loc2_:int = 0;
         var _loc4_:Array = [];
         var _loc5_:int = 0;
         var _loc3_:Boolean = this.§52142371423727123423632234§.numChildren > 0;
         while(this.§52142371423727123423632234§.numChildren > 0)
         {
            _loc1_ = this.§52142371423727123423632234§.getChildAt(_loc2_) as ChatOutputLine;
            _loc1_.showIP = this.§5214233376233389123423632234§;
            _loc1_.width = this.§5214235240235253123423632234§;
            _loc4_.push(_loc1_);
            this.§52142371423727123423632234§.removeChildAt(0);
         }
         _loc2_ = 0;
         while(_loc2_ < _loc4_.length)
         {
            _loc1_ = _loc4_[_loc2_];
            _loc5_ = this.§52142371423727123423632234§.height + 0.5;
            _loc1_.y = _loc5_;
            this.§52142371423727123423632234§.addChild(_loc1_);
            _loc2_++;
         }
         if(_loc3_)
         {
            this.update();
         }
      }
      
      override public function setSize(param1:Number, param2:Number) : void
      {
         super.setSize(param1,param2);
         this.§5214235240235253123423632234§ = param1 - this.§use catch§;
         this.e5a66607();
      }
   }
}

