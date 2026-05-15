package alternativa.tanks.gui
{
   import §5214239296239309123423632234§.ItemsAlert;
   import §finally use true§.§do var set§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   
   public class AvailableItemsAlert extends ItemsAlert
   {
      
      public static var §with var try§:PremiumService;
      
      public function AvailableItemsAlert(param1:Vector.<§do var set§>, param2:String, param3:String)
      {
         super(param2,param3,this.d690d759,param1);
      }
      
      private function d690d759(param1:Vector.<§do var set§>) : void
      {
         var _loc2_:§do var set§ = null;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         var _loc4_:int = int(param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc4_)
         {
            _loc2_ = param1[_loc3_];
            _loc5_ = 0;
            _loc6_ = _loc2_.§import const final§ && !§with var try§.hasPremium();
            §5214236516236529123423632234§.addItem(_loc2_.§5214235052235065123423632234§,_loc2_.§extends set case§,_loc2_.§521423109832310996123423632234§,_loc2_.§dynamic final§,0,_loc5_,_loc6_,true,0,_loc2_.§5214233998234011123423632234§,0,null,_loc2_.§5214236424236437123423632234§,null,null);
            _loc3_++;
         }
      }
   }
}

