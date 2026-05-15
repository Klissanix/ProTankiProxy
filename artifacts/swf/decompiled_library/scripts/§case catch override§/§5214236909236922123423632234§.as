package §case catch override§
{
   import §5214233785233798123423632234§.§continue switch finally§;
   import §5214236944236957123423632234§.DiscreteSprite;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.utils.removeDisplayObject;
   import fl.controls.List;
   import fl.data.DataProvider;
   import fl.events.ListEvent;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.AlertUtils;
   import §true switch true§.§5214231141231154123423632234§;
   import utils.ScrollStyleUtils;
   
   public class §5214236909236922123423632234§ extends DiscreteSprite
   {
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      protected var §do each§:§continue switch finally§ = new §continue switch finally§();
      
      protected var §break get§:§const set default§;
      
      protected var §521423110602311073123423632234§:List = new List();
      
      protected var §5214236864236877123423632234§:DataProvider = new DataProvider();
      
      private var §521423139392313952123423632234§:§5214231141231154123423632234§;
      
      private var §5214238556238569123423632234§:TextField;
      
      protected var §true package do§:Object;
      
      protected var §521423131792313192123423632234§:int = 0;
      
      private var §5214237851237864123423632234§:int;
      
      private var §native set default§:int;
      
      private var §do finally set§:int = 151;
      
      protected var §521423125632312576123423632234§:Object;
      
      private var §switch switch use§:Boolean;
      
      private var §52142382321123423632234§:Boolean;
      
      private var §import package while§:String;
      
      public function §5214236909236922123423632234§(param1:String = "gameName")
      {
         super();
         this.§import package while§ = param1;
         this.init();
      }
      
      public function selectItemByField(param1:String, param2:Object) : void
      {
         var _loc3_:int = this.§set set class§(param1,param2);
         if(_loc3_ != -1)
         {
            this.§true package do§ = this.§5214236864236877123423632234§.getItemAt(_loc3_);
            this.§521423125632312576123423632234§ = this.§true package do§[this.§import package while§];
            this.§do each§.label = this.§521423125632312576123423632234§.toString();
            this.§521423110602311073123423632234§.selectedIndex = _loc3_;
            this.§521423110602311073123423632234§.scrollToSelected();
            dispatchEvent(new Event("change"));
         }
      }
      
      public function §5214233268233281123423632234§() : void
      {
         if(!this.§throw catch const§)
         {
            this.§with set else§();
            this.§5214239668239681123423632234§.visible = this.§521423110602311073123423632234§.visible = true;
            §5214235917235930123423632234§.stage.focus = this.§5214238556238569123423632234§;
            §5214235917235930123423632234§.stage.addChild(this.§5214238556238569123423632234§);
            this.§switch switch use§ = true;
            this.§52142382321123423632234§ = true;
            dispatchEvent(new Event("open"));
         }
      }
      
      private function §521423138372313850123423632234§(param1:KeyboardEvent) : void
      {
         if(AlertUtils.isCancelKey(param1.keyCode))
         {
            this.close();
         }
         else
         {
            this.§for set extends§(String.fromCharCode(param1.charCode));
            this.§5214238556238569123423632234§.text = "";
         }
      }
      
      public function get §throw catch const§() : Boolean
      {
         return this.§switch switch use§;
      }
      
      private function §import package do§() : void
      {
         if(§5214235917235930123423632234§.stage.focus == this.§5214238556238569123423632234§)
         {
            §5214235917235930123423632234§.stage.focus = null;
         }
      }
      
      public function set value(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§521423125632312576123423632234§ = "";
         this.§do each§.label = this.§521423125632312576123423632234§.toString();
         this.§true package do§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§5214236864236877123423632234§.length)
         {
            _loc2_ = this.§5214236864236877123423632234§.getItemAt(_loc3_);
            if(_loc2_[this.§import package while§] == param1)
            {
               this.§true package do§ = _loc2_;
               this.§521423125632312576123423632234§ = this.§true package do§[this.§import package while§];
               this.§do each§.label = this.§521423125632312576123423632234§.toString();
               this.§521423110602311073123423632234§.selectedIndex = _loc3_;
               this.§521423110602311073123423632234§.scrollToSelected();
            }
            _loc3_++;
         }
         dispatchEvent(new Event("change"));
      }
      
      public function get §521423130742313087123423632234§() : Object
      {
         return this.§true package do§;
      }
      
      protected function §null package for§() : List
      {
         return this.§521423110602311073123423632234§;
      }
      
      protected function §set package try§(param1:MouseEvent) : void
      {
         if(this.§throw catch const§)
         {
            this.close();
         }
         else
         {
            this.§5214233268233281123423632234§();
         }
      }
      
      public function §in for switch§(param1:Object, param2:int) : void
      {
         this.§5214236864236877123423632234§.replaceItemAt(param1,param2);
      }
      
      private function §5214231776231789123423632234§(param1:MouseEvent) : void
      {
         this.§52142382321123423632234§ = false;
      }
      
      public function set §521423130742313087123423632234§(param1:Object) : void
      {
         if(param1 == null)
         {
            this.§true package do§ = null;
            this.§do each§.label = "";
         }
         else
         {
            this.§521423131792313192123423632234§ = this.§5214236864236877123423632234§.getItemIndex(param1);
            this.§true package do§ = this.§5214236864236877123423632234§.getItemAt(this.§521423131792313192123423632234§);
            this.§do each§.label = param1[this.§import package while§];
         }
         dispatchEvent(new Event("change"));
      }
      
      public function §false set final§() : void
      {
         this.§5214236864236877123423632234§ = new DataProvider();
         this.§521423110602311073123423632234§.dataProvider = this.§5214236864236877123423632234§;
         this.§do each§.label = "";
      }
      
      private function §in package dynamic§(param1:MouseEvent) : void
      {
         if(!this.§52142382321123423632234§)
         {
            this.close();
         }
      }
      
      public function setRenderer(param1:Class) : void
      {
         this.§521423110602311073123423632234§.setStyle("cellRenderer",param1);
      }
      
      protected function init() : void
      {
         this.§5214238556238569123423632234§ = new TextField();
         this.§5214238556238569123423632234§.visible = false;
         this.§5214238556238569123423632234§.type = "input";
         this.§521423139392313952123423632234§ = new §5214231141231154123423632234§();
         this.§521423139392313952123423632234§.x = -10;
         this.§521423139392313952123423632234§.y = 7;
         addChild(this.§5214239668239681123423632234§);
         addChild(this.§521423110602311073123423632234§);
         addChild(this.§do each§);
         addChild(this.§521423139392313952123423632234§);
         this.§5214239668239681123423632234§.y = 5;
         this.§521423110602311073123423632234§.y = 33;
         this.§521423110602311073123423632234§.x = 3;
         this.§521423110602311073123423632234§.setSize(144,241);
         this.§521423110602311073123423632234§.rowHeight = 20;
         this.§521423110602311073123423632234§.dataProvider = this.§5214236864236877123423632234§;
         this.setRenderer(§5214239525239538123423632234§);
         ScrollStyleUtils.setGrayStyle(this.§521423110602311073123423632234§);
         this.§521423110602311073123423632234§.focusEnabled = false;
         this.§521423110602311073123423632234§.visible = false;
         this.§5214239668239681123423632234§.visible = false;
         this.§do each§.addEventListener("click",this.§set package try§);
      }
      
      private function §with set else§() : void
      {
         this.§521423110602311073123423632234§.addEventListener("itemClick",this.§521423116502311663123423632234§);
         this.§5214238556238569123423632234§.addEventListener("keyUp",this.§521423138372313850123423632234§);
         §5214235917235930123423632234§.stage.addEventListener("click",this.§in package dynamic§);
         this.addEventListener("rollOver",this.§native const include§);
         this.addEventListener("rollOut",this.§5214231776231789123423632234§);
      }
      
      public function set label(param1:String) : void
      {
         this.§521423139392313952123423632234§.text = param1;
         this.§521423139392313952123423632234§.autoSize = "right";
      }
      
      public function §set set class§(param1:String, param2:Object) : int
      {
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         while(_loc4_ < this.§5214236864236877123423632234§.length)
         {
            _loc3_ = this.§5214236864236877123423632234§.getItemAt(_loc4_);
            if(_loc3_[param1] == param2)
            {
               return _loc4_;
            }
            _loc4_++;
         }
         return -1;
      }
      
      public function set §5214235444235457123423632234§(param1:Number) : void
      {
         this.§native set default§ = param1;
         this.§5214233910233923123423632234§();
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§5214233910233923123423632234§();
      }
      
      private function removeEvents() : void
      {
         this.§5214238556238569123423632234§.removeEventListener("keyUp",this.§521423138372313850123423632234§);
         this.§521423110602311073123423632234§.removeEventListener("itemClick",this.§521423116502311663123423632234§);
         §5214235917235930123423632234§.stage.removeEventListener("click",this.§in package dynamic§);
         this.removeEventListener("rollOver",this.§native const include§);
         this.removeEventListener("rollOut",this.§5214231776231789123423632234§);
      }
      
      public function get §do use for§() : Number
      {
         return this.§521423110602311073123423632234§.rowHeight;
      }
      
      public function §5214231744231757123423632234§() : int
      {
         return this.§521423139392313952123423632234§.width;
      }
      
      public function addItem(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§5214236864236877123423632234§.addItem(param1);
         _loc2_ = this.§5214236864236877123423632234§.getItemAt(0);
         this.§true package do§ = _loc2_;
         this.§do each§.label = _loc2_[this.§import package while§];
      }
      
      protected function get §5214239668239681123423632234§() : §const set default§
      {
         if(!this.§break get§)
         {
            this.§break get§ = new §const set default§(100,275);
         }
         return this.§break get§;
      }
      
      protected function §521423116502311663123423632234§(param1:ListEvent) : void
      {
         var _loc2_:Object = param1.item;
         this.§521423131792313192123423632234§ = param1.index;
         if(_loc2_.rang == 0)
         {
            this.§do each§.label = _loc2_[this.§import package while§];
            this.§true package do§ = _loc2_;
         }
         this.close();
         dispatchEvent(new Event("change"));
      }
      
      public function sortOn(param1:Object, param2:Object = null) : void
      {
         var _loc3_:Object = null;
         this.§5214236864236877123423632234§.sortOn(param1,param2);
         if(this.§5214236864236877123423632234§.length > 0)
         {
            _loc3_ = this.§5214236864236877123423632234§.getItemAt(0);
            this.§true package do§ = _loc3_;
            this.§521423125632312576123423632234§ = this.§true package do§[this.§import package while§];
            this.§do each§.label = _loc3_[this.§import package while§];
         }
      }
      
      public function get value() : Object
      {
         return this.§521423125632312576123423632234§;
      }
      
      public function §5214234522234535123423632234§(param1:int) : void
      {
         if(param1 >= this.§5214236864236877123423632234§.length)
         {
            return;
         }
         this.§true package do§ = this.§5214236864236877123423632234§.getItemAt(param1);
         this.§521423125632312576123423632234§ = this.§true package do§[this.§import package while§];
         this.§do each§.label = this.§521423125632312576123423632234§.toString();
         this.§521423110602311073123423632234§.selectedIndex = param1;
         this.§521423110602311073123423632234§.scrollToSelected();
         dispatchEvent(new Event("change"));
      }
      
      private function §native const include§(param1:MouseEvent) : void
      {
         this.§52142382321123423632234§ = true;
      }
      
      public function §for set extends§(param1:String) : Object
      {
         var _loc2_:Object = null;
         var _loc3_:uint = this.§5214236864236877123423632234§.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = this.§5214236864236877123423632234§.getItemAt(_loc4_);
            if(_loc2_[this.§import package while§].substr(0,1).toLowerCase() == param1.toLowerCase() && _loc2_.rang == 0)
            {
               this.§true package do§ = _loc2_;
               this.§521423125632312576123423632234§ = this.§true package do§[this.§import package while§];
               this.§do each§.label = this.§521423125632312576123423632234§.toString();
               this.§521423110602311073123423632234§.selectedIndex = _loc4_;
               this.§521423110602311073123423632234§.verticalScrollPosition = _loc4_ * 20;
               dispatchEvent(new Event("change"));
               return _loc2_;
            }
            _loc4_++;
         }
         return null;
      }
      
      protected function close() : void
      {
         if(this.§throw catch const§)
         {
            this.removeEvents();
            this.§5214239668239681123423632234§.visible = this.§521423110602311073123423632234§.visible = false;
            removeDisplayObject(this.§5214238556238569123423632234§);
            this.§import package do§();
            this.§switch switch use§ = false;
         }
      }
      
      public function get §5214235687235700123423632234§() : int
      {
         return this.§521423131792313192123423632234§;
      }
      
      override public function set height(param1:Number) : void
      {
         this.§do finally set§ = param1;
         this.§5214233910233923123423632234§();
      }
      
      protected function §5214233910233923123423632234§() : void
      {
         this.§5214239668239681123423632234§.width = this.§5214237851237864123423632234§ + this.§native set default§;
         this.§5214239668239681123423632234§.height = this.§do finally set§ - 2;
         this.§do each§.width = this.§5214237851237864123423632234§;
         this.§521423110602311073123423632234§.setSize(this.§5214237851237864123423632234§ + this.§native set default§,this.§do finally set§ - 34);
         this.§521423110602311073123423632234§.invalidate();
      }
   }
}

