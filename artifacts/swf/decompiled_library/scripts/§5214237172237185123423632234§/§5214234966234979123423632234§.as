package §5214237172237185123423632234§
{
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleUtils;
   import §each var null§.§const throw§;
   
   public class §5214234966234979123423632234§
   {
      
      public var §5214232783232796123423632234§:§const throw§;
      
      public var §native catch final§:Vector.<§5214236826236839123423632234§>;
      
      public var §5214236482236495123423632234§:int;
      
      public var §package switch with§:int;
      
      public var §521423110302311043123423632234§:§native for throw§;
      
      public var §521423137992313812123423632234§:Number = 0;
      
      public var §for use case§:int;
      
      public const §null catch case§:Vector3 = new Vector3();
      
      public function §5214234966234979123423632234§(param1:§const throw§, param2:int, param3:Vector3, param4:Number, param5:§native for throw§, param6:int)
      {
         super();
         this.§5214232783232796123423632234§ = param1;
         this.§for use case§ = param6;
         this.§native var continue§(param2,param3,param4,param5);
      }
      
      private function §native var continue§(param1:int, param2:Vector3, param3:Number, param4:§native for throw§) : void
      {
         var _loc6_:Vector3 = null;
         this.§5214236482236495123423632234§ = param1;
         this.§521423110302311043123423632234§ = param4;
         this.§native catch final§ = new Vector.<§5214236826236839123423632234§>(param1);
         var _loc7_:Number = param3 / (param1 - 1);
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            _loc6_ = new Vector3(param2.x,param2.y + 0.5 * param3 - _loc5_ * _loc7_,param2.z);
            this.§native catch final§[_loc5_] = new §5214236826236839123423632234§(this.§5214232783232796123423632234§,_loc6_,Vector3.DOWN,param4);
            _loc5_++;
         }
      }
      
      public function §5214235098235111123423632234§(param1:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:§5214236826236839123423632234§ = null;
         this.§package switch with§ = 0;
         this.§null catch case§.x = 0;
         this.§null catch case§.y = 0;
         this.§null catch case§.z = 0;
         var _loc5_:Vector3 = this.§5214232783232796123423632234§.§implements catch catch§.§native use function§;
         var _loc3_:int = 0;
         while(_loc3_ < this.§5214236482236495123423632234§)
         {
            _loc2_ = this.§native catch final§[_loc3_];
            _loc2_.§521423120402312053123423632234§(param1);
            if(_loc2_.§5214238618238631123423632234§)
            {
               ++this.§package switch with§;
               this.§5214232783232796123423632234§.§521423492362123423632234§(_loc2_.§in package native§(),_loc2_.§5214233495233508123423632234§(),-_loc2_.§case catch case§);
               this.§null catch case§.x += _loc2_.§null for var§.x;
               this.§null catch case§.y += _loc2_.§null for var§.y;
               this.§null catch case§.z += _loc2_.§null for var§.z;
               _loc6_ = _loc5_.x - _loc2_.§null for var§.x;
               _loc7_ = _loc5_.y - _loc2_.§null for var§.y;
               _loc4_ = _loc5_.z - _loc2_.§null for var§.z;
               _loc2_.§5214236311236324123423632234§ = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_ + _loc4_ * _loc4_);
            }
            else
            {
               _loc2_.§5214236311236324123423632234§ = 0;
            }
            _loc3_++;
         }
         if(this.§package switch with§ > 1)
         {
            this.§null catch case§.x /= this.§package switch with§;
            this.§null catch case§.y /= this.§package switch with§;
            this.§null catch case§.z /= this.§package switch with§;
         }
      }
      
      public function §5214234634234647123423632234§(param1:int) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§5214236482236495123423632234§)
         {
            §5214236826236839123423632234§(this.§native catch final§[_loc2_]).collisionGroup = param1;
            _loc2_++;
         }
      }
      
      public function §521423124902312503123423632234§() : Boolean
      {
         var _loc1_:§5214236826236839123423632234§ = null;
         for each(_loc1_ in this.§native catch final§)
         {
            if(_loc1_.§5214238618238631123423632234§ && !BattleUtils.isTankBody(_loc1_.§5214235622235635123423632234§.§521423105112310524123423632234§.§5214232783232796123423632234§))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §true catch else§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§521423137992313812123423632234§ < param1)
         {
            _loc3_ = this.§521423137992313812123423632234§ + param2;
            this.§521423137992313812123423632234§ = _loc3_ > param1 ? param1 : _loc3_;
         }
         else if(this.§521423137992313812123423632234§ > param1)
         {
            _loc3_ = this.§521423137992313812123423632234§ - param2;
            this.§521423137992313812123423632234§ = _loc3_ < param1 ? param1 : _loc3_;
         }
      }
   }
}

