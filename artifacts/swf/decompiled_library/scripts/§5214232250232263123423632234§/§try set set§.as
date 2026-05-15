package §5214232250232263123423632234§
{
   import §521423114382311451123423632234§.§5214231332231345123423632234§;
   import §521423129512312964123423632234§.§include catch each§;
   import §521423130002313013123423632234§.ResourceLoadingWrapper;
   import §521423130002313013123423632234§.§implements package try§;
   import §5214231817231830123423632234§.§5214233863233876123423632234§;
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214233785233798123423632234§.§native set dynamic§;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Light3D;
   import alternativa.engine3d.core.Object3DContainer;
   import alternativa.engine3d.core.RayIntersectionData;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.View;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.BSP;
   import alternativa.engine3d.objects.Decal;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.settings.ISettingsService;
   import §default package each§.§set const static§;
   import §else switch default§.§5214231079231092123423632234§;
   import §else switch default§.§5214231756231769123423632234§;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.Timer;
   import flash.utils.setTimeout;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.disposeBitmapsData;
   import scpacker.networking.Network;
   
   public class §try set set§ extends §native for dynamic§ implements §implements package try§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §5214232551232564123423632234§:ISettingsService;
      
      private static const §521423104952310508123423632234§:Number = -1;
      
      private static const §dynamic for while§:Number = -150;
      
      private static const §function continue§:int = 11;
      
      private static const §5214233120233133123423632234§:Number = -135;
      
      private static const §if catch default§:Number = -730;
      
      private static const §override use continue§:Number = 0.7;
      
      private static const §with switch override§:Number = 13;
      
      private static const §null set static§:Number = 2.5;
      
      private static const §get for continue§:Vector3D = new Vector3D(0,0,-1);
      
      private static const §521423137482313761123423632234§:RegExp = /light_([A-Za-z]*)_[0-9]/;
      
      private var §while use else§:§include return§;
      
      private var §52142349923512123423632234§:Shape;
      
      private var §5214239268239281123423632234§:Object3DContainer;
      
      private var §5214235491235504123423632234§:Object3DContainer;
      
      private var §5214239109239122123423632234§:Object3DContainer;
      
      private var §5214239291239304123423632234§:Camera3D;
      
      private var §import const throw§:§5214233138233151123423632234§;
      
      private var §521423122212312234123423632234§:§set const static§;
      
      private var §import switch native§:int = 0;
      
      private var §var var true§:Timer;
      
      private var §with for dynamic§:Mesh;
      
      private var §5214238664238677123423632234§:§5214233863233876123423632234§;
      
      private var §true package in§:§5214233863233876123423632234§;
      
      private var §else switch native§:int = 0;
      
      private var §try switch dynamic§:Array;
      
      public function §try set set§(param1:§5214233863233876123423632234§)
      {
         super(400,300);
         this.§try switch dynamic§ = [];
         this.§5214231918231931123423632234§();
         this.§5214234201234214123423632234§();
         this.§extends const break§();
         this.§521423131972313210123423632234§();
         var _loc2_:§5214233863233876123423632234§ = param1;
         if(_loc2_.§5214239618239631123423632234§.§521423137152313728123423632234§ && (_loc3_.§else for include§ & 1) == 0)
         {
            param1.§5214234169234182123423632234§(new ResourceLoadingWrapper(this));
         }
         else
         {
            this.§in catch each§(param1);
         }
         this.resize(400,300);
         addEventListener("addedToStage",this.§switch override§);
         §5214232551232564123423632234§.addEventListener("SettingsServiceEvent.SETTINGS_CHANGED",this.§throw set set§);
      }
      
      public function §5214233168233181123423632234§(param1:§5214233863233876123423632234§) : void
      {
         this.§true package in§ = param1;
         this.§521423122212312234123423632234§.§5214233168233181123423632234§(this.§true package in§);
         this.§5214239623109123423632234§();
      }
      
      private function §5214235039235052123423632234§(param1:MouseEvent) : void
      {
         var _loc5_:Network = null;
         if(§else switch native§ >= 3)
         {
            return;
         }
         var _loc2_:Vector3D = new Vector3D();
         var _loc3_:Vector3D = new Vector3D();
         §5214239291239304123423632234§.calculateRay(_loc2_,_loc3_,§5214239291239304123423632234§.view.mouseX * Display.§521423132512313264123423632234§,§5214239291239304123423632234§.view.mouseY * Display.§521423132512313264123423632234§);
         var _loc4_:RayIntersectionData = this.§5214235491235504123423632234§.intersectRay(_loc2_,_loc3_,null,this.§5214239291239304123423632234§);
         if(_loc4_ != null && _loc4_.object.name == "main_gifts")
         {
            §else switch native§ = §else switch native§ + 1;
            _loc5_ = Network(OSGi.getInstance().getService(Network));
            _loc5_.send(new §5214231332231345123423632234§(_loc4_.object.name));
         }
      }
      
      private function §function for continue§(param1:Number, param2:Number) : void
      {
         this.§while use else§.width = param1 - 11 * 2;
         this.§while use else§.height = param2 - 11 * 2;
         this.§while use else§.x = 11;
         this.§while use else§.y = 11;
      }
      
      public function resize(param1:Number, param2:Number) : void
      {
         this.width = param1;
         this.height = param2;
         this.§function for continue§(param1,param2);
         this.§class use false§(param1,param2);
         this.§5214234627234640123423632234§();
         var _loc3_:GPUCapabilities = GPUCapabilities;
         if(!projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§)
         {
            this.§5214239291239304123423632234§.render();
         }
      }
      
      public function §5214231344231357123423632234§(param1:BitmapData) : void
      {
         this.§521423122212312234123423632234§.§5214231344231357123423632234§(param1);
         this.§5214239623109123423632234§();
      }
      
      public function destroy() : void
      {
         §5214232551232564123423632234§.removeEventListener("SettingsServiceEvent.SETTINGS_CHANGED",this.§throw set set§);
         if(this.§5214239291239304123423632234§.deferredLighting)
         {
            removeEventListener("click",this.§5214235039235052123423632234§);
         }
         removeEventListener("enterFrame",this.§5214232334232347123423632234§);
         if(this.§var var true§ != null)
         {
            this.§var var true§.stop();
            this.§var var true§.removeEventListener("timerComplete",this.§521423140792314092123423632234§);
            this.§var var true§ = null;
         }
         this.§while use else§ = null;
         this.§5214239268239281123423632234§ = null;
         this.§5214239109239122123423632234§ = null;
         this.§5214239291239304123423632234§.view.clear();
         this.§5214239291239304123423632234§ = null;
         this.§521423122212312234123423632234§.destroy();
         this.§521423122212312234123423632234§ = null;
         this.§with for dynamic§ = null;
         this.§5214238664238677123423632234§ = null;
         this.§true package in§ = null;
         disposeBitmapsData(this.§try switch dynamic§);
         this.§try switch dynamic§ = null;
      }
      
      private function §5214231918231931123423632234§() : void
      {
         §extends package var§ = §5214236363236376123423632234§.getText("GUI_LANG");
         §extends catch default§ = §native set dynamic§.§import use class§;
      }
      
      private function §5214232334232347123423632234§(param1:Event) : void
      {
         this.§import const throw§.§set catch else§();
         try
         {
            this.§5214239291239304123423632234§.render();
         }
         catch(err:Error)
         {
         }
      }
      
      private function §5214239623109123423632234§() : void
      {
         if(this.§import switch native§ < 3)
         {
            ++this.§import switch native§;
         }
         if(this.§import switch native§ == 3)
         {
            if(this.§with for dynamic§ != null && Boolean(this.§521423122212312234123423632234§.contains(this.§with for dynamic§)))
            {
               this.§521423122212312234123423632234§.removeChild(this.§with for dynamic§);
            }
            this.§with for dynamic§ = this.§5214232927232940123423632234§(Mesh(this.§5214238664238677123423632234§.§5214237990238003123423632234§[0]),§get for continue§,2.5,13,0.7);
            this.§521423122212312234123423632234§.addChildAt(this.§with for dynamic§,0);
            var _loc1_:GPUCapabilities = GPUCapabilities;
            if(!projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§)
            {
               this.§5214239291239304123423632234§.render();
            }
         }
      }
      
      private function §in catch each§(param1:§5214233863233876123423632234§) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Mesh = null;
         var _loc5_:Array = null;
         var _loc3_:Light3D = null;
         var _loc2_:TextureMaterial = null;
         var _loc8_:BSP = null;
         var _loc4_:int = int(param1.§5214237990238003123423632234§.length);
         while(_loc6_ < _loc4_)
         {
            _loc7_ = param1.§5214237990238003123423632234§[_loc6_] as Mesh;
            if(_loc7_ != null)
            {
               _loc5_ = §521423137482313761123423632234§.exec(_loc7_.name);
               if(_loc5_ != null)
               {
                  switch(_loc5_[1])
                  {
                     case "A":
                        _loc3_ = new OmniLight(16763904,100,600);
                        _loc3_.intensity = 0.6;
                        break;
                     case "B":
                        _loc3_ = new OmniLight(16750848,100,1100);
                        _loc3_.intensity = 0.55;
                        break;
                     case "C":
                        _loc3_ = new OmniLight(14811135,100,1100);
                        _loc3_.intensity = 0.5;
                        break;
                     case "Rd":
                        _loc3_ = new OmniLight(16727074,200,500);
                        _loc3_.intensity = 0.8;
                        break;
                     case "Gr":
                        _loc3_ = new OmniLight(6356736,200,500);
                        _loc3_.intensity = 0.8;
                        break;
                     case "Bl":
                        _loc3_ = new OmniLight(34047,200,500);
                        _loc3_.intensity = 0.8;
                        break;
                     case "Yl":
                     case "Ye":
                        _loc3_ = new OmniLight(16771584,200,500);
                        _loc3_.intensity = 0.8;
                        break;
                     default:
                        _loc3_ = new OmniLight(0,0,0);
                  }
                  _loc3_.x = _loc7_.x;
                  _loc3_.y = _loc7_.y;
                  _loc3_.z = _loc7_.z;
                  _loc3_.calculateBounds();
                  this.§5214235491235504123423632234§.addChild(_loc3_);
               }
               else
               {
                  _loc2_ = TextureMaterial(_loc7_.faceList.material);
                  _loc2_.texture = param1.§finally for break§(_loc6_);
                  _loc7_.setMaterialToAllFaces(_loc2_);
                  _loc8_ = new BSP();
                  _loc8_.createTree(_loc7_);
                  _loc8_.name = _loc7_.name;
                  _loc8_.matrix = _loc7_.matrix;
                  this.§5214235491235504123423632234§.addChild(_loc8_);
                  switch(_loc7_.name)
                  {
                     case "skybox":
                        _loc8_.useLight = false;
                        this.§use each§();
                        break;
                     case "girland":
                     case "ball":
                        _loc8_.alpha = 0.99;
                        _loc8_.useLight = false;
                     case "pine":
                        this.§5214235491235504123423632234§.removeChild(_loc8_);
                        break;
                     case "trees":
                        _loc8_.alpha = 0.99;
                        break;
                     case "lob":
                        _loc8_.useLight = false;
                        _loc8_.depthMapAlphaThreshold = 2;
                  }
                  setTimeout(this.§5214235491235504123423632234§.addChild,0,_loc8_);
               }
            }
            _loc6_++;
         }
      }
      
      public function §throw set set§(param1:Event) : void
      {
         this.§5214239291239304123423632234§.alternatePaintBlend = §5214232551232564123423632234§.alternatePaintBlend;
      }
      
      public function onLoadingComplete(param1:§include catch each§) : void
      {
         this.§in catch each§(param1 as §5214233863233876123423632234§);
      }
      
      private function §class use false§(param1:Number, param2:Number) : void
      {
         this.§5214239291239304123423632234§.view.width = (param1 - 11 * 2 - 3) * Display.§521423132512313264123423632234§;
         this.§5214239291239304123423632234§.view.height = (param2 - 11 * 2 - 3) * Display.§521423132512313264123423632234§;
         var _loc3_:GPUCapabilities = GPUCapabilities;
         if(!projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ && Display.§521423132512313264123423632234§ == 2)
         {
            this.§5214239291239304123423632234§.view.width /= 2;
            this.§5214239291239304123423632234§.view.height /= 2;
         }
         this.§5214239291239304123423632234§.view.x = 11 + 2;
         this.§5214239291239304123423632234§.view.y = 11 + 2;
      }
      
      private function §521423126002312613123423632234§() : void
      {
         this.§5214239291239304123423632234§.farClipping = 25000;
         this.§5214239291239304123423632234§.nearClipping = 50;
         this.§5214239291239304123423632234§.deferredLighting = true;
         this.§5214239291239304123423632234§.z = -1100;
         this.§5214239109239122123423632234§.rotationX = -2.0943951023931953;
         var _loc2_:§5214231079231092123423632234§ = new §5214231079231092123423632234§(this.§5214239291239304123423632234§);
         _loc2_.§5214236262236275123423632234§(71470,0.5,5000,10000);
         _loc2_.enable();
         var _loc1_:§5214231756231769123423632234§ = new §5214231756231769123423632234§(this.§5214239291239304123423632234§);
         _loc1_.§5214236262236275123423632234§(4216936,1382169,-1,-0.4);
         _loc1_.§each switch break§();
         this.§521423122212312234123423632234§.z += 10;
      }
      
      private function §521423140792314092123423632234§(param1:TimerEvent) : void
      {
         if(this.§5214235491235504123423632234§.numChildren == 0)
         {
            this.§var var true§.start();
            return;
         }
         addChild(this.§52142349923512123423632234§);
         this.§var var true§.removeEventListener("timerComplete",this.§521423140792314092123423632234§);
         this.§var var true§ = null;
      }
      
      public function §52142330723320123423632234§(param1:§5214233863233876123423632234§) : void
      {
         this.§5214238664238677123423632234§ = param1;
         this.§521423122212312234123423632234§.§52142330723320123423632234§(this.§5214238664238677123423632234§);
         this.§5214239623109123423632234§();
      }
      
      private function §521423131972313210123423632234§() : void
      {
         this.§521423122212312234123423632234§ = new §set const static§();
         this.§5214239268239281123423632234§.addChild(this.§521423122212312234123423632234§);
         this.§521423122212312234123423632234§.matrix.appendTranslation(-17,0,0);
      }
      
      private function §5214234627234640123423632234§() : void
      {
         var _loc1_:GPUCapabilities = GPUCapabilities;
         if(projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§)
         {
            this.§52142349923512123423632234§.x = this.§5214239291239304123423632234§.view.x;
            this.§52142349923512123423632234§.y = this.§5214239291239304123423632234§.view.y;
            this.§52142349923512123423632234§.graphics.clear();
            this.§52142349923512123423632234§.graphics.beginFill(16711680);
            this.§52142349923512123423632234§.graphics.drawRect(0,0,this.§5214239291239304123423632234§.view.width / Display.§521423132512313264123423632234§,this.§5214239291239304123423632234§.view.height / Display.§521423132512313264123423632234§);
            this.§52142349923512123423632234§.graphics.endFill();
         }
      }
      
      private function §5214231268231281123423632234§() : void
      {
         this.§import const throw§ = new §5214233138233151123423632234§();
         var _loc4_:§var return§ = new §var return§();
         var _loc5_:§5214235915235928123423632234§ = new §5214235915235928123423632234§(this.§import const throw§,stage,_loc4_,this.§5214239291239304123423632234§,this.§5214239109239122123423632234§);
         var _loc3_:§5214235995236008123423632234§ = new §5214235995236008123423632234§(this.§import const throw§,this.§while use else§,_loc4_,this.§5214239109239122123423632234§);
         var _loc1_:§5214239153239166123423632234§ = new §5214239153239166123423632234§(this.§import const throw§,this.§while use else§);
         var _loc2_:§5214237149237162123423632234§ = new §5214237149237162123423632234§(this.§import const throw§,this.§while use else§,this.§5214239109239122123423632234§);
         this.§import const throw§.§do const do§(§catch package get§.§catch const class§,_loc3_,_loc5_);
         this.§import const throw§.§do const do§(§catch package get§.§catch const class§,_loc1_,_loc5_);
         this.§import const throw§.§do const do§(§catch package get§.§catch const class§,_loc2_,_loc5_);
         this.§import const throw§.§do const do§(§catch package get§.§set package§,_loc5_,_loc3_);
         this.§import const throw§.§do const do§(§catch package get§.§5214233328233341123423632234§,_loc3_,_loc1_);
         this.§import const throw§.§do const do§(§catch package get§.§521423134442313457123423632234§,_loc1_,_loc2_);
         this.§import const throw§.§final catch super§(_loc1_);
      }
      
      private function §extends const break§() : void
      {
         this.§while use else§ = new §include return§(0,0,16744512 - 1);
         addChild(this.§while use else§);
         this.§while use else§.mouseEnabled = true;
      }
      
      private function §switch override§(param1:Event) : void
      {
         removeEventListener("addedToStage",this.§switch override§);
         addEventListener("enterFrame",this.§5214232334232347123423632234§,false,-1);
         this.§5214231268231281123423632234§();
         var _loc2_:GPUCapabilities = GPUCapabilities;
         if(projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§)
         {
            this.§var var true§ = new Timer(350,1);
            this.§var var true§.addEventListener("timerComplete",this.§521423140792314092123423632234§);
            this.§var var true§.start();
         }
      }
      
      private function §5214234201234214123423632234§() : void
      {
         this.§5214239268239281123423632234§ = new Object3DContainer();
         this.§5214239291239304123423632234§ = new Camera3D();
         var _temp_4:* = this.§5214239291239304123423632234§;
         var _temp_3:* = §§findproperty(View);
         var _temp_2:* = 100;
         var _temp_1:* = 100;
         var _loc1_:GPUCapabilities = GPUCapabilities;
         _temp_4.view = new View(_temp_2,_temp_1,projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§);
         this.§5214239291239304123423632234§.view.hideLogo();
         addChild(this.§5214239291239304123423632234§.view);
         this.§5214239109239122123423632234§ = new Object3DContainer();
         this.§5214239268239281123423632234§.addChild(this.§5214239109239122123423632234§);
         this.§5214235491235504123423632234§ = new Object3DContainer();
         this.§5214239268239281123423632234§.addChild(this.§5214235491235504123423632234§);
         this.§5214239109239122123423632234§.addChild(this.§5214239291239304123423632234§);
         this.§5214239109239122123423632234§.rotationX = -2.356194490192345;
         this.§5214239291239304123423632234§.z = -730;
         this.§5214239109239122123423632234§.rotationZ = -2.6179938779914944;
         var _loc2_:GPUCapabilities = GPUCapabilities;
         if(projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§)
         {
            this.§52142349923512123423632234§ = new Shape();
            this.§52142349923512123423632234§.blendMode = "erase";
         }
         §5214239291239304123423632234§.alternatePaintBlend = §5214232551232564123423632234§.alternatePaintBlend;
      }
      
      private function §use each§() : void
      {
         this.§5214239291239304123423632234§.farClipping = 50000;
         this.§5214239291239304123423632234§.nearClipping = 50;
         this.§5214239291239304123423632234§.deferredLighting = true;
         this.§5214239291239304123423632234§.z = -1000;
         this.§5214239109239122123423632234§.rotationX = -2.0943951023931953;
         this.§521423122212312234123423632234§.z += 8;
         addEventListener("click",this.§5214235039235052123423632234§);
      }
      
      private function §5214232927232940123423632234§(param1:Mesh, param2:Vector3D, param3:Number, param4:int, param5:Number, param6:uint = 0) : Mesh
      {
         var _loc21_:Face = null;
         var _loc14_:Wrapper = null;
         var _loc9_:Vertex = null;
         var _loc25_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc15_:Decal = null;
         param2 = param2.clone();
         param2.normalize();
         var _loc24_:Number = 1e+22;
         var _loc22_:Number = 1e+22;
         var _loc13_:Number = -1e+22;
         var _loc12_:Number = -1e+22;
         var _loc19_:Shape = new Shape();
         _loc21_ = param1.faceList;
         while(_loc21_ != null)
         {
            _loc14_ = _loc21_.wrapper;
            while(_loc14_ != null)
            {
               _loc9_ = _loc14_.vertex;
               _loc25_ = -_loc9_.z / param2.z;
               _loc7_ = _loc9_.x + param2.x * _loc25_;
               _loc8_ = _loc9_.y + param2.y * _loc25_;
               if(_loc7_ < _loc24_)
               {
                  _loc24_ = _loc7_;
               }
               if(_loc7_ > _loc13_)
               {
                  _loc13_ = _loc7_;
               }
               if(_loc8_ < _loc22_)
               {
                  _loc22_ = _loc8_;
               }
               if(_loc8_ > _loc12_)
               {
                  _loc12_ = _loc8_;
               }
               if(_loc14_ == _loc21_.wrapper)
               {
                  _loc19_.graphics.beginFill(param6);
                  _loc19_.graphics.moveTo(_loc7_,_loc8_);
               }
               else
               {
                  _loc19_.graphics.lineTo(_loc7_,_loc8_);
               }
               _loc14_ = _loc14_.next;
            }
            _loc21_ = _loc21_.next;
         }
         _loc24_ = (Math.floor(_loc24_ / param3) - param4) * param3;
         _loc22_ = (Math.floor(_loc22_ / param3) - param4) * param3;
         _loc13_ = (Math.ceil(_loc13_ / param3) + param4) * param3;
         _loc12_ = (Math.ceil(_loc12_ / param3) + param4) * param3;
         var _loc10_:BitmapData = new BitmapData((_loc13_ - _loc24_) / param3,(_loc12_ - _loc22_) / param3,true,0);
         this.§try switch dynamic§[§try switch dynamic§.length] = _loc10_;
         _loc10_.draw(_loc19_,new Matrix(1 / param3,0,0,-1 / param3,-_loc24_ / param3,_loc12_ / param3));
         _loc10_.applyFilter(_loc10_,_loc10_.rect,new Point(),new BlurFilter(param4,param4,2));
         var _loc23_:TextureMaterial = new TextureMaterial(_loc10_,false,true,0,param3);
         var _loc11_:Mesh = new Mesh();
         var _loc16_:Vertex = _loc11_.addVertex(_loc24_,_loc12_,0,0,0);
         var _loc17_:Vertex = _loc11_.addVertex(_loc24_,_loc22_,0,0,1);
         var _loc18_:Vertex = _loc11_.addVertex(_loc13_,_loc22_,0,1,1);
         var _loc20_:Vertex = _loc11_.addVertex(_loc13_,_loc12_,0,1,0);
         _loc11_.addQuadFace(_loc16_,_loc17_,_loc18_,_loc20_,_loc23_);
         _loc11_.calculateFacesNormals();
         _loc11_.calculateBounds();
         _loc11_.alpha = param5;
         var _loc26_:GPUCapabilities = GPUCapabilities;
         if(projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§)
         {
            _loc15_ = new Decal();
            _loc15_.createGeometry(_loc11_,true);
            _loc15_.x = _loc11_.x;
            _loc15_.y = _loc11_.y;
            _loc15_.z = _loc11_.z;
            _loc15_.alpha = _loc11_.alpha;
            return _loc15_;
         }
         return _loc11_;
      }
   }
}

