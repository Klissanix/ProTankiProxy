package §var const get§
{
   import §521423139282313941123423632234§.ConsoleVarFloat;
   import alternativa.math.Vector3;
   import alternativa.osgi.service.display.IDisplay;
   import §finally catch with§.§throw for continue§;
   import flash.display.Stage;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import §var set var§.§521423132492313262123423632234§;
   import §var set var§.§false switch class§;
   import §var set var§.§finally catch null§;
   
   public class §each const set§ extends §finally catch null§ implements §false switch class§
   {
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      private static const §5214231287231300123423632234§:ConsoleVarFloat = new ConsoleVarFloat("cam_smooth",0.1,0.001,1);
      
      private static const §throw for native§:ConsoleVarFloat = new ConsoleVarFloat("m_pitch",-0.006,-100,100);
      
      private static const §static finally use§:ConsoleVarFloat = new ConsoleVarFloat("m_yaw",-0.006,-100,100);
      
      private static const §true const get§:ConsoleVarFloat = new ConsoleVarFloat("cam_spd",1300,0,10000);
      
      private static const §5214233590233603123423632234§:ConsoleVarFloat = new ConsoleVarFloat("cam_acc",4,0,1000000);
      
      private static const §use for with§:ConsoleVarFloat = new ConsoleVarFloat("yaw_speed",1,-10,10);
      
      private static const §include const try§:ConsoleVarFloat = new ConsoleVarFloat("pitch_speed",1,-10,10);
      
      private var §for var break§:Boolean;
      
      private var §5214235047235060123423632234§:Number;
      
      private var §52142385723870123423632234§:Number;
      
      private var §package for null§:Number;
      
      private var §521423139072313920123423632234§:Number;
      
      private var §dynamic final§:Vector3 = new Vector3();
      
      private var §else use extends§:Vector3 = new Vector3();
      
      private var §5214235876235889123423632234§:Vector3 = new Vector3();
      
      private var §default for while§:§switch var var§;
      
      private var §finally switch import§:Vector.<§5214234182234195123423632234§>;
      
      private var §default for native§:§521423137392313752123423632234§ = new §5214234121234134123423632234§();
      
      public var §521423124662312479123423632234§:§default finally var§;
      
      private var §else switch while§:Boolean = false;
      
      public function §each const set§()
      {
         super();
         this.§521423124662312479123423632234§ = new §default finally var§(this);
         this.§finally switch import§ = Vector.<§5214234182234195123423632234§>([new §var package in§(this),this.§default for native§,this.§521423124662312479123423632234§]);
         this.§5214231520231533123423632234§();
         this.§default for while§ = new §switch var var§(Vector.<§521423104832310496123423632234§>([new §set finally var§(§true const get§,§5214233590233603123423632234§),new §with package use§(§true const get§,§5214233590233603123423632234§)]));
      }
      
      private static function §function use default§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = (param2 - param1) % (2 * 3.141592653589793);
         if(_loc3_ > 3.141592653589793)
         {
            return _loc3_ - 2 * 3.141592653589793;
         }
         if(_loc3_ < -3.141592653589793)
         {
            return 2 * 3.141592653589793 + _loc3_;
         }
         return _loc3_;
      }
      
      override public function §5214234355234368123423632234§() : void
      {
         this.§default for native§.reset();
         this.§5214235876235889123423632234§.reset();
         this.§52142397723990123423632234§();
      }
      
      public function §52142397723990123423632234§() : void
      {
         var _loc1_:Stage = null;
         this.§521423140952314108123423632234§();
         if(this.§else switch while§)
         {
            _loc1_ = §5214235917235930123423632234§.stage;
            _loc1_.removeEventListener("mouseDown",this.§implements package null§);
            _loc1_.removeEventListener("keyDown",this.§null var class§);
            _loc1_.removeEventListener("keyUp",this.§521423135372313550123423632234§);
            this.§else switch while§ = false;
         }
      }
      
      private function §null var class§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 32)
         {
            this.§default for while§.§default use set§();
         }
         for each(var _loc2_ in this.§finally switch import§)
         {
            _loc2_.§5214233954233967123423632234§(param1);
         }
      }
      
      override public function §521423120402312053123423632234§(param1:int, param2:int) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Vector3 = null;
         var _loc5_:§521423132492313262123423632234§ = §while set for§();
         if(_loc5_ != null)
         {
            _loc3_ = param2 / 1000;
            _loc4_ = this.§default for while§.§const use do§().§5214232162232175123423632234§(this.§default for native§,§while set for§(),_loc3_);
            this.§dynamic final§.x += _loc4_.x;
            this.§dynamic final§.y += _loc4_.y;
            this.§dynamic final§.z += _loc4_.z;
            if(this.§for var break§)
            {
               this.§else use extends§.x = this.§package for null§ + (§5214235917235930123423632234§.stage.mouseY - this.§52142385723870123423632234§) * §throw for native§.value;
               this.§else use extends§.x = §throw for continue§.§52142393423947123423632234§(this.§else use extends§.x,-3.141592653589793,0);
               this.§5214235876235889123423632234§.x = this.§else use extends§.x - _loc5_.rotationX;
               this.§else use extends§.z = this.§521423139072313920123423632234§ + (§5214235917235930123423632234§.stage.mouseX - this.§5214235047235060123423632234§) * §static finally use§.value;
               this.§5214235876235889123423632234§.z = this.§else use extends§.z - _loc5_.rotationZ;
            }
            else if(this.§default for native§.§while package finally§())
            {
               this.§else use extends§.x += this.§default for native§.§5214237634237647123423632234§() * §include const try§.value * _loc3_;
               this.§else use extends§.x = §throw for continue§.§52142393423947123423632234§(this.§else use extends§.x,-3.141592653589793,0);
               this.§5214235876235889123423632234§.x = this.§else use extends§.x - _loc5_.rotationX;
               this.§5214235876235889123423632234§.z += this.§default for native§.§5214231965231978123423632234§() * §use for with§.value * _loc3_;
            }
            _loc5_.x += (this.§dynamic final§.x - _loc5_.x) * §5214231287231300123423632234§.value;
            _loc5_.y += (this.§dynamic final§.y - _loc5_.y) * §5214231287231300123423632234§.value;
            _loc5_.z += (this.§dynamic final§.z - _loc5_.z) * §5214231287231300123423632234§.value;
            _loc3_ = this.§5214235876235889123423632234§.x * §5214231287231300123423632234§.value;
            _loc5_.rotationX += _loc3_;
            this.§5214235876235889123423632234§.x -= _loc3_;
            _loc3_ = this.§5214235876235889123423632234§.y * §5214231287231300123423632234§.value;
            _loc5_.rotationY += _loc3_;
            this.§5214235876235889123423632234§.y -= _loc3_;
            _loc3_ = this.§5214235876235889123423632234§.z * §5214231287231300123423632234§.value;
            _loc5_.rotationZ += _loc3_;
            this.§5214235876235889123423632234§.z -= _loc3_;
         }
      }
      
      internal function §while const break§(param1:Vector3, param2:Vector3) : void
      {
         this.§521423124662312479123423632234§.§5214235108235121123423632234§();
         this.§dynamic final§.copy(param1);
         this.§else use extends§.copy(param2);
         var _loc3_:§521423132492313262123423632234§ = §while set for§();
         this.§5214235876235889123423632234§.x = §function use default§(_loc3_.rotationX,param2.x);
         this.§5214235876235889123423632234§.y = §function use default§(_loc3_.rotationY,param2.y);
         this.§5214235876235889123423632234§.z = §function use default§(_loc3_.rotationZ,param2.z);
      }
      
      private function §implements package null§(param1:MouseEvent) : void
      {
         this.§for var break§ = true;
         this.§5214235047235060123423632234§ = param1.stageX;
         this.§52142385723870123423632234§ = param1.stageY;
         var _loc2_:§521423132492313262123423632234§ = §while set for§();
         this.§package for null§ = _loc2_.rotationX;
         this.§521423139072313920123423632234§ = _loc2_.rotationZ;
         §5214235917235930123423632234§.stage.addEventListener("mouseUp",this.§5214231483231496123423632234§);
      }
      
      public function §return set while§() : void
      {
         var _loc1_:Stage = null;
         if(!this.§else switch while§)
         {
            _loc1_ = §5214235917235930123423632234§.stage;
            _loc1_.addEventListener("mouseDown",this.§implements package null§);
            _loc1_.addEventListener("keyDown",this.§null var class§);
            _loc1_.addEventListener("keyUp",this.§521423135372313550123423632234§);
            this.§else switch while§ = true;
         }
      }
      
      private function §521423135372313550123423632234§(param1:KeyboardEvent) : void
      {
         for each(var _loc2_ in this.§finally switch import§)
         {
            _loc2_.§set catch each§(param1);
         }
      }
      
      public function §5214231520231533123423632234§() : void
      {
         var _loc1_:§521423132492313262123423632234§ = §while set for§();
         this.§dynamic final§.x = _loc1_.x;
         this.§dynamic final§.y = _loc1_.y;
         this.§dynamic final§.z = _loc1_.z;
         this.§else use extends§.x = _loc1_.rotationX;
         this.§else use extends§.y = _loc1_.rotationY;
         this.§else use extends§.z = _loc1_.rotationZ;
      }
      
      override public function §extends for include§() : void
      {
         super.§extends for include§();
         this.§5214235876235889123423632234§.reset();
         this.§return set while§();
      }
      
      private function §521423140952314108123423632234§() : void
      {
         if(this.§for var break§)
         {
            §5214235917235930123423632234§.stage.removeEventListener("mouseUp",this.§5214231483231496123423632234§);
            this.§for var break§ = false;
         }
      }
      
      private function §5214231483231496123423632234§(param1:MouseEvent) : void
      {
         this.§521423140952314108123423632234§();
      }
      
      override public function close() : void
      {
         this.§521423124662312479123423632234§.close();
      }
   }
}

