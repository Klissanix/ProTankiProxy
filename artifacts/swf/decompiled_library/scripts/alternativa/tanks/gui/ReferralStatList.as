package alternativa.tanks.gui
{
   import §521423122772312290123423632234§.§get package if§;
   import §5214232472232485123423632234§.§52142338123394123423632234§;
   import §5214232472232485123423632234§.§5214237524237537123423632234§;
   import §5214232472232485123423632234§.§break const class§;
   import §5214232472232485123423632234§.§break switch dynamic§;
   import §5214232472232485123423632234§.§continue switch for§;
   import §5214232472232485123423632234§.§continue var super§;
   import §5214232472232485123423632234§.§get for final§;
   import §5214232472232485123423632234§.§static package dynamic§;
   import fl.controls.List;
   import fl.data.DataProvider;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.utils.Timer;
   import §include else§.§52142356823581123423632234§;
   import utils.ScrollStyleUtils;
   
   public class ReferralStatList extends Sprite
   {
      
      private var header:§continue var super§ = new §continue var super§();
      
      protected var list:List = new List();
      
      protected var §5214236864236877123423632234§:DataProvider = new DataProvider();
      
      protected var §var var get§:int = 1;
      
      protected var timer:Timer = null;
      
      private var _height:int = 100;
      
      protected var _width:int = 100;
      
      public function ReferralStatList()
      {
         super();
         addEventListener("addedToStage",this.ConfigUI);
      }
      
      public static function setBackground(param1:int, param2:int, param3:Boolean) : BitmapData
      {
         var _loc7_:Array = null;
         var _loc8_:§continue switch for§ = null;
         var _loc6_:Sprite = new Sprite();
         _loc7_ = [0,param1 - 120,param1 - 1];
         var _loc4_:int = 0;
         var _loc5_:BitmapData = new BitmapData(param1,20,true,0);
         _loc4_ = 0;
         while(_loc4_ < 2)
         {
            if(param2 == _loc4_)
            {
               if(param3)
               {
                  _loc8_ = new §get for final§();
               }
               else
               {
                  _loc8_ = new §break const class§();
               }
            }
            else if(param3)
            {
               _loc8_ = new §5214237524237537123423632234§();
            }
            else
            {
               _loc8_ = new §break switch dynamic§();
            }
            _loc8_.width = _loc7_[_loc4_ + 1] - _loc7_[_loc4_] - 2;
            _loc8_.height = 18;
            _loc8_.x = _loc7_[_loc4_];
            _loc6_.addChild(_loc8_);
            _loc4_++;
         }
         _loc5_.draw(_loc6_);
         return _loc5_;
      }
      
      protected function changeSort(param1:§52142356823581123423632234§) : void
      {
         this.§var var get§ = param1.§import const function§;
         this.clear();
         this.width = this._width;
      }
      
      protected function ConfigUI(param1:Event) : void
      {
         removeEventListener("addedToStage",this.ConfigUI);
         this.§var var get§ = 1;
         this.list.rowHeight = 20;
         this.list.setStyle("cellRenderer",ReferralStatListRenderer);
         this.list.dataProvider = this.§5214236864236877123423632234§;
         this.list.focusEnabled = false;
         ScrollStyleUtils.setGreenStyle(this.list);
         addChild(this.header);
         addChild(this.list);
         this.list.y = 20;
         this.header.addEventListener("StatListUpdateSort",this.changeSort);
      }
      
      public function addReferrals(param1:Vector.<§get package if§>) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§get package if§ = null;
         for each(_loc3_ in param1)
         {
            _loc2_ = {};
            _loc2_.userId = _loc3_.§const const finally§;
            _loc2_.income = _loc3_.§extends import§;
            _loc2_.sort = this.§var var get§;
            this.§5214236864236877123423632234§.addItem(_loc2_);
         }
         this.sort();
      }
      
      override public function set width(param1:Number) : void
      {
         this._width = param1;
         var _loc2_:Boolean = this.list.maxVerticalScrollPosition > 0;
         var _loc3_:int = _loc2_ ? int(this._width + 6) : this._width;
         this.list.width = _loc3_;
         this.header.width = _loc2_ ? _loc3_ - 15 : _loc3_;
         §static package dynamic§.§521423104052310418123423632234§ = new Bitmap(setBackground(_loc2_ ? int(_loc3_ - 15) : _loc3_,this.§var var get§,false));
         §52142338123394123423632234§.§521423104052310418123423632234§ = new Bitmap(setBackground(_loc2_ ? int(_loc3_ - 15) : _loc3_,this.§var var get§,true));
         this.§5214236864236877123423632234§.invalidate();
      }
      
      public function clear() : void
      {
         var _loc1_:Object = {};
         var _loc2_:int = 0;
         while(_loc2_ < this.§5214236864236877123423632234§.length)
         {
            _loc1_ = this.§5214236864236877123423632234§.getItemAt(_loc2_);
            _loc1_.sort = this.§var var get§;
            this.§5214236864236877123423632234§.replaceItemAt(_loc1_,_loc2_);
            _loc2_++;
         }
         this.sort();
      }
      
      private function sort() : void
      {
         if(this.§var var get§ == 0)
         {
            this.§5214236864236877123423632234§.sortOn("userId");
         }
         else
         {
            this.§5214236864236877123423632234§.sortOn("income",0x10 | 2);
         }
         this.§5214236864236877123423632234§.invalidate();
      }
      
      override public function set height(param1:Number) : void
      {
         this._height = param1;
         this.list.height = this._height - 20;
      }
   }
}

