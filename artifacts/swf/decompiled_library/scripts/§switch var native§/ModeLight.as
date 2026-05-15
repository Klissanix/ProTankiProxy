package §switch var native§
{
   import §extends var import§.§5214231658231671123423632234§;
   
   public final class ModeLight
   {
      
      private var §5214235367235380123423632234§:TeamLightColor;
      
      private var §set set set§:TeamLightColor;
      
      private var §else set implements§:TeamLightColor;
      
      private var attenuationBegin:Number;
      
      private var §5214235272235285123423632234§:Number;
      
      public function ModeLight(param1:TeamLightColor, param2:TeamLightColor, param3:TeamLightColor, param4:Number, param5:Number)
      {
         super();
         this.§5214235367235380123423632234§ = param1;
         this.§set set set§ = param2;
         this.§else set implements§ = param3;
         this.attenuationBegin = param4;
         this.§5214235272235285123423632234§ = param5;
      }
      
      public function getAttenuationEnd() : Number
      {
         return this.§5214235272235285123423632234§;
      }
      
      public function getAttenuationBegin() : Number
      {
         return this.attenuationBegin;
      }
      
      public function getLightForTeam(param1:§5214231658231671123423632234§) : TeamLightColor
      {
         switch(param1.value)
         {
            case §5214231658231671123423632234§.§implements set implements§.value:
               return this.§set set set§;
            case §5214231658231671123423632234§.§dynamic use false§.value:
               return this.§else set implements§;
            case §5214231658231671123423632234§.§521423107532310766123423632234§.value:
               return this.§5214235367235380123423632234§;
            default:
               return null;
         }
      }
   }
}

