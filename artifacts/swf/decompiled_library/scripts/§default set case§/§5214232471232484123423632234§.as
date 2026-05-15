package §default set case§
{
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214233785233798123423632234§.§switch try§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.IBlurService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237555237568123423632234§;
   import §var var with§.DialogWindow;
   
   public class §5214232471232484123423632234§ extends DialogWindow
   {
      
      private var text:String;
      
      private var §set const break§:Function;
      
      private var §521423108472310860123423632234§:§native for dynamic§ = new §native for dynamic§();
      
      private var §continue catch use§:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
      
      private var §function set const§:§5214237555237568123423632234§ = new §5214237555237568123423632234§();
      
      private var §5214238520238533123423632234§:§switch try§ = new §switch try§();
      
      private var §521423104052310418123423632234§:Sprite = new Sprite();
      
      private var §with switch const§:Bitmap = new Bitmap();
      
      public function §5214232471232484123423632234§(param1:String, param2:Function)
      {
         super();
         this.text = param1;
         this.§set const break§ = param2;
         addEventListener("addedToStage",this.§switch override§);
      }
      
      private function §5214236857236870123423632234§(param1:Event) : void
      {
         var _loc2_:String = this.§function set const§.value;
         if(_loc2_ == null || _loc2_.length != 32 || _loc2_.length > 32)
         {
            this.§function set const§.§in use set§ = false;
            return;
         }
         this.§function set const§.§in use set§ = true;
         this.§set const break§.call(null,_loc2_);
         IBlurService(OSGi.getInstance().getService(IBlurService)).unblurGameContent();
         this.§5214238520238533123423632234§.removeEventListener("click",this.§5214236857236870123423632234§);
         IDialogsService(OSGi.getInstance().getService(IDialogsService)).removeDialog(this);
      }
      
      private function §5214233910233923123423632234§() : void
      {
         addChild(this.§521423108472310860123423632234§);
         this.§521423108472310860123423632234§.width = 400;
         this.§521423108472310860123423632234§.height = 115;
         this.§521423108472310860123423632234§.addChild(this.§continue catch use§);
         this.§continue catch use§.text = this.text;
         this.§continue catch use§.x = 15;
         this.§continue catch use§.y = 15;
         this.§521423108472310860123423632234§.addChild(this.§function set const§);
         this.§function set const§.§false set false§ = 32;
         this.§function set const§.x = 15;
         this.§function set const§.y = 35;
         this.§function set const§.width = this.§521423108472310860123423632234§.width - 30;
         this.§521423108472310860123423632234§.addChild(this.§5214238520238533123423632234§);
         this.§5214238520238533123423632234§.label = ILocaleService(OSGi.getInstance().getService(ILocaleService)).getText("ALERT_ANSWER_OK");
         this.§5214238520238533123423632234§.x = this.§521423108472310860123423632234§.width - this.§5214238520238533123423632234§.width - 15;
         this.§5214238520238533123423632234§.y = 70;
         this.§5214238520238533123423632234§.addEventListener("click",this.§5214236857236870123423632234§);
         IDialogsService(OSGi.getInstance().getService(IDialogsService)).addDialog(this);
      }
      
      private function §switch override§(param1:Event) : void
      {
         this.§5214233910233923123423632234§();
         removeEventListener("addedToStage",this.§switch override§);
      }
   }
}

