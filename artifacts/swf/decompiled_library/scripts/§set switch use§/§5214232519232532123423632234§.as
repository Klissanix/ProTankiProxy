package §set switch use§
{
   import §5214236944236957123423632234§.DiscreteSprite;
   import alternativa.osgi.service.locale.ILocaleService;
   import §super for import§.§5214235193235206123423632234§;
   
   public class §5214232519232532123423632234§ extends DiscreteSprite
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §521423116452311658123423632234§:Vector.<HeaderData>;
      
      private static var §extends catch default§:§5214232519232532123423632234§;
      
      protected static var §5214237851237864123423632234§:Number = 840;
      
      private static var §5214231581231594123423632234§:Number = 2;
      
      private static var §521423129582312971123423632234§:Vector.<Number> = Vector.<Number>([0.16,0.2,0.08,0.08,0.08,0.08,0.16,0.16]);
      
      private static var §5214231044231057123423632234§:Vector.<Number> = new Vector.<Number>();
      
      private static var §throw switch implements§:Vector.<Number> = Vector.<Number>([5,4,3,2,6,7,1]);
      
      public function §5214232519232532123423632234§()
      {
         var _loc2_:int = 0;
         var _loc3_:§5214235193235206123423632234§ = null;
         super();
         §extends catch default§ = this;
         §521423116452311658123423632234§ = new <HeaderData>[new HeaderData(§5214236363236376123423632234§.getText("CLAN_MEMBER_NAME"),"left",2,180),new HeaderData(§5214236363236376123423632234§.getText("CLAN_MEMBER_POSITION"),"left",2,168),new HeaderData(§5214236363236376123423632234§.getText("CLAN_MEMBER_COLUMN_EXPERIENCE"),"left",2,67),new HeaderData(§5214236363236376123423632234§.getText("CLAN_MEMBER_COLUMN_DESTROYED"),"left",2,80),new HeaderData(§5214236363236376123423632234§.getText("CLAN_MEMBER_COLUMN_LOST"),"left",2,67),new HeaderData(§5214236363236376123423632234§.getText("CLAN_MEMBER_COLUMN_KILL_DEATH_RATIO"),"left",2,53),new HeaderData(§5214236363236376123423632234§.getText("CLAN_MEMBER_DAYS"),"left",2,134),new HeaderData(§5214236363236376123423632234§.getText("CLAN_MEMBER_LAST_VISIT"),"left",2,134)];
         var _loc1_:int = int(§521423116452311658123423632234§.length);
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = new §5214235193235206123423632234§(§521423116452311658123423632234§[_loc2_].align);
            _loc3_.label = §521423116452311658123423632234§[_loc2_].text;
            _loc3_.§521423138812313894123423632234§(§521423116452311658123423632234§[_loc2_].posX);
            _loc3_.height = 18;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      public static function §5214232983232996123423632234§() : Number
      {
         return §package const do§(1);
      }
      
      public static function §null set catch§(param1:int) : Number
      {
         return §extends catch default§.getChildAt(param1).x;
      }
      
      public static function §package const do§(param1:int) : Number
      {
         if(§extends catch default§.getChildAt(param1).visible)
         {
            return Math.max(§extends catch default§.getChildAt(param1).width,§521423116452311658123423632234§[param1].minWidth);
         }
         return 0;
      }
      
      protected function resize() : void
      {
         var _loc6_:int = 0;
         var _loc8_:§5214235193235206123423632234§ = null;
         var _loc3_:Number = NaN;
         §5214231044231057123423632234§ = new Vector.<Number>();
         var _loc4_:int = 0;
         if(§5214237851237864123423632234§ <= 985)
         {
            _loc4_ = 5 - (§5214237851237864123423632234§ - 585) / 80;
         }
         §5214231044231057123423632234§ = §throw switch implements§.slice(0,_loc4_);
         var _loc1_:Number = 0;
         _loc6_ = 0;
         while(_loc6_ < §521423116452311658123423632234§.length)
         {
            if(§5214231044231057123423632234§.indexOf(_loc6_) < 0)
            {
               _loc1_ += §521423129582312971123423632234§[_loc6_];
            }
            _loc6_++;
         }
         var _loc5_:Number = 0;
         var _loc7_:Vector.<Number> = new Vector.<Number>();
         _loc6_ = 0;
         while(_loc6_ < §521423116452311658123423632234§.length)
         {
            _loc7_[_loc6_] = §521423129582312971123423632234§[_loc6_] / _loc1_;
            _loc5_ += _loc7_[_loc6_];
            _loc6_++;
         }
         var _loc2_:int = 1;
         _loc6_ = 0;
         while(_loc6_ < §521423116452311658123423632234§.length)
         {
            _loc8_ = getChildAt(_loc6_) as §5214235193235206123423632234§;
            if(§5214231044231057123423632234§.indexOf(_loc6_) < 0)
            {
               _loc8_.y = 1;
               _loc8_.x = _loc2_;
               _loc3_ = _loc7_[_loc6_] / _loc5_ * (§5214237851237864123423632234§ + 2 - §5214231581231594123423632234§ * (§521423129582312971123423632234§.length - §5214231044231057123423632234§.length + 1));
               _loc8_.width = Math.max(_loc3_,§521423116452311658123423632234§[_loc6_].minWidth);
               if(_loc6_ < §521423116452311658123423632234§.length - 1)
               {
                  _loc2_ += _loc8_.width + §5214231581231594123423632234§;
               }
               _loc8_.visible = true;
            }
            else
            {
               _loc8_.visible = false;
            }
            _loc6_++;
         }
         getChildAt(numChildren - 1).width = §5214237851237864123423632234§ + 3 - _loc2_ - 2 * §5214231581231594123423632234§;
      }
      
      override public function set width(param1:Number) : void
      {
         §5214237851237864123423632234§ = param1;
         this.resize();
      }
   }
}

class HeaderData
{
   
   public var text:String;
   
   public var align:String;
   
   public var posX:int;
   
   public var minWidth:Number;
   
   public function HeaderData(param1:String, param2:String, param3:int, param4:Number = 0)
   {
      super();
      this.text = param1;
      this.align = param2;
      this.posX = param3;
      this.minWidth = param4;
   }
}
