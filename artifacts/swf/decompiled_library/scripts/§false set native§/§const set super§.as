package §false set native§
{
   import §5214236944236957123423632234§.DiscreteSprite;
   import alternativa.osgi.service.locale.ILocaleService;
   import §super for import§.§5214235193235206123423632234§;
   
   public class §const set super§ extends DiscreteSprite
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private static var §521423116452311658123423632234§:Vector.<String>;
      
      private static var §5214231581231594123423632234§:Number = 2;
      
      public static var §5214235191235204123423632234§:Vector.<Number> = Vector.<Number>([0.25,0.1,0.25,0.18,0.22]);
      
      public function §const set super§()
      {
         var _loc2_:int = 0;
         var _loc3_:§5214235193235206123423632234§ = null;
         super();
         §521423116452311658123423632234§ = Vector.<String>([§5214236363236376123423632234§.getText("CLAN_USER_CLAN_NAME"),§5214236363236376123423632234§.getText("CLAN_USER_CLAN_TAG"),§5214236363236376123423632234§.getText("CLAN_FOUNDER"),§5214236363236376123423632234§.getText("CLAN_USER_CLAN_NUMBER_MEMBERS"),§5214236363236376123423632234§.getText("CLAN_USER_CREATION_DATE")]);
         var _loc1_:int = int(§521423116452311658123423632234§.length);
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = new §5214235193235206123423632234§("left");
            _loc3_.label = §521423116452311658123423632234§[_loc2_];
            _loc3_.height = 18;
            _loc3_.y = 1;
            addChild(_loc3_);
            _loc2_++;
         }
         this.resize(900 - 2 * 11);
      }
      
      override public function set width(param1:Number) : void
      {
         this.resize(param1);
      }
      
      protected function resize(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:§5214235193235206123423632234§ = null;
         var _loc3_:int = int(§521423116452311658123423632234§.length);
         var _loc2_:Number = §5214231581231594123423632234§ - 1;
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = getChildAt(_loc4_) as §5214235193235206123423632234§;
            _loc5_.width = §5214235191235204123423632234§[_loc4_] * (param1 + 2 - §5214231581231594123423632234§ * (§5214235191235204123423632234§.length + 1));
            _loc5_.x = _loc2_;
            _loc5_.y = 1;
            if(_loc4_ != _loc3_ - 1)
            {
               _loc2_ += _loc5_.width + §5214231581231594123423632234§;
            }
            _loc4_++;
         }
         getChildAt(numChildren - 1).width = param1 + 3 - _loc2_ - 2 * §5214231581231594123423632234§;
      }
   }
}

