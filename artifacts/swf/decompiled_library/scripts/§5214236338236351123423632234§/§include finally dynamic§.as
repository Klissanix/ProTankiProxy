package §5214236338236351123423632234§
{
   import §5214238735238748123423632234§.ErrorNotification;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.engine3d.IndexedTextureConstructor;
   import alternativa.tanks.engine3d.UVFrame;
   import alternativa.utils.TextureMaterialRegistry;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §import var finally§.§super for else§;
   import §in switch implements§.TextureByteData;
   import §in switch implements§.TextureConstructor;
   import §in switch implements§.§set catch static§;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   import projects.tanks.clients.flash.commons.services.notification.INotificationService;
   
   public class §include finally dynamic§ extends EventDispatcher implements §set catch static§
   {
      
      private var §5214235868235881123423632234§:TextureMaterialRegistry;
      
      private var §get catch native§:int;
      
      private var §5214238092238105123423632234§:int;
      
      private var §52142350723520123423632234§:int;
      
      private var §5214237954237967123423632234§:Vector.<§521423112022311215123423632234§>;
      
      private var §override catch native§:Vector.<IndexedTextureConstructor>;
      
      private var §5214238117238130123423632234§:Boolean;
      
      private var §native for implements§:Vector.<§521423122682312281123423632234§> = new Vector.<§521423122682312281123423632234§>();
      
      private var §5214238136238149123423632234§:Vector.<BitmapData> = new Vector.<BitmapData>();
      
      private var §521423129332312946123423632234§:BitmapData;
      
      public function §include finally dynamic§(param1:TextureMaterialRegistry, param2:int)
      {
         super();
         this.§5214235868235881123423632234§ = param1;
         this.§get catch native§ = param2;
      }
      
      public static function §for§(param1:BitmapData, param2:int = 1) : BitmapData
      {
         var _loc10_:int = 0;
         var _loc9_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:int = 0;
         var _loc6_:int = param1.width + param2 * 2;
         var _loc8_:int = param1.height + param2 * 2;
         var _loc7_:BitmapData = new BitmapData(_loc6_,_loc8_,false,0);
         _loc7_.copyPixels(param1,param1.rect,new Point(param2,param2));
         var _loc11_:int = param1.width;
         var _loc4_:int = param1.height;
         _loc10_ = 0;
         while(_loc10_ < _loc7_.height)
         {
            _loc9_ = 0;
            while(_loc9_ < _loc7_.width)
            {
               if(!(_loc9_ >= param2 && _loc9_ < param2 + _loc11_ && _loc10_ >= param2 && _loc10_ < param2 + _loc4_))
               {
                  _loc5_ = Math.max(0,Math.min(_loc11_ - 1,_loc9_ - param2));
                  _loc3_ = Math.max(0,Math.min(_loc4_ - 1,_loc10_ - param2));
                  _loc7_.setPixel32(_loc9_,_loc10_,param1.getPixel32(_loc5_,_loc3_));
               }
               _loc9_++;
            }
            _loc10_++;
         }
         param1.dispose();
         return _loc7_;
      }
      
      public function §class for implements§() : Vector.<BitmapData>
      {
         return this.§5214238136238149123423632234§;
      }
      
      private function §5214231293231306123423632234§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §get catch native§)
         {
            this.§5214235286235299123423632234§(§override catch native§[_loc1_]);
            _loc1_++;
         }
      }
      
      private function §5214233690233703123423632234§() : void
      {
         this.§5214237954237967123423632234§ = null;
         this.§override catch native§ = null;
         this.§native for implements§ = null;
         dispatchEvent(new Event("complete"));
      }
      
      public function onTextureReady(param1:TextureConstructor) : void
      {
         var _loc2_:IndexedTextureConstructor = IndexedTextureConstructor(param1);
         if(this.§5214238117238130123423632234§)
         {
            _loc2_.disposeTexture();
         }
         else
         {
            this.§5214238136238149123423632234§[§5214238136238149123423632234§.length] = _loc2_.texture;
            this.§null include§(_loc2_);
            ++this.§5214238092238105123423632234§;
            if(this.§5214238092238105123423632234§ == this.§5214237954237967123423632234§.length)
            {
               §5214239737239750123423632234§(§native for implements§);
               this.§5214233690233703123423632234§();
            }
            else
            {
               this.§5214235286235299123423632234§(_loc2_);
            }
         }
      }
      
      private function §null include§(param1:IndexedTextureConstructor) : void
      {
         var _loc6_:String = null;
         var _loc2_:TextureMaterial = null;
         var _loc5_:§521423112022311215123423632234§ = this.§5214237954237967123423632234§[param1.index];
         var _loc3_:BitmapData = param1.texture;
         var _loc4_:§5214239311239324123423632234§ = _loc5_ as §5214239311239324123423632234§;
         var _loc7_:GPUCapabilities = GPUCapabilities;
         if(projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ && !projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§ && _loc4_ != null && !_loc3_.transparent && _loc3_.width == _loc3_.height && (_loc3_.width == 128 || _loc3_.width == 256 || _loc3_.width == 512 || _loc3_.width == 1024 || _loc4_.§521423112572311270123423632234§().indexOf("#nubu_1.") != -1) && §import use extends§(_loc4_.§521423112572311270123423632234§()))
         {
            if(_loc3_.width <= 128)
            {
               §native for implements§[§native for implements§.length] = new §521423122682312281123423632234§(_loc4_,§for§(_loc3_,64),64);
            }
            else
            {
               §native for implements§[§native for implements§.length] = new §521423122682312281123423632234§(_loc4_,_loc3_,0);
            }
         }
         else
         {
            var _loc9_:GPUCapabilities = GPUCapabilities;
            if(projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ && !projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§ && _loc4_ && !_loc3_.transparent)
            {
               _loc6_ = _loc4_.§521423112572311270123423632234§();
               if(_loc6_.indexOf("#nubu_14.jpg") != -1)
               {
                  §521423129332312946123423632234§ = _loc3_;
               }
               else if(_loc3_.width < 2048)
               {
                  §native for implements§[§native for implements§.length] = new §521423122682312281123423632234§(_loc4_,§for§(_loc3_,64),64);
                  return;
               }
            }
            _loc2_ = this.§5214235868235881123423632234§.getMaterial(_loc3_);
            _loc2_.resolution = 4.2;
            _loc5_.§try for throw§(_loc2_,null);
         }
      }
      
      public function §switch use const§(param1:Vector.<§521423112022311215123423632234§>) : void
      {
         this.§5214237954237967123423632234§ = param1.concat();
         this.§5214238092238105123423632234§ = 0;
         this.§52142350723520123423632234§ = 0;
         this.§5214238702238715123423632234§();
         this.§5214231293231306123423632234§();
      }
      
      private function §5214239737239750123423632234§(param1:Vector.<§521423122682312281123423632234§>) : void
      {
         var _loc15_:TextureMaterial = null;
         var _loc2_:§5214236629236642123423632234§ = null;
         var _loc9_:int = 0;
         var _loc4_:BitmapData = null;
         var _loc11_:int = 0;
         var _loc12_:Rectangle = null;
         var _loc7_:int = 0;
         var _loc13_:PropHook = null;
         var _loc10_:int = 0;
         var _loc17_:§521423122682312281123423632234§ = null;
         var _loc8_:BitmapData = null;
         var _loc5_:Vector.<PropHook> = new <PropHook>[new PropHook("#broktank",256,0),new PropHook("#hang_1",768,0),new PropHook("#hang_2",768,0),new PropHook("#hang_3",768,0),new PropHook("#hang_1",768,768),new PropHook("#hang_2",768,768),new PropHook("#hang_3",768,768),new PropHook("#nubu_1.",0,0),new PropHook("#nubu_1.",0,256),new PropHook("#nubu_1.",0,512),new PropHook("#nubu_1.",0,768),new PropHook("#nubu_1.",0,1024),new PropHook("#nubu_1.",0,1280),new PropHook("#nubu_1.",0,1536),new PropHook("#nubu_1.",0,1792),new PropHook("#nubu_1.",256,1792),new PropHook("#nubu_1.",512,1792),new PropHook("#nubu_1.",768,1792),new PropHook("#nubu_1.",1024,1792),new PropHook("#nubu_1.",1280,1792),new PropHook("#nubu_1.",1536,1792),new PropHook("#nubu_1.",1792,1792),new PropHook("#nubu_1.",1792,0),new PropHook("#nubu_1.",1536,0),new PropHook("#nubu_1.",1536,256),new PropHook("#nubu_1.",1792,256),new PropHook("#nubu_1.",1792,512),new PropHook("#nubu_1.",1792,768),new PropHook("#nubu_1.",1280,1280),new PropHook("#nubu_1."
         ,1280,1536),new PropHook("#nubu_1.",1536,1536),new PropHook("#nubu_1.",1792,1536),new PropHook("#nubu_1.",1024,1200),new PropHook("#nubu_1.",768,1200),new PropHook("#nubu_1.",512,1200),new PropHook("#nubu_1.",256,1200),new PropHook("#nubu_3",0,512),new PropHook("#nubu_3",0,768),new PropHook("#nubu_4",0,512),new PropHook("#nubu_4",256,512),new PropHook("#nubu_4",512,512),new PropHook("#nubu_4",768,512),new PropHook("#nubu_4",0,768),new PropHook("#nubu_4",256,768),new PropHook("#nubu_4",512,768),new PropHook("#nubu_4",768,768),new PropHook("#nubu_8",768,512),new PropHook("#nubu_8",768,768),new PropHook("#nubu_10",768,0),new PropHook("#nubu_10",390,390),new PropHook("#nubu_12",0,768),new PropHook("#nubu_12",256,768),new PropHook("#nubu_12",512,768),new PropHook("#smhouse2",0,0),new PropHook("#smhouse2",768,768),new PropHook("#smhouse4",0,200),new PropHook("#sm_br_1.",768,768),new PropHook("#sm_br_1_",768,0),new PropHook("#sm_br_1_",0,0),new PropHook("#sm_br_1_",0,256),new PropHook("#sm_br_1_"
         ,0,512),new PropHook("#sm_br_1_",0,768),new PropHook("#sm_br_1_",256,768),new PropHook("#sm_br_1_",256,512),new PropHook("#sm_br_1_",256,256),new PropHook("#tower.",256,0),new PropHook("#tower.",256,256),new PropHook("#vilhou4",0,256),new PropHook("#bk_roof",768,0),new PropHook("#bk_roof",768,256),new PropHook("#fahwerk2",768,0),new PropHook("#fahwerk2",768,256),new PropHook("#fahwerk2",768,512),new PropHook("#fahwerk2",768,768),new PropHook("#fahwerk1",0,768),new PropHook("#fahwerk1",256,768),new PropHook("#fahwerk1",512,768),new PropHook("#fahwerk1",768,768),new PropHook("#gate.",768,0),new PropHook("#gate.",768,256),new PropHook("#gate.",768,512),new PropHook("#gate.",768,768),new PropHook("#gate.",512,768),new PropHook("#gate.",256,768),new PropHook("#gate.",0,768),new PropHook("#dot2_2",0,0)];
         var _loc14_:int = int(param1.length);
         if(_loc14_ == 0)
         {
            return;
         }
         if(_loc14_ == 1)
         {
            _loc15_ = this.§5214235868235881123423632234§.getMaterial(param1[0].§package catch package§);
            param1[0].§5214239166239179123423632234§.§try for throw§(_loc15_,null);
            return;
         }
         param1.sort(this.§final var return§);
         var _loc16_:int = §try switch include§(param1,0);
         var _loc6_:BitmapData = §521423129332312946123423632234§ != null && param1[0].§package catch package§.width != 2048 ? §521423129332312946123423632234§ : new BitmapData(_loc16_,_loc16_,false,6118498);
         _loc15_ = this.§5214235868235881123423632234§.getMaterial(_loc6_);
         if(_loc6_ == §521423129332312946123423632234§)
         {
            _loc2_ = new §5214236629236642123423632234§(1024,1024,1024);
            §521423129332312946123423632234§ = null;
         }
         else
         {
            _loc2_ = new §5214236629236642123423632234§(_loc16_,_loc16_);
         }
         var _loc3_:Point = new Point();
         _loc9_ = 0;
         while(_loc9_ < _loc14_)
         {
            _loc4_ = param1[_loc9_].§package catch package§;
            _loc11_ = param1[_loc9_].§521423120292312042123423632234§;
            _loc12_ = _loc2_.§52142394423957123423632234§(_loc4_.width,_loc4_.height);
            if(_loc12_ == null)
            {
               if(_loc14_ - _loc9_ <= 1)
               {
                  _loc15_ = this.§5214235868235881123423632234§.getMaterial(_loc4_);
                  param1[_loc9_].§5214239166239179123423632234§.§try for throw§(_loc15_,new UVFrame(_loc11_ / _loc4_.width,_loc11_ / _loc4_.height,(_loc4_.width - _loc11_) / _loc4_.width,(_loc4_.height - _loc11_) / _loc4_.height));
                  break;
               }
               _loc16_ = §try switch include§(param1,_loc9_);
               if(§521423129332312946123423632234§ == null)
               {
                  _loc6_ = new BitmapData(_loc16_,_loc16_,false,6118498);
                  _loc2_ = new §5214236629236642123423632234§(_loc16_,_loc16_);
               }
               else
               {
                  _loc6_ = §521423129332312946123423632234§;
                  _loc2_ = new §5214236629236642123423632234§(1024,1024,1024);
                  §521423129332312946123423632234§ = null;
               }
               _loc15_ = this.§5214235868235881123423632234§.getMaterial(_loc6_);
               _loc12_ = _loc2_.§52142394423957123423632234§(_loc4_.width,_loc4_.height);
            }
            _loc3_.x = _loc12_.x;
            _loc3_.y = _loc12_.y;
            _loc6_.copyPixels(_loc4_,_loc4_.rect,_loc3_);
            param1[_loc9_].§5214239166239179123423632234§.§try for throw§(_loc15_,new UVFrame((_loc12_.x + _loc11_) / _loc16_,(_loc12_.y + _loc11_) / _loc16_,(_loc12_.x + _loc4_.width - _loc11_) / _loc16_,(_loc12_.y + _loc4_.height - _loc11_) / _loc16_));
            _loc4_.dispose();
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc13_ = _loc5_[_loc7_];
               if(param1[_loc9_].§521423114892311502123423632234§.indexOf(_loc13_.like) != -1)
               {
                  _loc10_ = _loc9_ + 1;
                  while(_loc10_ < _loc14_)
                  {
                     _loc17_ = param1[_loc10_];
                     if(_loc17_.§package catch package§.width == 256 && _loc17_.§package catch package§.height == 256)
                     {
                        _loc8_ = _loc17_.§package catch package§;
                        _loc3_.x = _loc12_.x + _loc13_.xOffset;
                        _loc3_.y = _loc12_.y + _loc13_.yOffset;
                        _loc6_.copyPixels(_loc8_,_loc8_.rect,_loc3_);
                        _loc11_ = _loc17_.§521423120292312042123423632234§;
                        _loc17_.§5214239166239179123423632234§.§try for throw§(_loc15_,new UVFrame((_loc3_.x + _loc11_) / _loc16_,(_loc3_.y + _loc11_) / _loc16_,(_loc3_.x + _loc8_.width - _loc11_) / _loc16_,(_loc3_.y + _loc8_.height - _loc11_) / _loc16_));
                        _loc8_.dispose();
                        param1.removeAt(_loc10_);
                        _loc5_.removeAt(_loc7_);
                        _loc7_--;
                        _loc14_--;
                        break;
                     }
                     _loc10_++;
                  }
               }
               _loc7_++;
            }
            _loc9_++;
         }
      }
      
      public function destroy() : void
      {
         this.§5214238117238130123423632234§ = true;
         this.§5214237954237967123423632234§ = null;
         this.§override catch native§ = null;
         for each(var _loc1_ in this.§5214238136238149123423632234§)
         {
            _loc1_.dispose();
         }
         this.§5214238136238149123423632234§ = null;
      }
      
      private function §5214235286235299123423632234§(param1:IndexedTextureConstructor) : void
      {
         var _loc2_:§521423112022311215123423632234§ = null;
         var _loc3_:TextureByteData = null;
         if(this.§52142350723520123423632234§ < this.§5214237954237967123423632234§.length)
         {
            param1.index = this.§52142350723520123423632234§;
            _loc2_ = this.§5214237954237967123423632234§[this.§52142350723520123423632234§++];
            _loc3_ = _loc2_.§each var get§();
            if(_loc3_ == null || _loc3_.§while for native§ == null)
            {
               _loc3_ = new TextureByteData(§super for else§.§false set default§);
               INotificationService(OSGi.getInstance().getService(INotificationService)).addNotification(new ErrorNotification("texture_prop_error"));
            }
            param1.createTexture(_loc3_,this);
         }
      }
      
      private function §final var return§(param1:§521423122682312281123423632234§, param2:§521423122682312281123423632234§) : int
      {
         return param2.§package catch package§.height - param1.§package catch package§.height;
      }
      
      private function §5214238702238715123423632234§() : void
      {
         var _loc1_:int = 0;
         this.§override catch native§ = new Vector.<IndexedTextureConstructor>(this.§get catch native§);
         while(_loc1_ < this.§get catch native§)
         {
            this.§override catch native§[_loc1_] = new IndexedTextureConstructor();
            _loc1_++;
         }
      }
      
      private function §import use extends§(param1:String) : Boolean
      {
         if(param1.indexOf("zamin") == 0 && param1.indexOf("newnakhl") == -1)
         {
            return false;
         }
         var _loc4_:Array = param1.split("#");
         var _loc3_:String = _loc4_[0];
         var _loc2_:String = _loc4_[1];
         if(_loc2_.indexOf("cliff_1") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("cliff_2") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("cliff_c2") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("concrete_") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("concrete2x2_") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("dark_") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("dd_") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("dg_") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("gd") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("grass_a") == 0)
         {
            return true;
         }
         if(_loc2_.indexOf("grass_b") == 0)
         {
            return true;
         }
         if(_loc3_.indexOf("Land Tiles") == 0 && _loc2_.indexOf("grass2") == 0)
         {
            return true;
         }
         if(_loc2_.indexOf("gravest") == 0)
         {
            return true;
         }
         if(_loc2_.indexOf("grid") == 0)
         {
            return true;
         }
         if(_loc2_.indexOf("ground21") == 0)
         {
            return true;
         }
         if(_loc2_.indexOf("ground22") == 0)
         {
            return true;
         }
         if(_loc2_.indexOf("gr") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("pave") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("pc_") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("pg_") == 0)
         {
            return false;
         }
         if(_loc2_ == "roof.jpg")
         {
            return false;
         }
         if(_loc2_.indexOf("steel_") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("slope") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("spring_") == 0)
         {
            return false;
         }
         if(_loc2_ == "wallbrok.jpg")
         {
            return false;
         }
         if(_loc3_.indexOf("Fort") == 0 && _loc2_.indexOf("wall_") == 0 && _loc2_ != "wall_out.jpg")
         {
            return false;
         }
         if(_loc2_.indexOf("bg_rock") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("land33") == 0)
         {
            return false;
         }
         return true;
      }
      
      private function §try switch include§(param1:Vector.<§521423122682312281123423632234§>, param2:int) : int
      {
         var _loc6_:int = 0;
         var _loc4_:§521423122682312281123423632234§ = null;
         var _loc3_:int = int(param1.length);
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         _loc6_ = param2;
         while(_loc6_ < _loc3_)
         {
            _loc4_ = param1[_loc6_];
            _loc9_ += _loc4_.§package catch package§.width * _loc4_.§package catch package§.height;
            _loc8_ = Math.max(_loc8_,_loc4_.§package catch package§.width);
            _loc6_++;
         }
         var _loc5_:int = 32;
         var _loc10_:int = Math.ceil(Math.sqrt(_loc9_));
         while(_loc5_ < _loc10_)
         {
            _loc5_ <<= 1;
         }
         if(_loc5_ < _loc8_)
         {
            _loc5_ <<= 1;
         }
         var _loc7_:int = 2048;
         if(param1[param2].§package catch package§.height == 128)
         {
            _loc7_ = 512;
         }
         return _loc5_ > _loc7_ ? _loc7_ : _loc5_;
      }
   }
}

class PropHook
{
   
   public var like:String;
   
   public var xOffset:int;
   
   public var yOffset:int;
   
   public function PropHook(param1:String, param2:int, param3:int)
   {
      super();
      this.like = param1;
      this.xOffset = param2;
      this.yOffset = param3;
   }
}
