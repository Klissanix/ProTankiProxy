package §default for else§
{
   import §5214236944236957123423632234§.DiscreteSprite;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import §include use continue§.§5214237769237782123423632234§;
   import §include use continue§.§override const else§;
   import §package use for§.§const use class§;
   
   public class §521423140022314015123423632234§ extends DiscreteSprite
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §extends set else§:Dictionary = new Dictionary();
      
      private var §final set static§:Vector.<§override const else§> = new Vector.<§override const else§>();
      
      private var §5214234373234386123423632234§:§5214235147235160123423632234§;
      
      private var §521423101032310116123423632234§:§const use class§ = new §const use class§();
      
      public function §521423140022314015123423632234§()
      {
         super();
         this.§521423101032310116123423632234§.§521423118742311887123423632234§(8);
         addChild(this.§521423101032310116123423632234§);
      }
      
      public function §5214238211238224123423632234§(param1:§5214235147235160123423632234§) : void
      {
         if(this.§5214234373234386123423632234§)
         {
            this.§extends set else§[this.§5214234373234386123423632234§].enabled = true;
         }
         this.§extends set else§[param1].enabled = false;
         this.§5214234373234386123423632234§ = param1;
         dispatchEvent(new §false set else§(param1));
      }
      
      public function destroy() : void
      {
         var _loc1_:§override const else§ = null;
         for each(_loc1_ in this.§final set static§)
         {
            _loc1_.removeEventListener("click",this.§set package try§);
         }
      }
      
      private function §return for implements§(param1:§5214235147235160123423632234§, param2:String, param3:Class) : §override const else§
      {
         var _loc4_:§override const else§ = null;
         _loc4_ = new §override const else§(param1,param2,param3);
         this.§extends set else§[param1] = _loc4_;
         _loc4_.width = 104;
         this.§final set static§.push(_loc4_);
         _loc4_.addEventListener("click",this.§set package try§);
         return _loc4_;
      }
      
      public function §521423121902312203123423632234§(param1:§5214235147235160123423632234§) : void
      {
         switch(param1)
         {
            case §5214235147235160123423632234§.§5214239412239425123423632234§:
               this.§521423101032310116123423632234§.addItem(this.§return for implements§(§5214235147235160123423632234§.§5214239412239425123423632234§,§5214236363236376123423632234§.getText("SETTINGS_TAB_NAME_GAME"),§5214237769237782123423632234§.§521423114562311469123423632234§));
               break;
            case §5214235147235160123423632234§.§521423109792310992123423632234§:
               this.§521423101032310116123423632234§.addItem(this.§return for implements§(§5214235147235160123423632234§.§521423109792310992123423632234§,§5214236363236376123423632234§.getText("SETTINGS_TAB_NAME_GRAPHICS"),§5214237769237782123423632234§.§import for finally§));
               break;
            case §5214235147235160123423632234§.§521423106622310675123423632234§:
               this.§521423101032310116123423632234§.addItem(this.§return for implements§(§5214235147235160123423632234§.§521423106622310675123423632234§,§5214236363236376123423632234§.getText("SETTINGS_TAB_NAME_ACCOUNT"),§5214237769237782123423632234§.§throw const§));
               break;
            case §5214235147235160123423632234§.§catch use final§:
               this.§521423101032310116123423632234§.addItem(this.§return for implements§(§5214235147235160123423632234§.§catch use final§,§5214236363236376123423632234§.getText("SETTINGS_TAB_NAME_CONTROLS"),§5214237769237782123423632234§.§5214235704235717123423632234§));
         }
      }
      
      override public function get height() : Number
      {
         return this.§final set static§[0].height;
      }
      
      private function §set package try§(param1:MouseEvent) : void
      {
         var _loc2_:§5214235147235160123423632234§ = param1.currentTarget.getCategory();
         if(this.§5214234373234386123423632234§ != _loc2_)
         {
            this.§5214238211238224123423632234§(_loc2_);
         }
      }
      
      override public function get width() : Number
      {
         return this.§521423101032310116123423632234§.width;
      }
   }
}

