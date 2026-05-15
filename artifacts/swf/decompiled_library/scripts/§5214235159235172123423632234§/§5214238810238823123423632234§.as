package §5214235159235172123423632234§
{
   import §521423112462311259123423632234§.§5214234049234062123423632234§;
   import §5214233059233072123423632234§.ItemProperty;
   import §5214233832233845123423632234§.§catch const finally§;
   import §5214234324234337123423632234§.§override true§;
   import §5214238361238374123423632234§.§5214232328232341123423632234§;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleUtils;
   import §false switch import§.§5214231155231168123423632234§;
   import flash.utils.getTimer;
   import §for const do§.§521423117342311747123423632234§;
   import §set package each§.§5214237646237659123423632234§;
   
   public class §5214238810238823123423632234§ extends §5214234049234062123423632234§
   {
      
      private var §try const continue§:§5214231155231168123423632234§;
      
      private var §5214232924232937123423632234§:int;
      
      private var §52142392923942123423632234§:int;
      
      private var §each const include§:§continue switch false§;
      
      private var §5214235460235473123423632234§:Number;
      
      private var §5214233177233190123423632234§:Vector3 = new Vector3();
      
      private var §5214234597234610123423632234§:§dynamic finally function§;
      
      private var §var switch do§:int;
      
      private var §5214236382236395123423632234§:§catch const finally§;
      
      public function §5214238810238823123423632234§(param1:§5214231155231168123423632234§, param2:§dynamic finally function§, param3:§continue switch false§, param4:§catch const finally§)
      {
         this.§try const continue§ = param1;
         this.§5214234597234610123423632234§ = param2;
         this.§each const include§ = param3;
         this.§var switch do§ = param2.§super finally§();
         var _loc5_:§5214237646237659123423632234§ = param2.§521423133412313354123423632234§();
         this.§5214235460235473123423632234§ = _loc5_.§include var native§();
         this.§5214236382236395123423632234§ = param4;
         super(param2);
      }
      
      override public function §5214233388233401123423632234§() : §5214232328232341123423632234§
      {
         return super.§5214233388233401123423632234§();
      }
      
      override public function getStatus() : Number
      {
         if(this.§5214232924232937123423632234§ == 0)
         {
            return 1 - (this.§52142392923942123423632234§ - getTimer()) / this.§try const continue§.§521423140362314049123423632234§;
         }
         return this.§5214232924232937123423632234§ / this.§try const continue§.§5214239828239841123423632234§;
      }
      
      override public function reset() : void
      {
         super.reset();
         this.§5214236382236395123423632234§.§set set do§();
         this.§5214232924232937123423632234§ = this.§try const continue§.§5214239828239841123423632234§;
         this.§52142392923942123423632234§ = getTimer();
      }
      
      override public function §521423128582312871123423632234§() : ItemProperty
      {
         return ItemProperty.SHOTGUN_RESISTANCE;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.§5214234597234610123423632234§ = null;
         this.§each const include§ = null;
         this.§try const continue§ = null;
         this.§5214236382236395123423632234§.§set set do§();
         this.§5214236382236395123423632234§ = null;
      }
      
      private function §521423125102312523123423632234§(param1:int) : void
      {
         var _loc2_:Vector.<§override true§> = null;
         if(this.§5214232924232937123423632234§ == 0)
         {
            this.§5214232924232937123423632234§ = this.§try const continue§.§5214239828239841123423632234§;
         }
         var _loc3_:§5214232328232341123423632234§ = this.§5214233388233401123423632234§();
         --this.§5214232924232937123423632234§;
         if(this.§5214232924232937123423632234§ == 0)
         {
            this.§52142392923942123423632234§ = param1 + this.§try const continue§.§521423140362314049123423632234§;
            this.§5214236382236395123423632234§.§5214238412238425123423632234§(_loc3_.§static set catch§(),this.§try const continue§.§521423140362314049123423632234§);
         }
         else
         {
            this.§52142392923942123423632234§ = param1 + this.§var switch do§;
            this.§5214236382236395123423632234§.§include continue§(_loc3_.§static set catch§(),this.§var switch do§);
         }
         _loc3_.§52142371223725123423632234§(§var catch package§);
         var _loc4_:§521423117342311747123423632234§ = this.§5214234597234610123423632234§.§case for implements§();
         _loc3_.§break switch catch§().§521423492362123423632234§(§var catch package§.§521423100222310035123423632234§,§var catch package§.§5214239673239686123423632234§,-_loc4_.§import finally const§());
         _loc3_.§get use extends§();
         if(BattleUtils.isTurretAboveGround(_loc3_.§break switch catch§(),§var catch package§))
         {
            _loc2_ = this.§each const include§.§super switch implements§(§var catch package§,_loc3_.§break switch catch§(),this.§5214233177233190123423632234§);
            this.§5214234597234610123423632234§.§5214234341234354123423632234§().§static const class§(param1,this.§5214233177233190123423632234§,_loc2_);
         }
         else
         {
            this.§5214233177233190123423632234§.copy(§var catch package§.§5214239673239686123423632234§);
            this.§5214234597234610123423632234§.§5214234341234354123423632234§().§5214239656239669123423632234§(param1,this.§5214233177233190123423632234§);
         }
         this.§5214236382236395123423632234§.§override set switch§(this.§5214234597234610123423632234§,§var catch package§,_loc3_,this.§5214233177233190123423632234§);
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         this.§5214236382236395123423632234§.§set set do§();
      }
      
      override public function runLogic(param1:int, param2:int) : void
      {
         if(§5214239485239498123423632234§() && param1 >= this.§52142392923942123423632234§)
         {
            this.§521423125102312523123423632234§(param1);
         }
      }
   }
}

