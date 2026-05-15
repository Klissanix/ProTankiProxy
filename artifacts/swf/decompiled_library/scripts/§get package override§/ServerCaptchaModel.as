package §get package override§
{
   import §5214231074231087123423632234§.CaptchaLocation;
   import §5214231074231087123423632234§.CaptchaModelBase;
   import §5214231074231087123423632234§.§import set final§;
   import §throw package do§.§native catch case§;
   
   public class ServerCaptchaModel extends CaptchaModelBase implements §import set final§, §521423138332313846123423632234§
   {
      
      private var §5214239171239184123423632234§:§native catch case§;
      
      private var §5214233715233728123423632234§:Vector.<CaptchaLocation>;
      
      public function ServerCaptchaModel()
      {
         super();
      }
      
      public function checkCaptcha(param1:String, param2:CaptchaLocation) : void
      {
         server.checkCaptcha(param2,param1);
      }
      
      public function captchaFailed(param1:CaptchaLocation, param2:Vector.<int>) : void
      {
         if(this.§5214239171239184123423632234§)
         {
            this.§5214239171239184123423632234§.captchaAnswerIncorrect(param1,param2);
         }
      }
      
      public function showCaptcha(param1:CaptchaLocation, param2:Vector.<int>) : void
      {
         if(this.§5214239171239184123423632234§)
         {
            this.§5214239171239184123423632234§.captchaUpdated(param1,param2);
         }
      }
      
      public function captchaCorrect(param1:CaptchaLocation) : void
      {
         if(this.§5214239171239184123423632234§)
         {
            this.§5214239171239184123423632234§.captchaAnswerCorrect(param1);
         }
      }
      
      public function getNewCaptcha(param1:CaptchaLocation) : void
      {
         server.getNewCaptcha(param1);
      }
      
      public function unbindFacade() : void
      {
         this.§5214239171239184123423632234§ = null;
      }
      
      public function objectLoaded() : void
      {
         this.§5214233715233728123423632234§ = getInitParam().§5214236440236453123423632234§;
      }
      
      public function bindFacade(param1:§native catch case§) : void
      {
         this.§5214239171239184123423632234§ = param1;
         param1.setCaptchaLocations(this.§5214233715233728123423632234§);
      }
   }
}

