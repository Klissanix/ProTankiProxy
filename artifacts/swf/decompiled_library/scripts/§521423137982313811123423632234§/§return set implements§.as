package §521423137982313811123423632234§
{
   import §5214238868238881123423632234§.§else const final§;
   import alternativa.math.Vector3;
   import §if package true§.§52142316423177123423632234§;
   import §if package true§.§case set var§;
   
   public class §return set implements§ implements §case set var§
   {
      
      private const §dynamic catch false§:int = 11;
      
      private var §521423123152312328123423632234§:Vector3 = new Vector3();
      
      private var §while continue§:Vector3 = new Vector3();
      
      private var §521423108322310845123423632234§:Number;
      
      private var §5214236581236594123423632234§:Number;
      
      private var §5214231261231274123423632234§:Vector3;
      
      public function §return set implements§(param1:Number)
      {
         super();
         this.§521423108322310845123423632234§ = param1 / 2;
         this.§5214236581236594123423632234§ = Math.tan(this.§521423108322310845123423632234§) * 2;
      }
      
      public function §break switch const§() : void
      {
         this.§5214231261231274123423632234§ = null;
      }
      
      public function §521423130882313101123423632234§(param1:§else const final§) : Vector.<§52142316423177123423632234§>
      {
         var _loc7_:int = 0;
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc8_:Number = NaN;
         this.§521423123152312328123423632234§.cross2(param1.§const switch for§,param1.§5214239673239686123423632234§);
         var _loc3_:Vector.<§52142316423177123423632234§> = new Vector.<§52142316423177123423632234§>();
         var _loc4_:Number = this.§5214236581236594123423632234§ / (11 - 1);
         var _loc6_:Number = -this.§5214236581236594123423632234§ * 0.5;
         while(_loc7_ < 11)
         {
            _loc5_ = -this.§5214236581236594123423632234§ * 0.5;
            _loc2_ = 0;
            while(_loc2_ < 11)
            {
               this.§while continue§.copy(param1.§5214239673239686123423632234§);
               this.§while continue§.addScaled(_loc6_,this.§521423123152312328123423632234§);
               this.§while continue§.addScaled(_loc5_,param1.§const switch for§);
               this.§while continue§.normalize();
               _loc8_ = Math.acos(this.§while continue§.dot(param1.§5214239673239686123423632234§));
               if(_loc8_ <= this.§521423108322310845123423632234§)
               {
                  _loc3_[_loc3_.length] = new §52142316423177123423632234§(this.§while continue§,_loc8_,1.7976931348623157e+308);
               }
               _loc5_ += _loc4_;
               _loc2_++;
            }
            _loc6_ += _loc4_;
            _loc7_++;
         }
         if(this.§5214231261231274123423632234§ != null)
         {
            _loc3_[_loc3_.length] = new §52142316423177123423632234§(this.§5214231261231274123423632234§,Math.acos(this.§5214231261231274123423632234§.dot(param1.§5214239673239686123423632234§)),1.7976931348623157e+308,10);
         }
         return _loc3_;
      }
      
      public function §else function§(param1:Vector3) : void
      {
         this.§5214231261231274123423632234§ = param1;
      }
   }
}

