package §set switch use§
{
   import §5214236944236957123423632234§.DiscreteSprite;
   import alternativa.tanks.models.service.ClanMembersDataService;
   import fl.controls.List;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import §super for import§.§switch package for§;
   import utils.ScrollStyleUtils;
   
   public class §521423130152313028123423632234§ extends DiscreteSprite
   {
      
      public static var §while for package§:IUserInfoService;
      
      public static var §521423112062311219123423632234§:ClanMembersDataService;
      
      private var §override const finally§:§switch package for§ = new §switch package for§();
      
      private var §521423110602311073123423632234§:List = new List();
      
      protected var §if switch dynamic§:Dictionary = new Dictionary();
      
      private var §5214237851237864123423632234§:int;
      
      private var §do finally set§:int;
      
      private var §extends catch default§:§5214232519232532123423632234§ = new §5214232519232532123423632234§();
      
      public function §521423130152313028123423632234§()
      {
         super();
         addChild(this.§extends catch default§);
         this.§521423110602311073123423632234§.y = 20;
         this.§521423110602311073123423632234§.rowHeight = 20;
         this.§521423110602311073123423632234§.setStyle("cellRenderer",§5214235245235258123423632234§);
         this.§521423110602311073123423632234§.focusEnabled = true;
         this.§521423110602311073123423632234§.selectable = false;
         ScrollStyleUtils.setGreenStyle(this.§521423110602311073123423632234§);
         this.§override const finally§.§5214233046233059123423632234§ = this.§521423102822310295123423632234§;
         this.§521423110602311073123423632234§.dataProvider = this.§override const finally§;
         addChild(this.§521423110602311073123423632234§);
         ScrollStyleUtils.setGreenStyle(this.§521423110602311073123423632234§);
         addEventListener("addedToStage",this.§class const var§);
         addEventListener("removedFromStage",this.§521423109452310958123423632234§);
      }
      
      public function §super catch use§(param1:Object) : void
      {
         this.§override const finally§.addItem(param1);
         this.§521423120402312053123423632234§(param1);
      }
      
      protected function §5214233553233566123423632234§(param1:Object) : void
      {
         this.§if switch dynamic§[param1] = true;
      }
      
      private function §521423109452310958123423632234§(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc2_:Object = null;
         stage.removeEventListener("resize",this.§52142326923282123423632234§);
         _loc3_ = 0;
         while(_loc3_ < this.§override const finally§.length)
         {
            _loc2_ = this.§override const finally§.getItemAt(_loc3_);
            _loc2_.isNew = false;
            _loc3_++;
         }
      }
      
      private function §class const var§(param1:Event) : void
      {
         stage.addEventListener("resize",this.§52142326923282123423632234§);
         this.§52142326923282123423632234§();
      }
      
      private function §default const else§() : void
      {
         this.§override const finally§.sortOn(["permissionIndex","date"],[16,0x10 | 2]);
      }
      
      protected function §5214234472234485123423632234§(param1:Object) : Boolean
      {
         return param1 in this.§if switch dynamic§;
      }
      
      private function §52142326923282123423632234§(param1:Event = null) : void
      {
         this.§521423110602311073123423632234§.height = this.§do finally set§ - 20;
         var _loc2_:Boolean = this.§521423110602311073123423632234§.maxVerticalScrollPosition > 0;
         this.§extends catch default§.width = this.§5214237851237864123423632234§;
         this.§521423110602311073123423632234§.width = _loc2_ ? this.§5214237851237864123423632234§ + 8 : this.§5214237851237864123423632234§;
      }
      
      private function §521423120402312053123423632234§(param1:Object = null) : void
      {
         if(param1 != null)
         {
            this.§521423102822310295123423632234§(param1);
         }
         this.§default const else§();
         this.§52142326923282123423632234§();
      }
      
      override public function get width() : Number
      {
         return this.§5214237851237864123423632234§;
      }
      
      override public function get height() : Number
      {
         return this.§do finally set§;
      }
      
      private function §521423102822310295123423632234§(param1:Object) : void
      {
         if(!this.§5214234472234485123423632234§(param1))
         {
            this.§5214233553233566123423632234§(param1);
         }
      }
      
      override public function set height(param1:Number) : void
      {
         this.§do finally set§ = param1;
         this.§52142326923282123423632234§();
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§52142326923282123423632234§();
      }
      
      public function §default catch super§(param1:String) : void
      {
         var _loc2_:int = this.§override const finally§.§5214236930236943123423632234§(param1);
         if(_loc2_ >= 0)
         {
            this.§override const finally§.removeItemAt(_loc2_);
         }
         this.§521423120402312053123423632234§();
      }
      
      public function §5214233993234006123423632234§(param1:Vector.<Object>) : void
      {
         this.§override const finally§.removeAll();
         for each(var _loc2_ in param1)
         {
            this.§override const finally§.addItem(_loc2_);
         }
         this.§521423120402312053123423632234§();
      }
   }
}

