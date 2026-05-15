package §override set with§
{
   import §5214231949231962123423632234§.§with var with§;
   import flash.utils.Dictionary;
   import §import set true§.§5214237318237331123423632234§;
   import §import set true§.§get package include§;
   import §import set true§.§try var switch§;
   import §override catch default§.Long;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.§5214236607236620123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.notifier.§5214239646239659123423632234§;
   
   public class RankNotifierModel extends §get package include§ implements §5214237318237331123423632234§, §5214236607236620123423632234§
   {
      
      private var data:Dictionary = new Dictionary();
      
      public function RankNotifierModel()
      {
         super();
      }
      
      public function setRank(param1:Vector.<§try var switch§>) : void
      {
         for each(var _loc2_ in param1)
         {
            this.setAndUpdateConsumer(_loc2_);
         }
      }
      
      public function refresh(param1:String, param2:§5214239646239659123423632234§) : void
      {
         if(param1 in this.data)
         {
            param2.setRank(this.data[param1]);
         }
      }
      
      public function remove(param1:String) : void
      {
         delete this.data[param1];
      }
      
      public function setAndUpdateConsumer(param1:§try var switch§) : void
      {
         var _loc2_:§5214239646239659123423632234§ = null;
         var _loc3_:String = param1.§each use get§;
         this.data[_loc3_] = param1.§5214237240237253123423632234§;
         var _loc4_:§with var with§ = §with var with§(modelRegistry.getModel(Long.getLong(1655167274,1570919751)));
         if(_loc4_.hasDataConsumer(_loc3_))
         {
            _loc2_ = _loc4_.getDataConsumer(_loc3_);
            _loc2_.setRank(param1.§5214237240237253123423632234§);
         }
      }
   }
}

