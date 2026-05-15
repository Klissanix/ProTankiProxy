package §super for import§
{
   import fl.data.DataProvider;
   
   public class §switch package for§ extends DataProvider
   {
      
      private var §521423100972310110123423632234§:Function;
      
      public function §switch package for§()
      {
         super();
      }
      
      override public function getItemAt(param1:uint) : Object
      {
         var _loc2_:Object = super.getItemAt(param1);
         if(this.§521423100972310110123423632234§ != null)
         {
            this.§521423100972310110123423632234§(_loc2_);
         }
         return _loc2_;
      }
      
      public function set §5214233046233059123423632234§(param1:Function) : void
      {
         this.§521423100972310110123423632234§ = param1;
      }
      
      public function §5214236930236943123423632234§(param1:String) : int
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:Object = null;
         _loc3_ = _loc3_;
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = this.getItemAt(_loc4_);
            if(_loc2_ && _loc2_.hasOwnProperty("id") && _loc2_["id"] == param1)
            {
               return _loc4_;
            }
            _loc4_++;
         }
         return -1;
      }
      
      public function get §5214233046233059123423632234§() : Function
      {
         return this.§521423100972310110123423632234§;
      }
   }
}

