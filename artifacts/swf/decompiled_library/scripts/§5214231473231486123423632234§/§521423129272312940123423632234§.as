package §5214231473231486123423632234§
{
   import fl.controls.List;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import §super use return§.§try catch finally§;
   import utils.ScrollStyleUtils;
   
   public class §521423129272312940123423632234§ extends Sprite
   {
      
      public static var §use in§:IFriendInfoService;
      
      protected var §521423124312312444123423632234§:§try catch finally§;
      
      protected var §implements for true§:List;
      
      protected var §5214237851237864123423632234§:Number;
      
      protected var §do finally set§:Number;
      
      protected var §finally const get§:Dictionary;
      
      public function §521423129272312940123423632234§()
      {
         super();
      }
      
      public function get §override const finally§() : §try catch finally§
      {
         return this.§521423124312312444123423632234§;
      }
      
      public function resize(param1:Number, param2:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§do finally set§ = param2;
         var _loc3_:Boolean = this.§implements for true§.maxVerticalScrollPosition > 0;
         this.§implements for true§.width = _loc3_ ? this.§5214237851237864123423632234§ + 6 : this.§5214237851237864123423632234§;
         this.§implements for true§.height = this.§do finally set§;
      }
      
      protected function init(param1:Object) : void
      {
         this.§finally const get§ = new Dictionary();
         this.§implements for true§ = new List();
         this.§implements for true§.rowHeight = 20;
         this.§implements for true§.setStyle("cellRenderer",param1);
         this.§implements for true§.focusEnabled = true;
         this.§implements for true§.selectable = false;
         this.§521423124312312444123423632234§ = new §try catch finally§();
         this.§implements for true§.dataProvider = this.§521423124312312444123423632234§;
         addChild(this.§implements for true§);
         ScrollStyleUtils.setGreenStyle(this.§implements for true§);
      }
      
      public function set §override const finally§(param1:§try catch finally§) : void
      {
         this.§521423124312312444123423632234§ = param1;
      }
      
      protected function §5214237522237535123423632234§(param1:FriendState) : void
      {
         var _loc2_:* = null;
         this.§521423124312312444123423632234§.removeAll();
         this.§521423124312312444123423632234§.§else for class§(false);
         var _loc3_:Vector.<String> = §use in§.getFriendsIdByState(param1);
         for each(_loc2_ in _loc3_)
         {
            this.§521423124312312444123423632234§.§super catch use§(_loc2_,false);
         }
         this.§521423124312312444123423632234§.§5214234287234300123423632234§();
      }
      
      protected function §false package§(param1:String, param2:String) : void
      {
         this.§521423124312312444123423632234§.§521423116042311617123423632234§(param1,param2);
         this.resize(this.§5214237851237864123423632234§,this.§do finally set§);
      }
      
      protected function §5214233553233566123423632234§(param1:Object) : void
      {
         this.§finally const get§[param1] = true;
      }
      
      protected function §5214234472234485123423632234§(param1:Object) : Boolean
      {
         return param1 in this.§finally const get§;
      }
   }
}

