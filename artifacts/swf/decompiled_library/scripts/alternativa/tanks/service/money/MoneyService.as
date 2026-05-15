package alternativa.tanks.service.money
{
   import §5214238872238885123423632234§.BuyCrystalsAlert;
   import alternativa.tanks.service.panel.IPanelView;
   
   public class MoneyService implements IMoneyService
   {
      
      public static var §import use with§:IPanelView;
      
      private var mask:int = 0;
      
      private var listeners:Vector.<§false catch case§>;
      
      private var §false false§:int = 0;
      
      private var §class var static§:int = 0;
      
      public function MoneyService()
      {
         super();
         this.listeners = new Vector.<§false catch case§>();
      }
      
      private static function b4ccfe8d(param1:int) : void
      {
         new BuyCrystalsAlert(param1);
      }
      
      private function e65ed38d(param1:int) : void
      {
         var _loc2_:§false catch case§ = null;
         §import use with§.getPanel().§5214236571236584123423632234§.§521423116802311693123423632234§ = param1;
         this.a3964b7d(param1);
         var _loc3_:int = 0;
         while(_loc3_ < this.listeners.length)
         {
            _loc2_ = this.listeners[_loc3_];
            _loc2_.crystalsChanged(param1);
            _loc3_++;
         }
      }
      
      public function removeListener(param1:§false catch case§) : void
      {
         var _loc2_:Number = this.listeners.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.listeners.removeAt(_loc2_);
         }
      }
      
      public function addListener(param1:§false catch case§) : void
      {
         if(this.listeners.indexOf(param1) == -1)
         {
            this.listeners[listeners.length] = param1;
         }
      }
      
      public function spend(param1:int) : void
      {
         this.e65ed38d(this.crystal - param1);
         this.§class var static§ += param1;
      }
      
      public function checkEnough(param1:int) : Boolean
      {
         if(this.crystal < param1)
         {
            b4ccfe8d(param1 - this.§false false§);
            return false;
         }
         return true;
      }
      
      private function a3964b7d(param1:int) : void
      {
         this.mask = Math.random() * 4294967295;
         this.§false false§ = param1 ^ this.mask;
      }
      
      public function init(param1:int) : void
      {
         this.e65ed38d(param1);
      }
      
      public function changeCrystals(param1:int) : void
      {
         if(param1 < 0)
         {
            this.§class var static§ += param1;
            if(this.§class var static§ < 0)
            {
               param1 = this.§class var static§;
               this.§class var static§ = 0;
            }
            else
            {
               param1 = 0;
            }
         }
         this.e65ed38d(param1);
      }
      
      public function get crystal() : int
      {
         var _loc1_:int = this.§false false§ ^ this.mask;
         this.a3964b7d(_loc1_);
         return _loc1_;
      }
   }
}

