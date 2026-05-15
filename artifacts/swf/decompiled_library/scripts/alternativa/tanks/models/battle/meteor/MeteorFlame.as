package alternativa.tanks.models.battle.meteor
{
   import §521423120192312032123423632234§.§switch var final§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.sfx.§5214232204232217123423632234§;
   import §var set var§.§521423132492313262123423632234§;
   
   public class MeteorFlame implements §5214232204232217123423632234§
   {
      
      private var material:TextureMaterial;
      
      private var container:§switch var final§;
      
      private var §native use use§:Meteor;
      
      private var §5214232270232283123423632234§:Number = 0;
      
      private var alive:Boolean = false;
      
      private var §5214235822235835123423632234§:Boolean = false;
      
      private var §if set do§:Number = 0;
      
      private const §5214233420233433123423632234§:Number = 512;
      
      private const §521423107992310812123423632234§:Number = 24;
      
      private const §super for while§:Number = 0.8;
      
      private const §implements var set§:Number = 0.5;
      
      private var §dynamic use implements§:Vector3;
      
      private var §while for§:Vector3;
      
      private var §static set throw§:Vector.<Sprite3D>;
      
      public function MeteorFlame(param1:TextureMaterial, param2:Meteor)
      {
         var _loc3_:int = 0;
         var _loc4_:Sprite3D = null;
         §dynamic use implements§ = new Vector3();
         §while for§ = new Vector3();
         super();
         this.material = param1;
         this.§native use use§ = param2;
         this.§static set throw§ = new Vector.<Sprite3D>(24);
         _loc3_ = 0;
         while(_loc3_ < 24)
         {
            _loc4_ = new Sprite3D(512,512,param1);
            _loc4_.blendMode = "add";
            this.§static set throw§[_loc3_] = _loc4_;
            _loc3_++;
         }
      }
      
      public function kill() : void
      {
         this.alive = false;
      }
      
      private function update(param1:Number, param2:Vector3, param3:Vector3) : void
      {
         var _loc4_:int = 0;
         var _loc5_:Sprite3D = null;
         this.§5214232270232283123423632234§ += param1;
         _loc4_ = 0;
         while(_loc4_ < 24)
         {
            _loc5_ = this.§static set throw§[_loc4_];
            this.e395be9a(_loc5_,this.§5214232270232283123423632234§ + _loc4_ * 0.8 / 24,param2,param3);
            _loc4_++;
         }
      }
      
      public function fadeOut() : void
      {
         this.§5214235822235835123423632234§ = true;
         this.§if set do§ = this.§5214232270232283123423632234§;
      }
      
      private function e395be9a(param1:Sprite3D, param2:Number, param3:Vector3, param4:Vector3) : void
      {
         var _loc19_:Number = NaN;
         _loc19_ = 0.08333333333333333;
         var _loc20_:Number = NaN;
         _loc20_ = 0.8;
         var _loc16_:Number = NaN;
         _loc16_ = 0.5;
         var _loc17_:Number = NaN;
         _loc17_ = 0.8;
         var _loc13_:Number = NaN;
         _loc13_ = 0.2;
         var _loc6_:Number = NaN;
         _loc6_ = 20;
         var _loc5_:Number = NaN;
         _loc5_ = 300;
         var _loc11_:Number = NaN;
         _loc11_ = 3000;
         var _loc10_:Number = NaN;
         _loc10_ = 0.6;
         var _loc9_:Number = NaN;
         _loc9_ = 1;
         var _loc8_:Number = NaN;
         _loc8_ = 0;
         var _loc7_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc12_:Number = NaN;
         if(!this.§5214235822235835123423632234§)
         {
            _loc7_ = param2 % 0.8;
         }
         else
         {
            _loc7_ = Math.min((param2 - this.§if set do§) / 0.5,0.8 / 0.5);
         }
         if(_loc7_ <= 0.08333333333333333)
         {
            _loc18_ = _loc7_ / 0.08333333333333333;
            _loc15_ = 0.5 + (0.8 - 0.5) * _loc18_;
            _loc14_ = 20 + (300 - 20) * _loc18_;
            _loc12_ = 0.6 + (1 - 0.6) * _loc18_;
         }
         else
         {
            _loc18_ = (_loc7_ - 0.08333333333333333) / (0.8 - 0.08333333333333333);
            _loc15_ = 0.8 + (0.2 - 0.8) * _loc18_;
            _loc14_ = 300 + (3000 - 300) * _loc18_;
            _loc12_ = 1 + (0 - 1) * _loc18_;
         }
         param1.scaleX = _loc15_;
         param1.scaleY = _loc15_;
         param1.scaleZ = _loc15_;
         param1.x = param3.x - param4.x * _loc14_;
         param1.y = param3.y - param4.y * _loc14_;
         param1.z = param3.z - param4.z * _loc14_;
         param1.alpha = _loc12_;
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         this.§native use use§.readPositionAndRotation(this.§dynamic use implements§,this.§while for§);
         this.update(param1 / 1000,this.§dynamic use implements§,this.§while for§);
         return this.alive;
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.container = param1;
         this.alive = true;
         this.§5214235822235835123423632234§ = false;
         this.§5214232270232283123423632234§ = 0;
         for each(var _loc2_ in this.§static set throw§)
         {
            param1.§5214237128237141123423632234§(_loc2_);
         }
      }
      
      public function destroy() : void
      {
         if(this.container != null)
         {
            for each(var _loc1_ in this.§static set throw§)
            {
               this.container.§5214231752231765123423632234§(_loc1_);
            }
            this.container = null;
         }
      }
   }
}

