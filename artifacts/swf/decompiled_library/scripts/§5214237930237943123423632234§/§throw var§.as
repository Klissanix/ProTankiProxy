package §5214237930237943123423632234§
{
   import flash.utils.Dictionary;
   
   public class §throw var§
   {
      
      private var §while for implements§:Dictionary = new Dictionary();
      
      public function §throw var§()
      {
         super();
      }
      
      public function toString() : String
      {
         var _loc2_:§5214236270236283123423632234§ = null;
         var _loc1_:String = "";
         for(var _loc3_ in this.§while for implements§)
         {
            _loc2_ = this.§while for implements§[_loc3_];
            _loc1_ += _loc3_ + ": " + _loc2_.§package for return§() + "\n";
         }
         return _loc1_;
      }
      
      public function §false set final§() : void
      {
         var _loc1_:§5214236270236283123423632234§ = null;
         for(var _loc2_ in this.§while for implements§)
         {
            _loc1_ = §5214236270236283123423632234§(this.§while for implements§[_loc2_]);
            _loc1_.§false set final§();
            delete this.§while for implements§[_loc2_];
         }
      }
      
      private function §import catch import§(param1:Class) : §5214236270236283123423632234§
      {
         var _loc2_:§5214236270236283123423632234§ = this.§while for implements§[param1];
         if(_loc2_ == null)
         {
            _loc2_ = new §5214236270236283123423632234§(param1);
            this.§while for implements§[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      public function §52142349423507123423632234§(param1:Class) : Object
      {
         return this.§import catch import§(param1).§52142349423507123423632234§();
      }
      
      public function §5214234067234080123423632234§(param1:Class) : void
      {
         var _loc2_:§5214236270236283123423632234§ = this.§while for implements§[param1];
         if(_loc2_ != null)
         {
            _loc2_.§false set final§();
         }
      }
   }
}

