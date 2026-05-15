package §5214234748234761123423632234§
{
   import §5214233085233098123423632234§.PresentPrepareWindow;
   import §5214233085233098123423632234§.SendPresentEvent;
   import §5214233206233219123423632234§.§5214237527237540123423632234§;
   import §5214233206233219123423632234§.PresentPurchaseModelBase;
   import alternativa.tanks.model.garage.§5214233988234001123423632234§;
   import alternativa.tanks.service.item.ItemService;
   import flash.events.Event;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class PresentPurchaseModel extends PresentPurchaseModelBase implements §5214237527237540123423632234§, §function switch continue§
   {
      
      public static var §521423120472312060123423632234§:ItemService;
      
      private var uid:String;
      
      private var text:String;
      
      private var §5214238830238843123423632234§:int;
      
      private var §5214233781233794123423632234§:PresentPrepareWindow;
      
      private var §switch do§:§521423120252312038123423632234§;
      
      public function PresentPurchaseModel()
      {
         super();
      }
      
      private function e436d6d9() : void
      {
         this.§5214233781233794123423632234§.removeEventListener(SendPresentEvent.SEND_PRESENT,getFunctionWrapper(this.c2d6e3a7));
         this.§5214233781233794123423632234§.removeEventListener("cancel",getFunctionWrapper(this.e436d6d9));
         this.§5214233781233794123423632234§ = null;
      }
      
      public function confirmPresentPurchase(param1:§521423120252312038123423632234§) : void
      {
         server.purchasePresent(this.uid,param1.name,this.text,this.§5214238830238843123423632234§);
      }
      
      private function c2d6e3a7(param1:SendPresentEvent) : void
      {
         this.uid = param1.uid;
         this.text = param1.text;
         this.§5214238830238843123423632234§ = §521423120472312060123423632234§.getPrice(this.§switch do§);
         this.e436d6d9();
         §5214233988234001123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§5214233988234001123423632234§)).showConfirmAlert(§521423120472312060123423632234§.getName(this.§switch do§),this.§5214238830238843123423632234§,§521423120472312060123423632234§.getPreviewResource(this.§switch do§).data,true,-1);
      }
      
      private function a67603eb(param1:Event) : void
      {
         this.e436d6d9();
      }
      
      public function preparePresent(param1:§521423120252312038123423632234§) : void
      {
         this.§switch do§ = param1;
         this.§5214233781233794123423632234§ = new PresentPrepareWindow();
         this.§5214233781233794123423632234§.addEventListener(SendPresentEvent.SEND_PRESENT,getFunctionWrapper(this.c2d6e3a7));
         this.§5214233781233794123423632234§.addEventListener("cancel",getFunctionWrapper(this.a67603eb));
      }
   }
}

