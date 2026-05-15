package §521423110272311040123423632234§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.geom.Point;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.helper.BubbleHelper;
   
   public class §5214232586232599123423632234§ extends BubbleHelper
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public function §5214232586232599123423632234§()
      {
         super();
         text = §5214236363236376123423632234§.getText("ERROR_EMAIL_INVALID");
         arrowLehgth = 20;
         arrowAlign = 9;
         §5214231245231258123423632234§ = 3;
      }
      
      public function §521423127692312782123423632234§() : void
      {
         var _loc1_:Point = new Point();
         _loc1_.x = Math.round(§5214238030238043123423632234§.textWidth + 12 * 2);
         _loc1_.y = Math.round(§5214238030238043123423632234§.textHeight + 12 * 2) - 3;
         draw(_loc1_);
      }
      
      public function §5214231549231562123423632234§() : void
      {
         text = §5214236363236376123423632234§.getText("ERROR_EMAIL_DOMAIN_IS_FORBIDDEN");
      }
      
      public function §5214231037231050123423632234§() : void
      {
         text = §5214236363236376123423632234§.getText("ERROR_EMAIL_NOT_UNIQUE");
      }
      
      public function §super set switch§() : void
      {
         text = §5214236363236376123423632234§.getText("ERROR_EMAIL_INVALID");
      }
   }
}

