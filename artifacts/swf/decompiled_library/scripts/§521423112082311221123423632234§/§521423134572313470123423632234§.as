package §521423112082311221123423632234§
{
   import §5214236944236957123423632234§.DiscreteSprite;
   import alternativa.osgi.service.locale.ILocaleService;
   import §super for import§.§5214235193235206123423632234§;
   
   public class §521423134572313470123423632234§ extends DiscreteSprite
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §521423116452311658123423632234§:Vector.<HeaderData>;
      
      private static const §break override§:int = 2;
      
      public static var §5214235191235204123423632234§:Vector.<Number> = Vector.<Number>([1]);
      
      protected var §5214237851237864123423632234§:int = 800;
      
      private var §try catch package§:Vector.<§5214235193235206123423632234§>;
      
      public function §521423134572313470123423632234§()
      {
         var _loc2_:int = 0;
         var _loc3_:§5214235193235206123423632234§ = null;
         §try catch package§ = new Vector.<§5214235193235206123423632234§>();
         this.§try catch package§;
         super();
         §521423116452311658123423632234§ = Vector.<HeaderData>([new HeaderData(§5214236363236376123423632234§.getText("CLAN_MEMBER_NAME"),"left",2)]);
         var _loc1_:int = int(§521423116452311658123423632234§.length);
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = new §5214235193235206123423632234§(§521423116452311658123423632234§[_loc2_].align);
            _loc3_.label = §521423116452311658123423632234§[_loc2_].text;
            _loc3_.§521423138812313894123423632234§(§521423116452311658123423632234§[_loc2_].posX);
            _loc3_.height = 18;
            addChild(_loc3_);
            this.§try catch package§.push(_loc3_);
            _loc2_++;
         }
         this.align();
      }
      
      protected function align() : void
      {
         var _loc3_:int = 0;
         var _loc4_:§5214235193235206123423632234§ = null;
         var _loc2_:int = int(§521423116452311658123423632234§.length);
         var _loc1_:Number = 1;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.§try catch package§[_loc3_];
            _loc4_.width = §5214235191235204123423632234§[_loc3_] * (this.§5214237851237864123423632234§ + 2 - 2 * (§5214235191235204123423632234§.length + 1));
            _loc4_.x = _loc1_;
            _loc4_.y = 1;
            if(_loc3_ != _loc2_ - 1)
            {
               _loc1_ += _loc4_.width + 2;
            }
            _loc3_++;
         }
         this.§try catch package§[this.§try catch package§.length - 1].width = this.§5214237851237864123423632234§ + 3 - _loc1_ - 2 * 2;
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = Math.floor(param1);
         this.align();
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
