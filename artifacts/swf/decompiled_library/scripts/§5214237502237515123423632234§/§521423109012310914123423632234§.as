package §5214237502237515123423632234§
{
   import flash.utils.ByteArray;
   
   public class §521423109012310914123423632234§
   {
      
      private var §native catch default§:Object;
      
      public function §521423109012310914123423632234§(param1:ByteArray)
      {
         super();
         if(param1 != null)
         {
            this.§5214234225234238123423632234§(param1);
         }
      }
      
      public function get data() : Object
      {
         return this.§native catch default§;
      }
      
      public function §5214234869234882123423632234§(param1:String) : ByteArray
      {
         if(this.§native catch default§ == null)
         {
            return null;
         }
         return ByteArray(this.§native catch default§[param1]);
      }
      
      public function §5214234225234238123423632234§(param1:ByteArray) : void
      {
         var _loc3_:ByteArray = null;
         var _loc6_:FileInfo = null;
         var _loc4_:int = 0;
         var _loc2_:int = param1.readInt();
         var _loc5_:Vector.<FileInfo> = new Vector.<FileInfo>(_loc2_);
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            _loc5_[_loc4_] = new FileInfo(param1.readUTF(),param1.readInt());
            _loc4_++;
         }
         this.§native catch default§ = {};
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_ = new ByteArray();
            _loc6_ = _loc5_[_loc4_];
            param1.readBytes(_loc3_,0,_loc6_.size);
            this.§native catch default§[_loc6_.name] = _loc3_;
            _loc4_++;
         }
      }
   }
}

class FileInfo
{
   
   public var name:String;
   
   public var size:int;
   
   public function FileInfo(param1:String, param2:int)
   {
      super();
      this.name = param1.toLowerCase();
      this.size = param2;
   }
}
