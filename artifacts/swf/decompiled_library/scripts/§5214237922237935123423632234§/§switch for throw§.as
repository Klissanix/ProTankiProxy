package §5214237922237935123423632234§
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import §case catch override§.§const set default§;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §switch for throw§ extends Sprite
   {
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static const §extends for with§:int = 200;
      
      public static const §switch set set§:int = 137;
      
      public static const §each switch use§:int = 6;
      
      public static const §5214232034232047123423632234§:int = 3;
      
      public static const §do catch in§:int = 36;
      
      private var §521423101102310123123423632234§:§const set default§;
      
      private var §521423139392313952123423632234§:§5214231141231154123423632234§;
      
      private var §5214236983236996123423632234§:Vector.<§5214236923236936123423632234§>;
      
      private var §5214231376231389123423632234§:int = -1;
      
      private var §5214237851237864123423632234§:int = 200;
      
      public function §switch for throw§()
      {
         super();
         this.init();
      }
      
      public function destroy() : void
      {
         var _loc2_:§5214236923236936123423632234§ = null;
         this.§true package final§();
         var _loc3_:int = int(this.§5214236983236996123423632234§.length);
         var _loc1_:int = 0;
         while(_loc1_ < _loc3_)
         {
            _loc2_ = this.§5214236983236996123423632234§[_loc1_];
            _loc2_.removeEventListener("rollOver",this.§5214231706231719123423632234§);
            _loc2_.removeEventListener("rollOut",this.§finally set for§);
            _loc2_.removeEventListener("click",this.§get catch break§);
            removeChild(_loc2_);
            _loc1_++;
         }
         this.§5214231376231389123423632234§ = -1;
         this.§5214236983236996123423632234§ = new Vector.<§5214236923236936123423632234§>();
      }
      
      private function §null var class§(param1:KeyboardEvent) : void
      {
         var _loc2_:§finally set const§ = null;
         if(param1.keyCode == 9 || param1.keyCode == 27)
         {
            dispatchEvent(new §finally set const§("FreeUidsFormEvent.FOCUS_OUT"));
         }
         if(param1.keyCode == 40)
         {
            this.§5214235750235763123423632234§();
         }
         if(param1.keyCode == 38)
         {
            this.§const catch null§();
         }
         if(param1.keyCode == 13 && this.§use switch§())
         {
            _loc2_ = new §finally set const§("FreeUidsFormEvent.CLICK_ITEM");
            _loc2_.uid = this.§5214236983236996123423632234§[this.§5214231376231389123423632234§].uid;
            dispatchEvent(_loc2_);
         }
      }
      
      private function §5214239582239595123423632234§() : void
      {
         if(this.§use switch§())
         {
            this.§5214236983236996123423632234§[this.§5214231376231389123423632234§].§default catch for§(false);
            this.§5214231376231389123423632234§ = -1;
         }
      }
      
      public function §52142342923442123423632234§(param1:Vector.<String>) : void
      {
         var _loc4_:§5214236923236936123423632234§ = null;
         this.destroy();
         var _loc2_:int = int(param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = new §5214236923236936123423632234§(this.§5214237851237864123423632234§,_loc3_,param1[_loc3_]);
            if(_loc3_ == 0)
            {
               _loc4_.y = 36;
            }
            else
            {
               _loc4_.y = this.§5214236983236996123423632234§[_loc3_ - 1].y + this.§5214236983236996123423632234§[_loc3_ - 1].height;
            }
            _loc4_.addEventListener("rollOver",this.§5214231706231719123423632234§);
            _loc4_.addEventListener("rollOut",this.§finally set for§);
            _loc4_.addEventListener("click",this.§get catch break§);
            addChild(_loc4_);
            this.§5214236983236996123423632234§[§5214236983236996123423632234§.length] = _loc4_;
            _loc3_++;
         }
         this.§521423124492312462123423632234§ = 0;
         this.show();
      }
      
      public function set §521423124492312462123423632234§(param1:int) : void
      {
         if(this.§5214236983236996123423632234§.length == 0 || this.§5214231376231389123423632234§ == param1)
         {
            return;
         }
         this.§5214239582239595123423632234§();
         if(param1 > this.§5214235591235604123423632234§())
         {
            this.§5214231376231389123423632234§ = 0;
         }
         else
         {
            this.§5214231376231389123423632234§ = param1;
         }
         if(this.§5214231376231389123423632234§ < 0)
         {
            this.§5214231376231389123423632234§ = this.§5214235591235604123423632234§();
         }
         this.§5214236983236996123423632234§[this.§5214231376231389123423632234§].§default catch for§(true);
      }
      
      private function §get catch break§(param1:MouseEvent) : void
      {
         var _loc3_:§5214236923236936123423632234§ = §5214236923236936123423632234§(param1.currentTarget);
         var _loc2_:§finally set const§ = new §finally set const§("FreeUidsFormEvent.CLICK_ITEM");
         _loc2_.uid = _loc3_.uid;
         dispatchEvent(_loc2_);
      }
      
      private function §const catch null§() : void
      {
         if(this.§use switch§())
         {
            --this.§521423124492312462123423632234§;
         }
         else
         {
            this.§521423124492312462123423632234§ = this.§5214235591235604123423632234§();
         }
      }
      
      private function §5214235591235604123423632234§() : int
      {
         return this.§5214236983236996123423632234§.length - 1;
      }
      
      public function show() : void
      {
         this.visible = true;
         §5214235917235930123423632234§.stage.addEventListener("keyDown",this.§null var class§);
      }
      
      private function init() : void
      {
         this.visible = false;
         this.§5214236983236996123423632234§ = new Vector.<§5214236923236936123423632234§>();
         this.§521423101102310123123423632234§ = new §const set default§(this.§5214237851237864123423632234§,137);
         addChild(this.§521423101102310123123423632234§);
         this.§521423139392313952123423632234§ = new §5214231141231154123423632234§();
         this.§521423139392313952123423632234§.width = this.§5214237851237864123423632234§;
         this.§521423139392313952123423632234§.text = §5214236363236376123423632234§.getText("STRING_FREE_UIDS_FORM_HEADER");
         this.§521423139392313952123423632234§.x = 6;
         this.§521423139392313952123423632234§.y = 3;
         addChild(this.§521423139392313952123423632234§);
      }
      
      private function §5214235750235763123423632234§() : void
      {
         if(this.§use switch§())
         {
            ++this.§521423124492312462123423632234§;
         }
         else
         {
            this.§521423124492312462123423632234§ = 0;
         }
      }
      
      private function §finally set for§(param1:MouseEvent) : void
      {
         this.§5214239582239595123423632234§();
      }
      
      private function §use switch§() : Boolean
      {
         return this.§5214231376231389123423632234§ != -1;
      }
      
      public function §true package final§() : void
      {
         this.visible = false;
         §5214235917235930123423632234§.stage.removeEventListener("keyDown",this.§null var class§);
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§521423101102310123123423632234§.width = this.§5214237851237864123423632234§;
         this.§521423139392313952123423632234§.width = this.§5214237851237864123423632234§;
      }
      
      private function §5214231706231719123423632234§(param1:MouseEvent) : void
      {
         var _loc2_:§5214236923236936123423632234§ = §5214236923236936123423632234§(param1.currentTarget);
         this.§521423124492312462123423632234§ = _loc2_.§521423101872310200123423632234§;
      }
      
      override public function get width() : Number
      {
         return this.§5214237851237864123423632234§;
      }
      
      public function get §521423124492312462123423632234§() : int
      {
         return this.§5214231376231389123423632234§;
      }
   }
}

