package alternativa.tanks.models.controlpoints.hud
{
   import §521423120812312094123423632234§.§5214234120234133123423632234§;
   import §521423139282313941123423632234§.ConsoleVarFloat;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§dynamic switch break§;
   import alternativa.tanks.models.controlpoints.§dynamic catch while§;
   import §class switch implements§.KeyPointSoundEffects;
   import §else switch default§.§override for default§;
   import §finally catch with§.§throw for continue§;
   
   public class KeyPoint implements §override for default§, §dynamic switch break§
   {
      
      private static const §5214232725232738123423632234§:Number = 100;
      
      private static const §get switch return§:ConsoleVarFloat = new ConsoleVarFloat("dom_smoothing_factor",0.95,0,1);
      
      private var id:int;
      
      private var name:String;
      
      private var §super for if§:§5214234120234133123423632234§;
      
      private var position:Vector3;
      
      private var view:KeyPointView;
      
      private var §521423122372312250123423632234§:Number = 0;
      
      private var §throw package null§:Number = 0;
      
      private var §521423111812311194123423632234§:Number = 0;
      
      private var §else for null§:§dynamic catch while§;
      
      private var §52142380523818123423632234§:BattleService;
      
      private var §import var final§:Boolean;
      
      private var §5214238487238500123423632234§:KeyPointSoundEffects;
      
      public var §5214236142236155123423632234§:int;
      
      public function KeyPoint(param1:int, param2:String, param3:Vector3, param4:BattleService, param5:§dynamic catch while§, param6:KeyPointSoundEffects, param7:KeyPointView)
      {
         super();
         this.id = param1;
         this.name = param2;
         this.view = param7;
         this.position = param3;
         this.§else for null§ = param5;
         this.§5214238487238500123423632234§ = param6;
         this.§52142380523818123423632234§ = param4;
         this.§import var final§ = false;
         param4.getBattleScene3D().§5214231991232004123423632234§(this,0);
         param7.addToScene(param4.getBattleScene3D(),param3);
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.view.update(this.§throw package null§,this.§52142380523818123423632234§.getBattleScene3D().§while set for§());
      }
      
      private function e425e317() : void
      {
         var _loc1_:Number = this.§throw package null§ * this.§521423111812311194123423632234§;
         if(this.§throw package null§ >= 100 || this.§throw package null§ <= -100)
         {
            this.§5214238487238500123423632234§.stopSound();
            return;
         }
         if(_loc1_ > 0 || this.§throw package null§ == 0 && this.§521423111812311194123423632234§ != 0)
         {
            this.§5214238487238500123423632234§.playActivationSound(this.position);
         }
         else if(_loc1_ < 0)
         {
            this.§5214238487238500123423632234§.playDeactivationSound(this.position);
         }
         else
         {
            this.§5214238487238500123423632234§.stopSound();
         }
      }
      
      public function setServerProgressData(param1:Number, param2:Number) : void
      {
         this.§521423122372312250123423632234§ = param1;
         this.§521423111812311194123423632234§ = param2;
      }
      
      public function getCaptureState() : §5214234120234133123423632234§
      {
         return this.§super for if§;
      }
      
      private function f1ac3b4f() : void
      {
         var _loc1_:Number = §throw for continue§.§52142393423947123423632234§(this.§throw package null§ + (this.§521423122372312250123423632234§ - this.§throw package null§) * §get switch return§.value,-100,100);
         if(this.§5214236142236155123423632234§ == 0 && this.§throw package null§ * _loc1_ <= 0)
         {
            this.§521423122372312250123423632234§ = 0;
            this.§throw package null§ = 0;
            this.§521423111812311194123423632234§ = 0;
         }
         else
         {
            this.§throw package null§ = _loc1_;
         }
      }
      
      private function d7378ef6(param1:int) : void
      {
         if(this.§521423111812311194123423632234§ != 0)
         {
            this.§521423122372312250123423632234§ += this.§521423111812311194123423632234§ * param1 / 1000;
            if(!this.§import var final§ && this.b5627ef5())
            {
               this.§else for null§.forceUpdatePoint(this.id);
               this.§import var final§ = true;
            }
         }
      }
      
      public function getName() : String
      {
         return this.name;
      }
      
      public function setCaptureState(param1:§5214234120234133123423632234§) : void
      {
         this.§super for if§ = param1;
         this.§import var final§ = false;
         if(this.§super for if§ == §5214234120234133123423632234§.§const use while§)
         {
            this.view.becomeNeutral();
            if(this.§5214236142236155123423632234§ == 0)
            {
               this.§521423122372312250123423632234§ = 0;
               this.§throw package null§ = 0;
               this.§521423111812311194123423632234§ = 0;
            }
         }
         else
         {
            if(this.§super for if§ == §5214234120234133123423632234§.§implements set implements§)
            {
               this.view.becomeBlue();
               this.§521423122372312250123423632234§ = 100;
            }
            else
            {
               this.view.becomeRed();
               this.§521423122372312250123423632234§ = -100;
            }
            this.§throw package null§ = this.§521423122372312250123423632234§;
            this.§521423111812311194123423632234§ = 0;
         }
      }
      
      public function runLogic(param1:int, param2:int) : void
      {
         this.d7378ef6(param2);
         this.f1ac3b4f();
         this.e425e317();
      }
      
      public function getPosition() : Vector3
      {
         return this.position;
      }
      
      public function getClientProgress() : Number
      {
         return this.§throw package null§;
      }
      
      public function readPosition(param1:Vector3) : void
      {
         param1.copy(this.position);
         param1.z += 350;
      }
      
      public function reset() : void
      {
         this.§5214236142236155123423632234§ = 0;
         this.§521423122372312250123423632234§ = 0;
         this.§throw package null§ = 0;
         this.§521423111812311194123423632234§ = 0;
         this.§super for if§ = §5214234120234133123423632234§.§const use while§;
         this.view.becomeNeutral();
         this.§5214238487238500123423632234§.stopSound();
      }
      
      private function b5627ef5() : Boolean
      {
         return (§521423122372312250123423632234§ > 0 ? §521423122372312250123423632234§ : -§521423122372312250123423632234§) >= 100;
      }
   }
}

