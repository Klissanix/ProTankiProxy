package §5214232250232263123423632234§
{
   import alternativa.engine3d.core.Object3D;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §5214235995236008123423632234§ implements §521423101062310119123423632234§
   {
      
      private static const §use use else§:Number = 0.02;
      
      private var §import const throw§:§5214233138233151123423632234§;
      
      private var §dynamic finally finally§:IEventDispatcher;
      
      private var §super use throw§:§var return§;
      
      private var §do use super§:int;
      
      private var §5214239109239122123423632234§:Object3D;
      
      public function §5214235995236008123423632234§(param1:§5214233138233151123423632234§, param2:IEventDispatcher, param3:§var return§, param4:Object3D)
      {
         super();
         this.§import const throw§ = param1;
         this.§dynamic finally finally§ = param2;
         this.§super use throw§ = param3;
         this.§5214239109239122123423632234§ = param4;
      }
      
      private function §implements package null§(param1:MouseEvent) : void
      {
         this.§import const throw§.§5214239021239034123423632234§(this,§catch package get§.§catch const class§);
      }
      
      public function §521423120402312053123423632234§() : void
      {
         var _loc1_:int = getTimer();
         var _loc2_:Number = (_loc1_ - this.§do use super§) / 1000;
         this.§do use super§ = _loc1_;
         this.§5214239109239122123423632234§.rotationZ += this.§super use throw§.§5214234563234576123423632234§ * _loc2_;
         if(Math.abs(this.§super use throw§.§5214234563234576123423632234§) > 0.02)
         {
            this.§super use throw§.§5214234563234576123423632234§ *= Math.exp(-1.5 * _loc2_);
         }
         else
         {
            this.§super use throw§.§5214234563234576123423632234§ = 0;
            this.§import const throw§.§5214239021239034123423632234§(this,§catch package get§.§5214233328233341123423632234§);
         }
      }
      
      public function §use use null§() : void
      {
         this.§dynamic finally finally§.removeEventListener("mouseDown",this.§implements package null§);
      }
      
      public function §else if§() : void
      {
         this.§dynamic finally finally§.addEventListener("mouseDown",this.§implements package null§);
         this.§do use super§ = getTimer();
      }
   }
}

