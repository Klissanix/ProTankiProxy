package §switch package include§
{
   import §521423133902313403123423632234§.§5214235988236001123423632234§;
   import §521423133902313403123423632234§.ImageResourceLoadingWrapper;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214233191233204123423632234§.§default true§;
   import §5214234291234304123423632234§.§function var implements§;
   import alternativa.osgi.service.locale.ILocaleService;
   import §extends set static§.ButtonItemBase;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §switch package class§ extends ButtonItemBase implements §5214235988236001123423632234§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      protected static const §5214231864231877123423632234§:int = 17;
      
      private var §package use throw§:§5214231141231154123423632234§;
      
      protected var §5214233998234011123423632234§:Bitmap;
      
      private var text:String;
      
      private var §5214233079233092123423632234§:§include catch with§;
      
      private var §52142332423337123423632234§:String;
      
      public function §switch package class§(param1:String, param2:String, param3:§include catch with§ = null)
      {
         this.§52142332423337123423632234§ = param1;
         addEventListener("click",this.§5214235039235052123423632234§);
         this.text = param2;
         this.§5214233079233092123423632234§ = param3;
         super(§default true§.§521423118832311896123423632234§);
      }
      
      private function §521423130702313083123423632234§() : void
      {
         this.§package use throw§ = new §5214231141231154123423632234§();
         this.§package use throw§.text = this.text;
         this.§package use throw§.color = 23704;
         this.§package use throw§.§521423102842310297123423632234§ = §5214236363236376123423632234§.language == "cn" ? 18 : 22;
         this.§package use throw§.autoSize = "left";
         this.§package use throw§.bold = true;
         this.§package use throw§.mouseEnabled = false;
         this.§package use throw§.wordWrap = true;
         this.§package use throw§.width = this.width / 2;
         addChild(this.§package use throw§);
      }
      
      protected function §5214235039235052123423632234§(param1:MouseEvent) : void
      {
         dispatchEvent(new §function var implements§(this.§52142332423337123423632234§));
      }
      
      private function §if implements§() : void
      {
         if(this.§5214233079233092123423632234§ != null)
         {
            var _loc1_:§include catch with§ = this.§5214233079233092123423632234§;
            if(_loc1_.§5214239618239631123423632234§.§521423137152313728123423632234§ && (_loc2_.§else for include§ & 1) == 0)
            {
               this.§5214233079233092123423632234§.§5214234169234182123423632234§(new ImageResourceLoadingWrapper(this));
            }
            else
            {
               this.§5214233998234011123423632234§ = new Bitmap(this.§5214233079233092123423632234§.data);
            }
         }
      }
      
      public function setPreviewResource(param1:§include catch with§) : void
      {
         this.§5214233998234011123423632234§ = new Bitmap(param1.data);
         this.§null switch while§();
      }
      
      protected function §521423119942312007123423632234§() : void
      {
         addChildAt(this.§5214233998234011123423632234§,2);
      }
      
      protected function align() : void
      {
         this.§package use throw§.y = this.height / 2 - this.§package use throw§.height / 2;
         this.§package use throw§.x = 17;
         if(this.§5214233998234011123423632234§ != null)
         {
            this.§5214233998234011123423632234§.x = this.width - 17 - 150;
            this.§5214233998234011123423632234§.y = 12;
         }
      }
      
      override protected function init() : void
      {
         super.init();
         this.§if implements§();
         this.§521423130702313083123423632234§();
         this.§final var extends§();
         this.align();
      }
      
      protected function §null switch while§() : void
      {
         this.§521423119942312007123423632234§();
         this.align();
      }
      
      protected function §final var extends§() : void
      {
         if(this.§5214233998234011123423632234§ != null)
         {
            this.§521423119942312007123423632234§();
         }
      }
   }
}

