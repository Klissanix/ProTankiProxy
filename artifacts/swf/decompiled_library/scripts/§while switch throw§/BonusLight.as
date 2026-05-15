package §while switch throw§
{
   import §switch var native§.TeamLightColor;
   
   public class BonusLight
   {
      
      private var lightColor:TeamLightColor;
      
      private var attenuationBegin:Number;
      
      private var attenuationEnd:Number;
      
      public function BonusLight(param1:TeamLightColor, param2:Number, param3:Number)
      {
         super();
         this.lightColor = param1;
         this.attenuationBegin = param2;
         this.attenuationEnd = param3;
      }
      
      public function getAttenuationEnd() : Number
      {
         return this.attenuationEnd;
      }
      
      public function getLightColor() : TeamLightColor
      {
         return this.lightColor;
      }
      
      public function getAttenuationBegin() : Number
      {
         return this.attenuationBegin;
      }
   }
}

