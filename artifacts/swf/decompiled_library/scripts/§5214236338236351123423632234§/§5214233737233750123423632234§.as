package §5214236338236351123423632234§
{
   import alternativa.engine3d.objects.BSP;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.utils.clearDictionary;
   import §catch catch§.§521423132262313239123423632234§;
   import §catch catch§.§5214233797233810123423632234§;
   import §catch catch§.§break catch import§;
   import flash.utils.Dictionary;
   
   public class §5214233737233750123423632234§
   {
      
      private var §521423132332313246123423632234§:Dictionary = new Dictionary();
      
      private var §for set import§:Dictionary = new Dictionary();
      
      private var §set var implements§:Dictionary = new Dictionary();
      
      public function §5214233737233750123423632234§()
      {
         super();
      }
      
      public function §521423136862313699123423632234§() : Vector.<§521423112022311215123423632234§>
      {
         var _loc1_:Vector.<§521423112022311215123423632234§> = new Vector.<§521423112022311215123423632234§>();
         this.§521423104522310465123423632234§(this.§521423132332313246123423632234§,_loc1_);
         this.§521423104522310465123423632234§(this.§for set import§,_loc1_);
         this.§521423104522310465123423632234§(this.§set var implements§,_loc1_);
         return _loc1_;
      }
      
      public function §521423110392311052123423632234§(param1:§break catch import§, param2:Sprite3D) : void
      {
         var _loc3_:§import catch switch§ = this.§521423512364123423632234§(param1);
         _loc3_.§521423110392311052123423632234§(param2);
      }
      
      private function §521423104522310465123423632234§(param1:Dictionary, param2:Vector.<§521423112022311215123423632234§>) : void
      {
         var _loc5_:Dictionary = null;
         for each(var _loc4_ in param1)
         {
            if(_loc4_ is Dictionary)
            {
               _loc5_ = _loc4_;
               for each(var _loc3_ in _loc5_)
               {
                  param2[param2.length] = _loc3_;
               }
            }
            else
            {
               param2[param2.length] = _loc4_;
            }
         }
      }
      
      private function §5214234824234837123423632234§(param1:Dictionary, param2:§521423132262313239123423632234§, param3:String, param4:Class) : §521423112022311215123423632234§
      {
         var _loc6_:§521423112022311215123423632234§ = null;
         var _loc7_:Dictionary = null;
         var _loc5_:§5214233797233810123423632234§ = param2 as §5214233797233810123423632234§;
         if(_loc5_ != null)
         {
            _loc6_ = param1[_loc5_.§521423109572310970123423632234§[param3]];
            if(_loc6_ == null)
            {
               _loc6_ = new param4(param2,param3);
            }
            param1[_loc5_.§521423109572310970123423632234§[param3]] = _loc6_;
         }
         else
         {
            _loc7_ = param1[param2];
            if(_loc7_ == null)
            {
               _loc7_ = new Dictionary();
               param1[param2] = _loc7_;
            }
            _loc6_ = _loc7_[param3];
            if(_loc6_ == null)
            {
               _loc6_ = new param4(param2,param3);
               _loc7_[param3] = _loc6_;
            }
         }
         return _loc6_;
      }
      
      private function §if var each§(param1:Dictionary) : void
      {
         for(var _loc2_ in param1)
         {
            if(param1[_loc2_] is Dictionary)
            {
               clearDictionary(param1[_loc2_]);
            }
            delete param1[_loc2_];
         }
      }
      
      private function §import use get§(param1:§5214233797233810123423632234§, param2:String) : §52142344523458123423632234§
      {
         return §52142344523458123423632234§(this.§5214234824234837123423632234§(this.§for set import§,param1,param2,§52142344523458123423632234§));
      }
      
      private function §null package get§(param1:§5214233797233810123423632234§, param2:String) : §5214239311239324123423632234§
      {
         return §5214239311239324123423632234§(this.§5214234824234837123423632234§(this.§521423132332313246123423632234§,param1,param2,§5214239311239324123423632234§));
      }
      
      private function §521423512364123423632234§(param1:§break catch import§) : §import catch switch§
      {
         return §import catch switch§(this.§5214234824234837123423632234§(this.§set var implements§,param1,null,§import catch switch§));
      }
      
      public function §521423113682311381123423632234§(param1:§5214233797233810123423632234§, param2:String, param3:Mesh, param4:String = null) : void
      {
         var _loc5_:§52142344523458123423632234§ = this.§import use get§(param1,param2);
         _loc5_.§5214238820238833123423632234§(param3,param4);
      }
      
      public function §5214236208236221123423632234§(param1:§5214233797233810123423632234§, param2:String, param3:BSP) : void
      {
         var _loc4_:§5214239311239324123423632234§ = this.§null package get§(param1,param2);
         _loc4_.§super set while§(param3);
      }
      
      public function §false set final§() : void
      {
         this.§if var each§(this.§for set import§);
         this.§if var each§(this.§521423132332313246123423632234§);
         this.§if var each§(this.§set var implements§);
      }
   }
}

