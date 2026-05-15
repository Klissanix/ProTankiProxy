package §5214231620231633123423632234§
{
   import §5214236944236957123423632234§.DiscreteSprite;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.settings.SettingEnum;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import §include use continue§.§5214231705231718123423632234§;
   import §include use continue§.§package override§;
   
   public class §5214237111237124123423632234§ extends DiscreteSprite
   {
      
      public static const §5214236332236345123423632234§:int = 8;
      
      protected static const §521423126682312681123423632234§:int = 10;
      
      protected static const §5214239078239091123423632234§:int = 3;
      
      public static var §521423998231011123423632234§:ISettingsService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      protected var §case const case§:Vector.<DisplayObject> = new Vector.<DisplayObject>();
      
      public function §5214237111237124123423632234§()
      {
         super();
      }
      
      public function destroy() : void
      {
         for each(var _loc1_ in this.§case const case§)
         {
            _loc1_.removeEventListener("click",this.§5214236706236719123423632234§);
         }
      }
      
      public function §true package final§() : void
      {
      }
      
      public function show() : void
      {
      }
      
      private function §5214236706236719123423632234§(param1:MouseEvent) : void
      {
         var _loc2_:§5214231705231718123423632234§ = null;
         if(param1.currentTarget is §5214231705231718123423632234§)
         {
            _loc2_ = §5214231705231718123423632234§(param1.currentTarget);
            §521423998231011123423632234§.setClientSetting(_loc2_.§5214232828232841123423632234§(),_loc2_.§5214233002233015123423632234§());
         }
      }
      
      protected function §get use dynamic§(param1:SettingEnum, param2:String, param3:Boolean, param4:int = 0, param5:int = 0) : §package override§
      {
         var _loc6_:§package override§ = new §package override§(param1,param2);
         _loc6_.§return for case§ = param3;
         _loc6_.addEventListener("click",this.§5214236706236719123423632234§);
         _loc6_.x = param4;
         _loc6_.y = param5;
         this.§case const case§.push(_loc6_);
         _loc6_.label = param2;
         return _loc6_;
      }
   }
}

