package §default set case§
{
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214233785233798123423632234§.§native set dynamic§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.gui.ChangePasswordAndEmailEvent;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import §true switch true§.§5214237085237098123423632234§;
   import §true switch true§.§5214237555237568123423632234§;
   import §var var with§.DialogWindow;
   
   public class §5214231557231570123423632234§ extends DialogWindow
   {
      
      private var §521423108472310860123423632234§:§native for dynamic§ = new §native for dynamic§();
      
      private var §5214239540239553123423632234§:§5214237555237568123423632234§ = new §5214237555237568123423632234§();
      
      private var §521423116712311684123423632234§:§5214237555237568123423632234§ = new §5214237555237568123423632234§();
      
      private var §5214232918232931123423632234§:§5214237555237568123423632234§ = new §5214237555237568123423632234§();
      
      private var §var use finally§:§5214237085237098123423632234§ = new §5214237085237098123423632234§();
      
      private var §521423103212310334123423632234§:§5214237085237098123423632234§ = new §5214237085237098123423632234§();
      
      private var §521423104052310418123423632234§:Sprite = new Sprite();
      
      private var §with switch const§:Bitmap = new Bitmap();
      
      private var §set const break§:Function;
      
      private var §52142373223745123423632234§:String;
      
      private var §5214236363236376123423632234§:ILocaleService;
      
      public function §5214231557231570123423632234§(param1:Function, param2:String)
      {
         super();
         this.§set const break§ = param1;
         this.§52142373223745123423632234§ = param2;
         this.§5214236363236376123423632234§ = OSGi.getInstance().getService(ILocaleService) as ILocaleService;
         this.§521423108472310860123423632234§.§extends package var§ = this.§5214236363236376123423632234§.getText("GUI_LANG");
         this.§521423108472310860123423632234§.§extends catch default§ = §native set dynamic§.§5214235219235232123423632234§;
         this.§5214233910233923123423632234§();
      }
      
      private function §5214233910233923123423632234§() : void
      {
         addChild(this.§521423108472310860123423632234§);
         this.§521423108472310860123423632234§.width = 435;
         this.§521423108472310860123423632234§.height = 158;
         this.§521423108472310860123423632234§.addChild(this.§5214239540239553123423632234§);
         this.§5214239540239553123423632234§.x = 112;
         this.§5214239540239553123423632234§.y = 20;
         this.§5214239540239553123423632234§.width = 120;
         this.§5214239540239553123423632234§.hidden = true;
         this.§5214239540239553123423632234§.label = this.§5214236363236376123423632234§.getText("ACCOUNT_RECOVERY_FORM_NEW_PASSWORD");
         this.§521423108472310860123423632234§.addChild(this.§521423116712311684123423632234§);
         this.§521423116712311684123423632234§.x = this.§5214239540239553123423632234§.x + this.§5214239540239553123423632234§.width - 30;
         this.§521423116712311684123423632234§.y = 20;
         this.§521423116712311684123423632234§.width = 120;
         this.§521423116712311684123423632234§.hidden = true;
         this.§521423116712311684123423632234§.label = this.§5214236363236376123423632234§.getText("REGISTER_FORM_REPEAT_PASSWORD_INPUT_LABEL_TEXT");
         this.§521423108472310860123423632234§.addChild(this.§5214232918232931123423632234§);
         this.§5214232918232931123423632234§.x = 63;
         this.§5214232918232931123423632234§.y = this.§521423116712311684123423632234§.y + this.§5214232918232931123423632234§.height + 11;
         this.§5214232918232931123423632234§.width = 352;
         this.§5214232918232931123423632234§.label = this.§5214236363236376123423632234§.getText("REGISTER_FORM_EMAIL_LABEL_TEXT");
         this.§5214232918232931123423632234§.value = this.§52142373223745123423632234§;
         this.§521423108472310860123423632234§.addChild(this.§var use finally§);
         this.§var use finally§.x = this.§521423108472310860123423632234§.width - this.§var use finally§.width - 20;
         this.§var use finally§.y = this.§521423108472310860123423632234§.height - this.§var use finally§.height - 24;
         this.§var use finally§.label = this.§5214236363236376123423632234§.getText("ACCOUNT_RECOVERY_FORM_SAVE");
         this.§521423108472310860123423632234§.addChild(this.§521423103212310334123423632234§);
         this.§521423103212310334123423632234§.x = this.§521423108472310860123423632234§.width - this.§521423103212310334123423632234§.width * 2 - 34;
         this.§521423103212310334123423632234§.y = this.§521423108472310860123423632234§.height - this.§521423103212310334123423632234§.height - 24;
         this.§521423103212310334123423632234§.label = this.§5214236363236376123423632234§.getText("ACCOUNT_RECOVERY_FORM_CANCEL");
         this.§521423103212310334123423632234§.addEventListener("click",this.close);
         this.§var use finally§.addEventListener("click",this.§521423107512310764123423632234§);
         this.§521423116712311684123423632234§.addEventListener("focusIn",this.§5214232057232070123423632234§);
         this.§521423116712311684123423632234§.addEventListener("change",this.§5214232057232070123423632234§);
         IDialogsService(OSGi.getInstance().getService(IDialogsService)).addDialog(this);
      }
      
      public function §dynamic set with§() : String
      {
         return this.§5214239540239553123423632234§.value;
      }
      
      public function close(param1:Event = null) : void
      {
         dispatchEvent(new ChangePasswordAndEmailEvent("ChancelPressed"));
         this.§521423103212310334123423632234§.removeEventListener("click",this.close);
         this.§521423116712311684123423632234§.removeEventListener("focusIn",this.§5214232057232070123423632234§);
         IDialogsService(OSGi.getInstance().getService(IDialogsService)).removeDialog(this);
      }
      
      private function §5214232057232070123423632234§(param1:Event) : void
      {
         if(this.§521423116712311684123423632234§.value == null || this.§521423116712311684123423632234§.value == "")
         {
            return;
         }
         if(this.§521423116712311684123423632234§.value != this.§5214239540239553123423632234§.value)
         {
            this.§521423116712311684123423632234§.§in use set§ = false;
            this.§var use finally§.enable = false;
         }
         else
         {
            this.§521423116712311684123423632234§.§in use set§ = true;
            this.§var use finally§.enable = true;
         }
      }
      
      private function §521423107512310764123423632234§(param1:Event) : void
      {
         dispatchEvent(new ChangePasswordAndEmailEvent("ChangePressed"));
         if(Boolean(this.§set const break§))
         {
            this.§set const break§.call(null,this.§521423116712311684123423632234§.value,this.§5214232918232931123423632234§.value);
         }
         this.close(null);
      }
      
      public function §dynamic for case§() : String
      {
         return this.§5214232918232931123423632234§.value;
      }
   }
}

