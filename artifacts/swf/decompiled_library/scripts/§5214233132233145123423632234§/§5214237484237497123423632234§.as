package §5214233132233145123423632234§
{
   import §5214231366231379123423632234§.§default catch native§;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleUtils;
   
   public class §5214237484237497123423632234§
   {
      
      private var §5214239673239686123423632234§:Vector3;
      
      private var §521423136442313657123423632234§:§default catch native§;
      
      private var §5214232224232237123423632234§:Vector.<§default catch native§>;
      
      public function §5214237484237497123423632234§()
      {
         super();
         this.§5214239673239686123423632234§ = new Vector3();
      }
      
      public function §5214238028238041123423632234§() : Boolean
      {
         return this.§5214232224232237123423632234§.length > 0;
      }
      
      public function §function include§() : §default catch native§
      {
         if(this.§521423136442313657123423632234§ != null)
         {
            return this.§521423136442313657123423632234§;
         }
         return this.§5214232224232237123423632234§[0];
      }
      
      public function §521423128332312846123423632234§() : §default catch native§
      {
         return this.§521423136442313657123423632234§;
      }
      
      public function §use for if§() : Boolean
      {
         return this.§521423136442313657123423632234§ != null || this.§5214232224232237123423632234§.length > 0;
      }
      
      public function §const package set§(param1:Vector3, param2:Vector.<§default catch native§>) : void
      {
         var _loc3_:§default catch native§ = null;
         this.§5214239673239686123423632234§.copy(param1);
         this.§5214232224232237123423632234§ = param2.concat();
         this.§521423136442313657123423632234§ = null;
         if(this.§5214232224232237123423632234§.length > 0)
         {
            _loc3_ = this.§5214232224232237123423632234§[this.§5214232224232237123423632234§.length - 1];
            if(!BattleUtils.isTankBody(_loc3_.§521423105112310524123423632234§.§5214232783232796123423632234§))
            {
               this.§521423136442313657123423632234§ = this.§5214232224232237123423632234§.pop();
            }
         }
      }
      
      public function §use switch return§() : Boolean
      {
         return this.§521423136442313657123423632234§ != null;
      }
      
      public function §get const if§() : Vector.<§default catch native§>
      {
         return this.§5214232224232237123423632234§;
      }
      
      public function §final use throw§() : Vector3
      {
         return this.§5214239673239686123423632234§;
      }
   }
}

