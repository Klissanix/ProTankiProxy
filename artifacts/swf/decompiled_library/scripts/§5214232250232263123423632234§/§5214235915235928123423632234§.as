package §5214232250232263123423632234§
{
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Object3D;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §5214235915235928123423632234§ implements §521423101062310119123423632234§
   {
      
      private var §import const throw§:§5214233138233151123423632234§;
      
      private var §5214232073232086123423632234§:Stage;
      
      private var §super use throw§:§var return§;
      
      private var §5214239291239304123423632234§:Camera3D;
      
      private var §true set set§:Number;
      
      private var §521423125112312524123423632234§:Number;
      
      private var §5214236526236539123423632234§:Vector.<int>;
      
      private var §break var null§:Vector.<Number>;
      
      private var §5214239109239122123423632234§:Object3D;
      
      public function §5214235915235928123423632234§(param1:§5214233138233151123423632234§, param2:Stage, param3:§var return§, param4:Camera3D, param5:Object3D)
      {
         super();
         this.§5214236526236539123423632234§ = new Vector.<int>(2);
         this.§break var null§ = new Vector.<Number>(2);
         this.§import const throw§ = param1;
         this.§5214232073232086123423632234§ = param2;
         this.§super use throw§ = param3;
         this.§5214239291239304123423632234§ = param4;
         this.§5214239109239122123423632234§ = param5;
      }
      
      private function §switch var case§(param1:MouseEvent) : void
      {
         this.§5214239109239122123423632234§.rotationZ = this.§switch use false§();
         var _loc2_:Number = (getTimer() - this.§5214236526236539123423632234§[1]) / 1000;
         if(_loc2_ == 0)
         {
            _loc2_ = 0.1;
         }
         this.§super use throw§.§5214234563234576123423632234§ = (this.§5214239109239122123423632234§.rotationZ - this.§break var null§[1]) / _loc2_;
         this.§import const throw§.§5214239021239034123423632234§(this,§catch package get§.§set package§);
      }
      
      public function §521423120402312053123423632234§() : void
      {
         this.§5214239109239122123423632234§.rotationZ = this.§switch use false§();
         this.§5214236526236539123423632234§[1] = this.§5214236526236539123423632234§[0];
         this.§5214236526236539123423632234§[0] = getTimer();
         this.§break var null§[1] = this.§break var null§[0];
         this.§break var null§[0] = this.§5214239109239122123423632234§.rotationZ;
      }
      
      public function §use use null§() : void
      {
         this.§5214232073232086123423632234§.removeEventListener("mouseUp",this.§switch var case§);
      }
      
      private function §switch use false§() : Number
      {
         var _loc1_:Number = 2 * 3.141592653589793 / this.§5214239291239304123423632234§.view.width;
         return this.§true set set§ + (this.§521423125112312524123423632234§ - this.§5214232073232086123423632234§.mouseX) * _loc1_;
      }
      
      public function §else if§() : void
      {
         this.§5214232073232086123423632234§.addEventListener("mouseUp",this.§switch var case§);
         this.§true set set§ = this.§5214239109239122123423632234§.rotationZ;
         this.§521423125112312524123423632234§ = this.§5214232073232086123423632234§.mouseX;
         this.§5214236526236539123423632234§[0] = getTimer();
         this.§5214236526236539123423632234§[1] = this.§5214236526236539123423632234§[0];
         this.§break var null§[0] = this.§5214239109239122123423632234§.rotationZ;
         this.§break var null§[1] = this.§break var null§[0];
      }
   }
}

