package §5214235774235787123423632234§
{
   import alternativa.tanks.services.validator.§5214232026232039123423632234§;
   import alternativa.tanks.services.validator.DataValidator;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   
   public class §5214233739233752123423632234§ implements §521423117662311779123423632234§
   {
      
      public static var §5214231316231329123423632234§:DataValidator;
      
      private var §final use do§:§5214232026232039123423632234§;
      
      public function §5214233739233752123423632234§(param1:§5214232026232039123423632234§)
      {
         super();
         this.§final use do§ = param1;
         §5214231316231329123423632234§.addValidator(param1);
      }
      
      public function close() : void
      {
         §5214231316231329123423632234§.removeValidator(this.§final use do§);
         this.§final use do§ = null;
      }
   }
}

