package §finally catch with§
{
   import §5214238916238929123423632234§.§5214236162236175123423632234§;
   
   public class §function var do§
   {
      
      private var §function package implements§:RegExp;
      
      private var §dynamic switch override§:RegExp;
      
      private var §52142347923492123423632234§:RegExp;
      
      private var §521423127812312794123423632234§:Vector.<String>;
      
      public var §import catch package§:Boolean = false;
      
      public function §function var do§(param1:Vector.<String>)
      {
         super();
         this.§function package implements§ = /(https?:\/\/)?((([\w-\.]+)\.([a-z]{2,6}\.?))|(([а-я-\.]+)\.(рф\.?)))(\/[\w\.]*)*\/?([^\s\n]+)?/gi;
         this.§dynamic switch override§ = new RegExp(this.§function package implements§);
         this.§52142347923492123423632234§ = /[\[\]\{\}\|\*\(\)\@\$\^\'`~+№!]/gi;
         this.§521423127812312794123423632234§ = param1;
      }
      
      public function §521423135522313565123423632234§(param1:String) : String
      {
         var _loc2_:String = null;
         var _loc6_:§5214236162236175123423632234§ = null;
         var _loc7_:String = null;
         this.§function package implements§.lastIndex = 0;
         var _loc4_:String = "";
         var _loc5_:Array = this.§function package implements§.exec(param1);
         var _loc3_:int = 0;
         this.§import catch package§ = false;
         while(_loc5_ != null)
         {
            _loc4_ += param1.substr(_loc3_,_loc5_.index - _loc3_);
            _loc2_ = param1.substr(_loc5_.index,this.§function package implements§.lastIndex - _loc5_.index);
            _loc6_ = new §5214236162236175123423632234§(_loc2_.indexOf("http://") == -1 ? "http://" + _loc2_ : _loc2_);
            _loc7_ = _loc6_.§continue for import§;
            if(this.§521423127812312794123423632234§.indexOf(_loc7_) != -1 && !this.§521423120432312056123423632234§(_loc6_))
            {
               _loc4_ += " <u><a href=\'event:" + _loc6_ + "\'>" + _loc2_ + "</a></u> ";
               this.§import catch package§ = true;
            }
            else
            {
               _loc4_ += _loc2_;
            }
            _loc3_ = this.§function package implements§.lastIndex;
            _loc5_ = this.§function package implements§.exec(param1);
         }
         return _loc4_ + param1.substr(this.§function package implements§.lastIndex == 0 ? _loc3_ : this.§function package implements§.lastIndex);
      }
      
      private function §521423120432312056123423632234§(param1:§5214236162236175123423632234§) : Boolean
      {
         this.§dynamic switch override§.lastIndex = 0;
         if(this.§dynamic switch override§.exec(param1.§throw switch for§) != null)
         {
            return true;
         }
         this.§52142347923492123423632234§.lastIndex = 0;
         if(this.§52142347923492123423632234§.exec(param1.§do use continue§) != null)
         {
            return true;
         }
         this.§52142347923492123423632234§.lastIndex = 0;
         if(this.§52142347923492123423632234§.exec(param1.§52142390523918123423632234§) != null)
         {
            return true;
         }
         return false;
      }
   }
}

