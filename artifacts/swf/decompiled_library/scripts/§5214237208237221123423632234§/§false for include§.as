package §5214237208237221123423632234§
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237976237989123423632234§.§function use use§;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleUtils;
   import §each var null§.§const throw§;
   import flash.errors.IllegalOperationError;
   import §for catch for§.§5214234380234393123423632234§;
   
   public class §false for include§ extends §5214234680234693123423632234§
   {
      
      private static const §extends set if§:Vector3 = new Vector3();
      
      public function §false for include§(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      override protected function §521423120402312053123423632234§(param1:Number) : void
      {
         var _loc7_:§const throw§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc3_:Vector3 = null;
         this.§static use class§(param1);
         §extends set if§.diff(§52142372223735123423632234§,§521423100282310041123423632234§);
         var _loc2_:Number = §extends set if§.length();
         §extends set if§.normalize();
         var _loc4_:§5214234380234393123423632234§ = §52142380523818123423632234§.getBattleRunner().getCollisionDetector();
         if(_loc4_.§5214239358239371123423632234§(§521423100282310041123423632234§,§extends set if§,8,_loc2_,this,§get switch class§))
         {
            _loc5_ = BattleUtils.isTankBody(§get switch class§.§521423105112310524123423632234§.§5214232783232796123423632234§) && !§function use use§.§do set in§(§521423100282310041123423632234§,§get switch class§.§dynamic final§);
            §include for override§.copy(§get switch class§.§dynamic final§);
            if(_loc5_)
            {
               _loc7_ = §get switch class§.§521423105112310524123423632234§.§5214232783232796123423632234§;
            }
            else
            {
               _loc7_ = null;
               §include for override§.subtract(§extends set if§);
            }
            §5214233948233961123423632234§(_loc7_,§include for override§,§extends set if§,_loc2_);
            return;
         }
         while(_loc6_ < §include var function§())
         {
            _loc3_ = §5214236205236218123423632234§[_loc6_];
            if(_loc4_.§5214239358239371123423632234§(_loc3_,§extends set if§,8,_loc2_,this,§get switch class§))
            {
               if(BattleUtils.isTankBody(§get switch class§.§521423105112310524123423632234§.§5214232783232796123423632234§))
               {
                  if(!§function use use§.§do set in§(§521423100282310041123423632234§,§get switch class§.§dynamic final§))
                  {
                     §include for override§.copy(§521423100282310041123423632234§).addScaled(§get switch class§.§5214232932232945123423632234§,§extends set if§);
                     §5214233948233961123423632234§(§get switch class§.§521423105112310524123423632234§.§5214232783232796123423632234§,§include for override§,§extends set if§,_loc2_);
                     return;
                  }
               }
            }
            _loc3_.addScaled(_loc2_,§extends set if§);
            _loc6_++;
         }
         §super package catch§.§extends for true§(§52142372223735123423632234§,§521423109142310927123423632234§);
         this.§5214233395233408123423632234§(param1);
         if(this.§5214231060231073123423632234§())
         {
            this.§while switch try§();
         }
      }
      
      protected function §static use class§(param1:Number) : void
      {
         §521423100282310041123423632234§.copy(§52142372223735123423632234§);
         §52142372223735123423632234§.addScaled(this.§try switch catch§() * param1,§521423109142310927123423632234§);
      }
      
      protected function §while switch try§() : void
      {
         destroy();
      }
      
      protected function §else while§() : Number
      {
         return 1.7976931348623157e+308;
      }
      
      protected function §5214233395233408123423632234§(param1:Number) : void
      {
         §set use set§ += param1 * this.§try switch catch§();
      }
      
      protected function §try switch catch§() : Number
      {
         throw new IllegalOperationError();
      }
      
      protected function §5214231060231073123423632234§() : Boolean
      {
         return §set use set§ > this.§else while§();
      }
      
      override protected function §521423133212313334123423632234§(param1:§const throw§, param2:Vector3, param3:Vector3, param4:Number, param5:int) : void
      {
         §super package catch§.§extends for true§(param2,param3,param5);
      }
   }
}

