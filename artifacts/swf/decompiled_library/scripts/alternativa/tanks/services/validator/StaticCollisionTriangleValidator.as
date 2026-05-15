package alternativa.tanks.services.validator
{
   import §do catch return§.§5214237379237392123423632234§;
   
   public class StaticCollisionTriangleValidator extends StaticCollisionPrimitiveValidator
   {
      
      private var §52142377423787123423632234§:Vector3Validator;
      
      private var §521423103082310321123423632234§:Vector3Validator;
      
      private var §catch package with§:Vector3Validator;
      
      public function StaticCollisionTriangleValidator(param1:§5214237379237392123423632234§)
      {
         super(param1);
         this.§52142377423787123423632234§ = new Vector3Validator(param1.§521423134652313478123423632234§);
         this.§521423103082310321123423632234§ = new Vector3Validator(param1.§5214232428232441123423632234§);
         this.§catch package with§ = new Vector3Validator(param1.§5214238317238330123423632234§);
      }
      
      override public function hasIncorrectData() : Boolean
      {
         return super.hasIncorrectData() || this.§52142377423787123423632234§.isInvalid() || this.§521423103082310321123423632234§.isInvalid() || this.§catch package with§.isInvalid();
      }
   }
}

