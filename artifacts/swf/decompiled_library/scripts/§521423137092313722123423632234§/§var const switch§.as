package §521423137092313722123423632234§
{
   import §5214231337231350123423632234§.§5214232012232025123423632234§;
   
   public class §var const switch§
   {
      
      private var §super package import§:Vector.<§5214232012232025123423632234§>;
      
      private var §break for finally§:Vector.<§5214232012232025123423632234§>;
      
      public function §var const switch§()
      {
         super();
         this.§super package import§ = new Vector.<§5214232012232025123423632234§>();
         this.§break for finally§ = new Vector.<§5214232012232025123423632234§>();
      }
      
      public function §use catch get§() : Boolean
      {
         return this.§super package import§.length == 0;
      }
      
      public function §false set final§() : void
      {
         this.§super package import§.length = 0;
         this.§break for finally§.length = 0;
      }
      
      public function §5214238820238833123423632234§(param1:§5214232012232025123423632234§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:§5214232012232025123423632234§ = null;
         var _loc2_:§5214232012232025123423632234§ = null;
         _loc3_ = 0;
         while(_loc3_ < this.§super package import§.length)
         {
            _loc4_ = this.§super package import§[_loc3_];
            if(param1.§try var package§() < _loc4_.§try var package§())
            {
               break;
            }
            _loc3_++;
         }
         this.§super package import§.insertAt(_loc3_,param1);
         _loc3_ = 0;
         while(_loc3_ < this.§break for finally§.length)
         {
            _loc2_ = this.§break for finally§[_loc3_];
            if(param1.§override var case§() < _loc2_.§override var case§())
            {
               break;
            }
            _loc3_++;
         }
         this.§break for finally§.insertAt(_loc3_,param1);
      }
      
      public function §52142375623769123423632234§(param1:Number) : void
      {
         var _loc2_:§5214232012232025123423632234§ = null;
         while(this.§super package import§.length > 0)
         {
            _loc2_ = §5214232012232025123423632234§(this.§super package import§[0]);
            if(_loc2_.§try var package§() > param1)
            {
               break;
            }
            this.§521423140602314073123423632234§(this.§super package import§[0]);
         }
      }
      
      public function §try var package§() : Number
      {
         var _loc1_:§5214232012232025123423632234§ = this.§super package import§[0];
         return _loc1_.§try var package§();
      }
      
      public function §521423110722311085123423632234§() : Vector.<§5214232012232025123423632234§>
      {
         return this.§break for finally§;
      }
      
      private function §521423140602314073123423632234§(param1:§5214232012232025123423632234§) : void
      {
         this.§super package import§.removeAt(§super package import§.indexOf(param1));
         this.§break for finally§.removeAt(§break for finally§.indexOf(param1));
      }
   }
}

