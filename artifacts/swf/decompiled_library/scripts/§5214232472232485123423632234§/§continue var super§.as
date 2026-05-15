package §5214232472232485123423632234§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.setTimeout;
   import §include else§.§52142356823581123423632234§;
   
   public class §continue var super§ extends Sprite
   {
      
      protected var §5214235191235204123423632234§:Array;
      
      protected var §5214231073231086123423632234§:Array;
      
      protected var §finally set do§:int = 1;
      
      protected var §521423133312313344123423632234§:int = 1;
      
      protected var §5214237851237864123423632234§:int = 800;
      
      public function §continue var super§()
      {
         var _loc2_:§import switch package§ = null;
         §5214235191235204123423632234§ = [];
         super();
         var _loc1_:ILocaleService = ILocaleService(OSGi.getInstance().getService(ILocaleService));
         this.§5214231073231086123423632234§ = [_loc1_.getText("REFERAL_STATISTICS_HEADER_CALLSIGN"),_loc1_.getText("REFERAL_STATISTICS_HEADER_INCOME")];
         var _loc3_:int = 0;
         while(_loc3_ < 2)
         {
            _loc2_ = new §import switch package§(_loc3_ == 1);
            _loc2_.label = this.§5214231073231086123423632234§[_loc3_];
            _loc2_.height = 18;
            _loc2_.§each const implements§ = _loc3_;
            addChild(_loc2_);
            _loc2_.addEventListener("click",this.§521423100592310072123423632234§);
            _loc3_++;
         }
         this.§5214233910233923123423632234§();
         setTimeout(dispatchEvent,0,new §52142356823581123423632234§("StatListUpdateSort",0,0,this.§finally set do§));
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§5214233910233923123423632234§();
      }
      
      protected function §5214233910233923123423632234§() : void
      {
         var _loc1_:§import switch package§ = null;
         var _loc3_:int = 0;
         var _loc2_:int = this.§5214237851237864123423632234§ - 345;
         this.§5214235191235204123423632234§ = [0,this.§5214237851237864123423632234§ - 120,this.§5214237851237864123423632234§ - 1];
         _loc3_ = 0;
         while(_loc3_ < 2)
         {
            _loc1_ = getChildAt(_loc3_) as §import switch package§;
            _loc1_.width = this.§5214235191235204123423632234§[_loc3_ + 1] - this.§5214235191235204123423632234§[_loc3_] - 2;
            _loc1_.x = this.§5214235191235204123423632234§[_loc3_];
            _loc1_.selected = _loc3_ == this.§finally set do§;
            _loc3_++;
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
   }
}

