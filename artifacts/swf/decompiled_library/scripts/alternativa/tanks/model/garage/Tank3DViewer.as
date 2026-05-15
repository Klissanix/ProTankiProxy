package alternativa.tanks.model.garage
{
   import §5214231817231830123423632234§.§5214233863233876123423632234§;
   import §5214232250232263123423632234§.§try set set§;
   import alternativa.tanks.service.item3d.ITank3DViewer;
   import flash.display.BitmapData;
   
   public class Tank3DViewer implements ITank3DViewer
   {
      
      private var §52142318923202123423632234§:§try set set§;
      
      private var §else package function§:§5214233863233876123423632234§;
      
      private var §class set package§:§5214233863233876123423632234§;
      
      private var color:BitmapData;
      
      private var §set catch switch§:Boolean;
      
      public function Tank3DViewer()
      {
         super();
      }
      
      public function get isPreviewingColor() : Boolean
      {
         return this.§set catch switch§;
      }
      
      public function setPreviewColor(param1:BitmapData) : void
      {
         this.§set catch switch§ = true;
         if(this.§52142318923202123423632234§ != null)
         {
            this.§52142318923202123423632234§.§5214231344231357123423632234§(param1);
         }
      }
      
      public function setView(param1:§try set set§) : void
      {
         this.§52142318923202123423632234§ = param1;
         if(this.§else package function§ != null)
         {
            this.§52142318923202123423632234§.§52142330723320123423632234§(this.§else package function§);
            this.§else package function§ = null;
         }
         if(this.§class set package§ != null)
         {
            this.§52142318923202123423632234§.§5214233168233181123423632234§(this.§class set package§);
            this.§class set package§ = null;
         }
         if(this.color != null)
         {
            this.§52142318923202123423632234§.§5214231344231357123423632234§(this.color);
            this.color = null;
         }
      }
      
      public function resetView() : void
      {
         this.§52142318923202123423632234§ = null;
      }
      
      public function setColor(param1:BitmapData) : void
      {
         this.color = param1;
         if(this.§52142318923202123423632234§ != null)
         {
            this.§52142318923202123423632234§.§5214231344231357123423632234§(param1);
         }
      }
      
      public function setWeapon(param1:§5214233863233876123423632234§) : void
      {
         if(this.§52142318923202123423632234§ != null)
         {
            this.§52142318923202123423632234§.§5214233168233181123423632234§(param1);
         }
         else
         {
            this.§class set package§ = param1;
         }
      }
      
      public function closePreview() : void
      {
         if(!this.§set catch switch§)
         {
            return;
         }
         this.§set catch switch§ = false;
         if(this.§52142318923202123423632234§ == null)
         {
            return;
         }
         if(this.color != null)
         {
            this.§52142318923202123423632234§.§5214231344231357123423632234§(this.color);
         }
      }
      
      public function set isPreviewingColor(param1:Boolean) : void
      {
         this.§set catch switch§ = param1;
      }
      
      public function setArmor(param1:§5214233863233876123423632234§) : void
      {
         if(this.§52142318923202123423632234§ != null)
         {
            this.§52142318923202123423632234§.§52142330723320123423632234§(param1);
         }
         else
         {
            this.§else package function§ = param1;
         }
      }
   }
}

