package §package catch true§
{
   import §5214235774235787123423632234§.§5214236557236570123423632234§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.service.settings.ISettingsService;
   import §finally catch with§.§throw for continue§;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import §var set var§.§521423132492313262123423632234§;
   import §var set var§.§false switch class§;
   
   public class §switch var finally§ implements §false switch class§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §5214232551232564123423632234§:ISettingsService;
      
      private static const §dynamic for do§:Number = 15;
      
      private static const §final for class§:Number = 0.2617993877991494;
      
      private static var §521423107202310733123423632234§:Vector3 = new Vector3();
      
      private static var §5214236152236165123423632234§:Matrix4 = new Matrix4();
      
      private static var §5214236106236119123423632234§:Matrix4 = new Matrix4();
      
      private static var §5214235089235102123423632234§:Vector3 = new Vector3();
      
      private var §5214232073232086123423632234§:Stage;
      
      private var §5214236697236710123423632234§:Point;
      
      private var §null const var§:Boolean = false;
      
      private var §5214239291239304123423632234§:§521423132492313262123423632234§;
      
      private var §import switch extends§:Number;
      
      private var §super use override§:Number;
      
      private var §5214232170232183123423632234§:Number;
      
      private var §switch package static§:Number;
      
      private var §5214231683231696123423632234§:Number;
      
      private var §case for import§:Number;
      
      private var §in const if§:Number;
      
      public function §switch var finally§(param1:Number, param2:Number)
      {
         super();
         this.§5214236697236710123423632234§ = new Point();
         this.§import switch extends§ = param1;
         this.§super use override§ = param2;
         this.§5214232073232086123423632234§ = §5214235917235930123423632234§.stage;
      }
      
      private function §5214239221239234123423632234§(param1:Number, param2:Number) : Number
      {
         return Math.atan2(Math.sin(param1 - param2),Math.cos(param1 - param2));
      }
      
      public function §5214234355234368123423632234§() : void
      {
         this.§5214232073232086123423632234§.removeEventListener("mouseMove",this.§5214239636239649123423632234§);
         this.§5214231598231611123423632234§();
      }
      
      private function §switch set native§() : void
      {
         this.§5214236697236710123423632234§.x = this.§5214232073232086123423632234§.mouseX;
         this.§5214236697236710123423632234§.y = this.§5214232073232086123423632234§.mouseY;
         this.§null const var§ = true;
      }
      
      public function §5214231598231611123423632234§(param1:Event = null) : void
      {
         this.§null const var§ = false;
      }
      
      public function §521423120402312053123423632234§(param1:int, param2:int) : void
      {
         var _loc12_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc13_:§5214239411239424123423632234§ = null;
         var _loc14_:Object3D = null;
         var _loc11_:Mesh = null;
         if(this.§null const var§)
         {
            _loc13_ = §5214236557236570123423632234§.§521423104062310419123423632234§.§521423122212312234123423632234§;
            if(this.§5214232170232183123423632234§ != 0 || this.§switch package static§ != 0)
            {
               this.§5214236697236710123423632234§.x = this.§5214232073232086123423632234§.mouseX;
               this.§5214236697236710123423632234§.y = this.§5214232073232086123423632234§.mouseY;
               _loc12_ = this.§5214235407235420123423632234§();
               _loc9_ = -this.§switch package static§ * _loc12_ / this.§5214232073232086123423632234§.stageHeight;
               this.§5214231683231696123423632234§ = §throw for continue§.§52142393423947123423632234§(§throw for continue§.§package use extends§(this.§5214231683231696123423632234§ + _loc9_),this.§super use override§,this.§import switch extends§);
               _loc10_ = this.§5214236018236031123423632234§();
               _loc8_ = _loc13_.§521423137502313763123423632234§();
               _loc4_ = this.§case for import§ - this.§5214232170232183123423632234§ * _loc10_ / this.§5214232073232086123423632234§.stageWidth;
               _loc3_ = _loc4_ + this.§in const if§;
               _loc7_ = this.§5214239221239234123423632234§(_loc3_,_loc8_);
               _loc7_ = §throw for continue§.§52142393423947123423632234§(_loc7_,-0.2617993877991494,0.2617993877991494);
               _loc6_ = _loc8_ + _loc7_;
               _loc5_ = _loc6_ - this.§in const if§;
               this.§case for import§ = _loc5_;
               this.§5214232170232183123423632234§ = 0;
               this.§switch package static§ = 0;
            }
            §521423107202310733123423632234§.copy(_loc13_.§super for dynamic§());
            §521423107202310733123423632234§.y = 0;
            §5214236152236165123423632234§.setPosition(§521423107202310733123423632234§);
            _loc14_ = _loc13_.§static set catch§();
            §5214236106236119123423632234§.setMatrix(_loc14_.x,_loc14_.y,_loc14_.z,_loc14_.rotationX,_loc14_.rotationY,_loc14_.rotationZ);
            §5214236152236165123423632234§.append(§5214236106236119123423632234§);
            this.§5214239291239304123423632234§.x = §5214236152236165123423632234§.§catch package continue§;
            this.§5214239291239304123423632234§.y = §5214236152236165123423632234§.§include var break§;
            this.§5214239291239304123423632234§.z = §5214236152236165123423632234§.§function var import§;
            _loc11_ = _loc13_.§include switch break§().§with switch catch§();
            §5214236152236165123423632234§.setMatrix(0,0,0,-1.5707963267948966 + this.§5214231683231696123423632234§,0,this.§case for import§ + this.§in const if§);
            §5214236106236119123423632234§.setMatrix(0,0,0,_loc11_.rotationX,_loc11_.rotationY,_loc11_.rotationZ);
            §5214236152236165123423632234§.append(§5214236106236119123423632234§);
            §5214236152236165123423632234§.getEulerAngles(§5214235089235102123423632234§);
            this.§5214239291239304123423632234§.rotationX = §throw for continue§.§package use extends§(§5214235089235102123423632234§.x);
            this.§5214239291239304123423632234§.rotationY = §throw for continue§.§package use extends§(§5214235089235102123423632234§.y);
            this.§5214239291239304123423632234§.rotationZ = §throw for continue§.§package use extends§(§5214235089235102123423632234§.z);
         }
      }
      
      public function §extends for include§() : void
      {
         this.§5214239291239304123423632234§ = §52142380523818123423632234§.getBattleScene3D().§while set for§();
         this.§5214232170232183123423632234§ = 0;
         this.§switch package static§ = 0;
         this.§5214232073232086123423632234§.addEventListener("mouseMove",this.§5214239636239649123423632234§);
         this.§switch set native§();
         this.§in const if§ = §5214236557236570123423632234§.§521423104062310419123423632234§.§521423122212312234123423632234§.§521423137502313763123423632234§();
         this.§5214231683231696123423632234§ = 0;
         this.§case for import§ = 0;
      }
      
      public function close() : void
      {
      }
      
      private function §case package null§() : Number
      {
         return Math.sqrt(this.§5214232073232086123423632234§.stageWidth * this.§5214232073232086123423632234§.stageWidth + this.§5214232073232086123423632234§.stageHeight * this.§5214232073232086123423632234§.stageHeight) / (2 * Math.tan(this.§5214239291239304123423632234§.fov * 0.5));
      }
      
      private function §521423126082312621123423632234§() : int
      {
         return §5214232551232564123423632234§.mouseYInverseShaftAim ? -1 : 1;
      }
      
      private function §5214239636239649123423632234§(param1:MouseEvent) : void
      {
         this.§5214232170232183123423632234§ += param1.movementX;
         this.§switch package static§ += param1.movementY * this.§521423126082312621123423632234§();
      }
      
      private function §5214235407235420123423632234§() : Number
      {
         return 2 * Math.atan(this.§5214232073232086123423632234§.stageHeight / (2 * this.§case package null§()));
      }
      
      private function §5214236018236031123423632234§() : Number
      {
         return 2 * Math.atan(this.§5214232073232086123423632234§.stageWidth / (2 * this.§case package null§()));
      }
   }
}

