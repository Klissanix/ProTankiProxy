package §5214236800236813123423632234§
{
   import flash.utils.clearInterval;
   import flash.utils.getTimer;
   import flash.utils.setInterval;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   
   public class §include switch var§ implements §521423117662311779123423632234§
   {
      
      private static var §for for use§:int;
      
      private static var §null package const§:Vector.<§include switch var§> = new Vector.<§include switch var§>();
      
      private static var §5214239567239580123423632234§:Vector.<Object> = new Vector.<Object>(0,true);
      
      private var §const finally set§:uint;
      
      private var §try switch for§:int;
      
      private var §true for var§:Object = {};
      
      public function §include switch var§()
      {
         super();
      }
      
      private static function §5214236606236619123423632234§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:§include switch var§ = null;
         var _loc3_:int = getTimer();
         _loc2_ = §null package const§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ = §null package const§[_loc2_];
            _loc1_.onTick(_loc3_);
            _loc2_--;
         }
      }
      
      public static function §5214234500234513123423632234§() : void
      {
         if(§null package const§.length != 0)
         {
            clearInterval(§for for use§);
            §null package const§.length = 0;
         }
      }
      
      public function §521423133692313382123423632234§() : uint
      {
         return this.§const finally set§;
      }
      
      public function §throw package return§() : int
      {
         return this.§try switch for§;
      }
      
      private function §do const with§(param1:Class) : Vector.<Object>
      {
         var _loc2_:Vector.<Object> = this.§true for var§[param1];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         return §5214239567239580123423632234§;
      }
      
      public function close() : void
      {
         this.destroy();
      }
      
      public function destroy() : void
      {
         this.§5214235742235755123423632234§();
         this.§true for var§ = {};
      }
      
      public function §5214232580232593123423632234§(param1:Class, param2:Object) : void
      {
         var _loc3_:Vector.<Object> = this.§true for var§[param1];
         if(_loc3_ == null)
         {
            this.§true for var§[param1] = _loc3_ = new Vector.<Object>();
         }
         _loc3_[_loc3_.length] = param2;
      }
      
      public function §native var include§(param1:uint) : void
      {
         this.§const finally set§ = param1;
         this.§521423125252312538123423632234§();
         this.§try switch for§ = Math.ceil((param1 - getTimer()) / 1000);
      }
      
      private function §521423125252312538123423632234§() : void
      {
         if(§null package const§.length == 0)
         {
            §for for use§ = setInterval(§5214236606236619123423632234§,1000);
         }
         §null package const§[§null package const§.length] = this;
      }
      
      public function §521423129602312973123423632234§() : void
      {
         this.§get const dynamic§(true);
      }
      
      private function onTick(param1:int) : void
      {
         this.§try switch for§ = Math.ceil((this.§const finally set§ - param1) / 1000);
         if(this.§try switch for§ <= 0)
         {
            this.§get const dynamic§(false);
         }
         else
         {
            for each(var _loc2_ in this.§do const with§(§for for final§))
            {
               _loc2_.onTick(this);
            }
         }
      }
      
      private function §5214235742235755123423632234§() : void
      {
         var _loc1_:Number = §null package const§.indexOf(this);
         if(_loc1_ == -1)
         {
            return;
         }
         §null package const§.removeAt(_loc1_);
         if(§null package const§.length == 0)
         {
            clearInterval(§for for use§);
         }
      }
      
      public function §return use var§(param1:Class, param2:Object) : void
      {
         var _loc3_:Vector.<Object> = this.§true for var§[param1];
         if(_loc3_ != null)
         {
            _loc3_.removeAt(_loc3_.indexOf(param2));
         }
      }
      
      private function §get const dynamic§(param1:Boolean) : void
      {
         this.§5214235742235755123423632234§();
         this.§try switch for§ = 0;
         for each(var _loc2_ in this.§do const with§(§else const if§).concat())
         {
            _loc2_.onCompleteBefore(this,param1);
         }
         for each(var _loc3_ in this.§do const with§(§5214231879231892123423632234§).concat())
         {
            _loc3_.onCompleteAfter(this,param1);
         }
         this.§true for var§ = {};
      }
   }
}

