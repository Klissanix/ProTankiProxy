package §super package true§
{
   import §5214231949231962123423632234§.§with var with§;
   import §default switch finally§.§5214239229239242123423632234§;
   import §default switch finally§.§const var continue§;
   import §default switch finally§.§static var const§;
   import flash.utils.Dictionary;
   import §override catch default§.Long;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.§5214236607236620123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.notifier.§5214239646239659123423632234§;
   
   public class UidNotifierModel extends §static var const§ implements §5214239229239242123423632234§, §5214236607236620123423632234§
   {
      
      private var data:Dictionary = new Dictionary();
      
      public function UidNotifierModel()
      {
         super();
      }
      
      public function refresh(param1:String, param2:§5214239646239659123423632234§) : void
      {
         if(param1 in this.data)
         {
            param2.setUid(this.data[param1]);
         }
      }
      
      public function remove(param1:String) : void
      {
         delete this.data[param1];
      }
      
      private function setAndUpdateConsumer(param1:§const var continue§) : void
      {
         var _loc2_:§5214239646239659123423632234§ = null;
         var _loc3_:String = param1.§each use get§;
         this.data[_loc3_] = param1.uid;
         var _loc4_:§with var with§ = §with var with§(modelRegistry.getModel(Long.getLong(1655167274,1570919751)));
         if(_loc4_.hasDataConsumer(_loc3_))
         {
            _loc2_ = _loc4_.getDataConsumer(_loc3_);
            _loc2_.setUid(param1.uid);
         }
      }
      
      public function setUid(param1:Vector.<§const var continue§>) : void
      {
         var _loc2_:§const var continue§ = null;
         for each(_loc2_ in param1)
         {
            this.setAndUpdateConsumer(_loc2_);
         }
      }
   }
}

