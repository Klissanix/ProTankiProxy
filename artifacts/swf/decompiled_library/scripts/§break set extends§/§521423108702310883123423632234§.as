package §break set extends§
{
   import projects.tanks.clients.flash.commons.services.notification.Notification;
   import §true switch true§.§5214231141231154123423632234§;
   import §try const default§.§5214234011234024123423632234§;
   
   public class §521423108702310883123423632234§ extends Notification
   {
      
      private var §get switch default§:§5214231141231154123423632234§;
      
      private var §521423107212310734123423632234§:§5214234011234024123423632234§;
      
      public function §521423108702310883123423632234§(param1:String, param2:String)
      {
         super(param1,param2);
      }
      
      override protected function resize() : void
      {
         this.§521423107212310734123423632234§.x = 11 + 7;
         this.§521423107212310734123423632234§.y = 11 + 5;
         this.§get switch default§.x = 11 + 9;
         this.§get switch default§.y = this.§521423107212310734123423632234§.y + this.§521423107212310734123423632234§.height - 1;
         §5214234887234900123423632234§ = this.§get switch default§.y + this.§get switch default§.height - 3;
         var _loc1_:int = this.§get switch default§.x + this.§get switch default§.width + 11 * 2;
         if(_loc1_ > _width)
         {
            _width = _loc1_;
         }
         _height = §5214234887234900123423632234§ + 11 * 2 + 1;
         super.resize();
      }
      
      override protected function init() : void
      {
         super.init();
         this.§521423107212310734123423632234§ = new §5214234011234024123423632234§(userId);
         addChild(this.§521423107212310734123423632234§);
         this.§get switch default§ = new §5214231141231154123423632234§();
         this.§get switch default§.mouseEnabled = false;
         addChild(this.§get switch default§);
         this.§get switch default§.color = 5898034;
         this.§get switch default§.text = message;
      }
   }
}

