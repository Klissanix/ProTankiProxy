package §5214231074231087123423632234§
{
   import §521423140272314040123423632234§.§521423122852312298123423632234§;
   import §521423140272314040123423632234§.§super finally set§;
   import alternativa.osgi.OSGi;
   import platform.client.fp10.core.model.§while for try§;
   import scpacker.networking.Network;
   
   public class CaptchaModelServer
   {
      
      private var §521423140132314026123423632234§:Network = Network(OSGi.getInstance().getService(Network));
      
      public function CaptchaModelServer(param1:§while for try§)
      {
         super();
      }
      
      public function checkCaptcha(param1:CaptchaLocation, param2:String) : void
      {
         §521423140132314026123423632234§.send(new §521423122852312298123423632234§(param1,param2));
      }
      
      public function getNewCaptcha(param1:CaptchaLocation) : void
      {
         §521423140132314026123423632234§.send(new §super finally set§(param1));
      }
   }
}

