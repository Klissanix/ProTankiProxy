package §false set native§
{
   import §521423133592313372123423632234§.DateFormatter;
   import §5214236944236957123423632234§.DiscreteSprite;
   import §5214238576238589123423632234§.§521423128552312868123423632234§;
   import §5214238576238589123423632234§.§false switch use§;
   import alternativa.tanks.service.clan.user.ClanUserService;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import §override catch default§.Long;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoService;
   import §super for import§.§5214236680236693123423632234§;
   import §true switch true§.§5214231141231154123423632234§;
   import §try const default§.§5214234011234024123423632234§;
   
   public class §const package var§ extends DiscreteSprite
   {
      
      public static var §switch use var§:ClanUserService;
      
      public static var §5214234066234079123423632234§:ClanUserInfoService;
      
      private var §package use throw§:§5214231141231154123423632234§;
      
      private var §continue use in§:§5214231141231154123423632234§;
      
      private var §52142391623929123423632234§:§5214234011234024123423632234§;
      
      private var §var use with§:§5214231141231154123423632234§;
      
      private var §final use each§:§5214231141231154123423632234§;
      
      protected var §521423111612311174123423632234§:§5214236680236693123423632234§;
      
      public var §finally package with§:Long;
      
      private var §5214237851237864123423632234§:Number = 0;
      
      public function §const package var§(param1:Long)
      {
         super();
         this.§finally package with§ = param1;
         var _loc2_:§521423120252312038123423632234§ = §switch use var§.getObjectById(param1);
         if(_loc2_ != null)
         {
            this.§override do§();
         }
         else
         {
            §false switch use§.§521423119272311940123423632234§().addEventListener("ClanInfoDelayed." + param1.toString(),this.§override do§);
         }
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.resize();
      }
      
      public function §native const include§(param1:MouseEvent = null) : void
      {
         if(parent != null)
         {
            §521423101252310138123423632234§(parent).onRollOver();
            this.§5214233115233128123423632234§();
         }
      }
      
      public function §5214231776231789123423632234§(param1:MouseEvent = null) : void
      {
         if(parent != null)
         {
            §521423101252310138123423632234§(parent).onRollOut();
            this.§import set super§();
         }
      }
      
      private function §521423132302313243123423632234§() : §5214231141231154123423632234§
      {
         var _loc1_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         _loc1_.align = "left";
         _loc1_.autoSize = "left";
         _loc1_.color = 5898034;
         return _loc1_;
      }
      
      public function §5214233115233128123423632234§() : void
      {
         this.§521423111612311174123423632234§.visible = true;
      }
      
      private function §5214237625237638123423632234§() : void
      {
         if(this.§521423111612311174123423632234§ != null)
         {
            this.§521423111612311174123423632234§.x = this.width - this.§521423111612311174123423632234§.width - 8;
            this.§521423111612311174123423632234§.y = 1;
         }
      }
      
      public function resize() : void
      {
         if(this.§package use throw§ == null)
         {
            return;
         }
         var _loc1_:Vector.<Number> = §const set super§.§5214235191235204123423632234§;
         var _loc2_:Number = this.width - 2 * 11;
         this.§package use throw§.x = 0;
         this.§package use throw§.width = _loc2_ * _loc1_[0];
         this.§continue use in§.x = this.§package use throw§.x + _loc2_ * _loc1_[0] + 5;
         this.§continue use in§.width = _loc2_ * _loc1_[1];
         this.§52142391623929123423632234§.x = this.§continue use in§.x + _loc2_ * _loc1_[1] + 5;
         this.§var use with§.x = this.§52142391623929123423632234§.x + _loc2_ * _loc1_[2] + 5;
         this.§var use with§.width = _loc2_ * _loc1_[3];
         this.§final use each§.x = this.§var use with§.x + _loc2_ * _loc1_[3] + 3;
         this.§final use each§.width = _loc2_ * _loc1_[4];
         this.§5214237625237638123423632234§();
         graphics.clear();
         graphics.beginFill(16711680,0);
         graphics.drawRect(0,0,_loc2_,20);
         graphics.endFill();
      }
      
      protected function §override do§(param1:Event = null) : void
      {
         §false switch use§.§521423119272311940123423632234§().removeEventListener("ClanInfoDelayed." + this.§finally package with§.toString(),this.§override do§);
         var _loc2_:§521423120252312038123423632234§ = §switch use var§.getObjectById(this.§finally package with§);
         var _loc3_:§521423128552312868123423632234§ = _loc2_.adapt(§521423128552312868123423632234§) as §521423128552312868123423632234§;
         this.§package use throw§ = this.§521423132302313243123423632234§();
         this.§package use throw§.text = _loc3_.§in switch set§();
         addChild(this.§package use throw§);
         this.§continue use in§ = this.§521423132302313243123423632234§();
         this.§continue use in§.text = _loc3_.§do var include§();
         addChild(this.§continue use in§);
         this.§52142391623929123423632234§ = new §5214234011234024123423632234§(_loc3_.§super use catch§(),false);
         addChild(this.§52142391623929123423632234§);
         this.§var use with§ = this.§521423132302313243123423632234§();
         this.§var use with§.text = _loc3_.§521423110742311087123423632234§().toString();
         addChild(this.§var use with§);
         this.§final use each§ = this.§521423132302313243123423632234§();
         this.§final use each§.text = DateFormatter.formatDateToLocalized(new Date(_loc3_.§false class§()));
         addChild(this.§final use each§);
         this.§521423111612311174123423632234§ = new §5214236680236693123423632234§();
         addChild(this.§521423111612311174123423632234§);
         this.§521423111612311174123423632234§.visible = false;
         this.§521423111612311174123423632234§.addEventListener("click",this.§default use with§,false,0,true);
         addEventListener("rollOver",this.§native const include§,false,0,true);
         addEventListener("rollOut",this.§5214231776231789123423632234§,false,0,true);
         this.resize();
         this.§5214231776231789123423632234§();
      }
      
      protected function §default use with§(param1:MouseEvent) : void
      {
      }
      
      override public function get width() : Number
      {
         return this.§5214237851237864123423632234§;
      }
      
      public function §import set super§() : void
      {
         this.§521423111612311174123423632234§.visible = false;
      }
   }
}

