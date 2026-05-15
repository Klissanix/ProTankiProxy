package §5214232250232263123423632234§
{
   import alternativa.engine3d.core.Object3D;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §5214237149237162123423632234§ implements §521423101062310119123423632234§
   {
      
      private static const §package set false§:Number = 0.08726646259971647;
      
      private static const §521423106042310617123423632234§:Number = 0.08726646259971647;
      
      private var §import const throw§:§5214233138233151123423632234§;
      
      private var §dynamic finally finally§:IEventDispatcher;
      
      private var §5214234563234576123423632234§:Number = 0;
      
      private var §do use super§:int;
      
      private var §5214239109239122123423632234§:Object3D;
      
      public function §5214237149237162123423632234§(param1:§5214233138233151123423632234§, param2:IEventDispatcher, param3:Object3D)
      {
         super();
         this.§import const throw§ = param1;
         this.§dynamic finally finally§ = param2;
         this.§5214239109239122123423632234§ = param3;
      }
      
      private function §5214235763235776123423632234§() : Number
      {
         var _loc1_:int = getTimer();
         var _loc2_:Number = (_loc1_ - this.§do use super§) / 1000;
         this.§do use super§ = _loc1_;
         if(_loc2_ == 0)
         {
            _loc2_ = 0.1;
         }
         return _loc2_;
      }
      
      public function §use use null§() : void
      {
         this.§dynamic finally finally§.removeEventListener("mouseDown",this.§implements package null§);
      }
      
      private function §implements package null§(param1:MouseEvent) : void
      {
         this.§import const throw§.§5214239021239034123423632234§(this,§catch package get§.§catch const class§);
      }
      
      public function §521423120402312053123423632234§() : void
      {
         var _loc1_:Number = this.§5214235763235776123423632234§();
         this.§extends catch true§(_loc1_);
         this.§5214239109239122123423632234§.rotationZ += this.§5214234563234576123423632234§ * _loc1_;
      }
      
      public function §else if§() : void
      {
         this.§dynamic finally finally§.addEventListener("mouseDown",this.§implements package null§);
         this.§do use super§ = getTimer();
         this.§5214234563234576123423632234§ = 0;
      }
      
      private function §extends catch true§(param1:Number) : void
      {
         if(this.§5214234563234576123423632234§ < 0.08726646259971647)
         {
            this.§5214234563234576123423632234§ += 0.08726646259971647 * param1;
            if(this.§5214234563234576123423632234§ > 0.08726646259971647)
            {
               this.§5214234563234576123423632234§ = 0.08726646259971647;
            }
         }
      }
   }
}

