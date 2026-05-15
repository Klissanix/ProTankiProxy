package §5214232472232485123423632234§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import §include else§.§52142356823581123423632234§;
   
   public class §521423123222312335123423632234§ extends Sprite
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      protected var §5214235191235204123423632234§:Vector.<Number>;
      
      protected var §5214231073231086123423632234§:Vector.<String>;
      
      protected var §finally set do§:int = 8;
      
      protected var §521423133312313344123423632234§:int = 8;
      
      protected var §5214237851237864123423632234§:int = 800;
      
      public function §521423123222312335123423632234§()
      {
         var _loc1_:int = 0;
         var _loc2_:§import switch package§ = null;
         this.§5214235191235204123423632234§ = new Vector.<Number>();
         super();
         this.§5214231073231086123423632234§ = Vector.<String>([§5214236363236376123423632234§.getText("STATISTICS_HEADER_NUMBER"),§5214236363236376123423632234§.getText("STATISTICS_HEADER_RANK"),§5214236363236376123423632234§.getText("STATISTICS_HEADER_CALLSIGN"),§5214236363236376123423632234§.getText("STATISTICS_HEADER_SCORE"),§5214236363236376123423632234§.getText("STATISTICS_HEADER_KILLS"),§5214236363236376123423632234§.getText("STATISTICS_HEADER_DEATHS"),§5214236363236376123423632234§.getText("STATISTICS_HEADER_RATIO"),§5214236363236376123423632234§.getText("STATISTICS_HEADER_WEALTH"),§5214236363236376123423632234§.getText("STATISTICS_HEADER_RATING")]);
         while(_loc1_ < 9)
         {
            _loc2_ = new §import switch package§(_loc1_ < 1 || _loc1_ > 2);
            _loc2_.label = this.§5214231073231086123423632234§[_loc1_];
            _loc2_.height = 18;
            _loc2_.§each const implements§ = _loc1_;
            addChild(_loc2_);
            if(_loc1_ > 0)
            {
               _loc2_.addEventListener("click",this.§521423100592310072123423632234§);
            }
            _loc1_++;
         }
         this.§5214233910233923123423632234§();
      }
      
      protected function §5214233910233923123423632234§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:§import switch package§ = null;
         var _loc1_:int = this.§5214237851237864123423632234§ - 365;
         this.§5214235191235204123423632234§ = Vector.<Number>([0,55,180,_loc1_,_loc1_ + 60,_loc1_ + 130,_loc1_ + 180,_loc1_ + 220,_loc1_ + 285,this.§5214237851237864123423632234§ - 1]);
         while(_loc2_ < 9)
         {
            _loc3_ = getChildAt(_loc2_) as §import switch package§;
            _loc3_.width = this.§5214235191235204123423632234§[_loc2_ + 1] - this.§5214235191235204123423632234§[_loc2_] - 2;
            _loc3_.x = this.§5214235191235204123423632234§[_loc2_];
            _loc3_.selected = _loc2_ == this.§finally set do§;
            _loc2_++;
         }
      }
      
      protected function §521423100592310072123423632234§(param1:MouseEvent) : void
      {
         var _loc2_:§import switch package§ = param1.currentTarget as §import switch package§;
         this.§finally set do§ = _loc2_.§each const implements§;
         if(this.§finally set do§ != this.§521423133312313344123423632234§)
         {
            this.§5214233910233923123423632234§();
            dispatchEvent(new §52142356823581123423632234§("StatListUpdateSort",0,0,this.§finally set do§));
            this.§521423133312313344123423632234§ = this.§finally set do§;
         }
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§5214233910233923123423632234§();
      }
   }
}

