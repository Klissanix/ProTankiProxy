package §5214234891234904123423632234§
{
   import alternativa.tanks.gui.CrystalLabel;
   import alternativa.tanks.service.money.IMoneyService;
   import alternativa.tanks.service.money.§false catch case§;
   import flash.events.Event;
   import §true switch true§.§do var const§;
   
   public class CrystalButton extends §do var const§ implements §false catch case§
   {
      
      public static var §var var finally§:IMoneyService;
      
      protected var §get package break§:CrystalLabel = new CrystalLabel();
      
      protected var crystals:int;
      
      public function CrystalButton(param1:String = "", param2:int = 0, param3:int = 120)
      {
         super();
         this.width = param3;
         §var switch override§.addChild(this.§get package break§);
         §extends for native§(param1);
         this.setCost(param2);
         this.show();
         addEventListener("addedToStage",this.f1aa02ec);
         addEventListener("removedFromStage",this.e3e7c912);
      }
      
      protected function show() : void
      {
         super.§continue const true§(§continue use with§,this.§get package break§);
      }
      
      public function crystalsChanged(param1:int) : void
      {
         this.a6b73db0();
      }
      
      private function a6b73db0() : void
      {
         if(§var var finally§.crystal < this.crystals)
         {
            this.§get package break§.setColor(16731648);
         }
         else if(this.crystals == 0)
         {
            this.§get package break§.setColor(11206400);
         }
         else
         {
            this.§get package break§.setColor(16777215);
         }
      }
      
      private function f1aa02ec(param1:Event) : void
      {
         §var var finally§.addListener(this);
         this.a6b73db0();
      }
      
      private function e3e7c912(param1:Event) : void
      {
         §var var finally§.removeListener(this);
      }
      
      public function setCost(param1:int) : void
      {
         this.crystals = param1;
         this.§get package break§.setCost(param1);
         this.§get package break§.x = (§5214237851237864123423632234§ - this.§get package break§.width) * 0.5;
         this.a6b73db0();
      }
   }
}

