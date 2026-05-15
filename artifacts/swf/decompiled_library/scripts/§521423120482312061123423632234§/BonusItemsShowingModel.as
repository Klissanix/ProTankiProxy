package §521423120482312061123423632234§
{
   import §521423115932311606123423632234§.§with for default§;
   import §5214233785233798123423632234§.§switch try§;
   import §5214238696238709123423632234§.§5214231187231200123423632234§;
   import §5214238696238709123423632234§.§5214231502231515123423632234§;
   import §5214238696238709123423632234§.§case package with§;
   import §5214238696238709123423632234§.§catch const include§;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.gui.CongratulationsWindowWithBanner;
   import alternativa.tanks.gui.RepatriateBonusWindow;
   import flash.events.MouseEvent;
   import platform.client.fp10.core.model.§5214235049235062123423632234§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import §var var with§.DialogWindow;
   
   public class BonusItemsShowingModel extends §catch const include§ implements §5214231502231515123423632234§, §5214235049235062123423632234§
   {
      
      public static var display:IDisplay;
      
      public static var §default finally§:IDialogsService;
      
      private var §5214239569239582123423632234§:DialogWindow;
      
      public function BonusItemsShowingModel()
      {
         super();
      }
      
      public function objectUnloaded() : void
      {
         this.f646ac94();
      }
      
      private function f646ac94(param1:MouseEvent = null) : void
      {
         if(this.§5214239569239582123423632234§ != null)
         {
            §default finally§.removeDialog(this.§5214239569239582123423632234§);
            this.§5214239569239582123423632234§ = null;
         }
      }
      
      public function objectLoaded() : void
      {
         var _loc2_:§with for default§ = null;
         var _loc4_:§switch try§ = null;
         var _loc5_:§case package with§ = §switch var switch§();
         var _loc3_:Vector.<§5214231187231200123423632234§> = new Vector.<§5214231187231200123423632234§>();
         for each(var _loc1_ in _loc5_.§include for try§)
         {
            _loc3_.push(BonusItem(_loc1_.adapt(BonusItem)).getItem());
         }
         _loc2_ = §with for default§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§with for default§));
         if(_loc2_.getImage() == null)
         {
            this.§5214239569239582123423632234§ = new CongratulationsWindowWithBanner(_loc2_.getTopText(),_loc3_);
            _loc4_ = CongratulationsWindowWithBanner(this.§5214239569239582123423632234§).closeButton;
         }
         else
         {
            this.§5214239569239582123423632234§ = new RepatriateBonusWindow(_loc2_.getImage().data,_loc2_.getTopText(),_loc3_);
            _loc4_ = RepatriateBonusWindow(this.§5214239569239582123423632234§).closeButton;
         }
         _loc4_.addEventListener("click",this.f646ac94);
         §default finally§.addDialog(this.§5214239569239582123423632234§);
      }
      
      public function objectUnloadedPost() : void
      {
      }
      
      public function objectLoadedPost() : void
      {
      }
   }
}

