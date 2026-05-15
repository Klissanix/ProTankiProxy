package alternativa.tanks.service
{
   import §5214231074231087123423632234§.CaptchaLocation;
   
   public interface §521423105832310596123423632234§
   {
      
      function get loginCaptchaEnabled() : Boolean;
      
      function answerCorrect(param1:CaptchaLocation) : void;
      
      function setNewCaptchaBytes(param1:Vector.<int>, param2:CaptchaLocation) : void;
      
      function checkAnswer(param1:CaptchaLocation, param2:String, param3:Function) : void;
   }
}

