package §var set var§
{
   public class §5214237383237396123423632234§
   {
      
      private var §do use static§:Number;
      
      private var §5214231714231727123423632234§:Number;
      
      private var §5214231690231703123423632234§:Number;
      
      private var §5214234563234576123423632234§:Number;
      
      private var §5214238419238432123423632234§:Number;
      
      public function §5214237383237396123423632234§()
      {
         super();
      }
      
      public function §521423120402312053123423632234§(param1:Number) : Number
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§do use static§ < this.§5214231714231727123423632234§)
         {
            _loc2_ = this.§5214231690231703123423632234§ * param1;
            _loc3_ = (this.§5214234563234576123423632234§ + 0.5 * _loc2_) * param1;
            this.§5214234563234576123423632234§ += _loc2_;
            _loc4_ = this.§5214231714231727123423632234§ - this.§do use static§;
            if(_loc4_ < _loc3_)
            {
               _loc3_ = _loc4_;
            }
            this.§do use static§ += _loc3_;
            return _loc3_ * this.§5214238419238432123423632234§;
         }
         return 0;
      }
      
      public function init(param1:Number, param2:Number, param3:Number) : void
      {
         this.§5214231714231727123423632234§ = param2 - param1;
         if(this.§5214231714231727123423632234§ < 0)
         {
            this.§5214231714231727123423632234§ = -this.§5214231714231727123423632234§;
            this.§5214238419238432123423632234§ = -1;
         }
         else
         {
            this.§5214238419238432123423632234§ = 1;
         }
         if(this.§5214231714231727123423632234§ > 3.141592653589793)
         {
            this.§5214238419238432123423632234§ = -this.§5214238419238432123423632234§;
            this.§5214231714231727123423632234§ = 2 * 3.141592653589793 - this.§5214231714231727123423632234§;
         }
         this.§5214231690231703123423632234§ = param3 * this.§5214231714231727123423632234§;
         this.§5214234563234576123423632234§ = 0;
         this.§do use static§ = 0;
      }
      
      public function §5214232173232186123423632234§() : void
      {
         this.§5214231690231703123423632234§ = -this.§5214231690231703123423632234§;
      }
   }
}

