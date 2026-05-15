package §import implements§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Sprite;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §52142357723590123423632234§ extends Sprite
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §521423116452311658123423632234§:Vector.<HeaderData>;
      
      protected var §5214235191235204123423632234§:Vector.<Number>;
      
      protected var §5214237851237864123423632234§:int = 800;
      
      private var §52142365323666123423632234§:§5214231141231154123423632234§;
      
      public function §52142357723590123423632234§()
      {
         var _loc1_:§5214234195234208123423632234§ = null;
         §5214235191235204123423632234§ = new Vector.<Number>();
         super();
         §521423116452311658123423632234§ = Vector.<HeaderData>([new HeaderData(§5214236363236376123423632234§.getText("FRIENDS_NAME"),"left",2),new HeaderData(§5214236363236376123423632234§.getText("FRIENDS_BATTLE"),"left",2)]);
         var _loc2_:int = int(§521423116452311658123423632234§.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = new §5214234195234208123423632234§(§521423116452311658123423632234§[_loc3_].align);
            _loc1_.label = §521423116452311658123423632234§[_loc3_].text;
            _loc1_.§521423138812313894123423632234§(§521423116452311658123423632234§[_loc3_].posX);
            _loc1_.height = 18;
            addChild(_loc1_);
            _loc3_++;
         }
         this.§52142365323666123423632234§ = new §5214231141231154123423632234§();
         this.§52142365323666123423632234§.color = 860685;
         this.§52142365323666123423632234§.mouseEnabled = false;
         this.§52142365323666123423632234§.text = §5214236363236376123423632234§.getText("SERVER_LABEL_UPPERCASE");
         this.§52142365323666123423632234§.autoSize = "none";
         this.§52142365323666123423632234§.align = "right";
         this.§52142365323666123423632234§.width = 100;
         addChild(this.§52142365323666123423632234§);
         this.§5214233910233923123423632234§();
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§5214233910233923123423632234§();
      }
      
      protected function §5214233910233923123423632234§() : void
      {
         var _loc1_:§5214234195234208123423632234§ = null;
         this.§5214235191235204123423632234§ = Vector.<Number>([0,this.§5214237851237864123423632234§ / 2,this.§5214237851237864123423632234§ - 1]);
         var _loc2_:int = int(§521423116452311658123423632234§.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = getChildAt(_loc3_) as §5214234195234208123423632234§;
            _loc1_.width = this.§5214235191235204123423632234§[_loc3_ + 1] - this.§5214235191235204123423632234§[_loc3_] - 2;
            _loc1_.x = this.§5214235191235204123423632234§[_loc3_];
            _loc3_++;
         }
         if(this.§52142365323666123423632234§ != null)
         {
            this.§52142365323666123423632234§.x = this.§5214237851237864123423632234§ - this.§52142365323666123423632234§.width - 6;
         }
      }
   }
}

class HeaderData
{
   
   public var text:String;
   
   public var align:String;
   
   public var posX:int;
   
   public function HeaderData(param1:String, param2:String, param3:int)
   {
      super();
      this.text = param1;
      this.align = param2;
      this.posX = param3;
   }
}
