package §native set while§
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.math.Vector3;
   import alternativa.osgi.service.display.Display;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.sfx.§5214232204232217123423632234§;
   import flash.display.BitmapData;
   import flash.filters.GlowFilter;
   import §var set var§.§521423132492313262123423632234§;
   
   public class DamageIndicatorEffect extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private static const §var for else§:Number = 100;
      
      private static const §5214235685235698123423632234§:Number = 250;
      
      private static const §case const use§:Number = 300;
      
      private static const §finally for try§:Number = 1000;
      
      private static const §5214237511237524123423632234§:Number = 100;
      
      private static var label:§5214238529238542123423632234§;
      
      private var sprite:Sprite3D;
      
      private var time:int;
      
      private var z:Number;
      
      private var §static const for§:Vector3 = new Vector3();
      
      private var container:§switch var final§;
      
      private var §521423103732310386123423632234§:Number;
      
      private var §with for true§:Number;
      
      private var material:TextureMaterial = new TextureMaterial(null,false,false);
      
      public function DamageIndicatorEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.sprite = new Sprite3D(32,20,material);
         this.sprite.perspectiveScale = false;
         this.sprite.useShadowMap = false;
         this.sprite.useLight = false;
         this.sprite.depthTest = false;
         this.sprite.originX = 0.85;
         this.sprite.calculateBounds();
         if(label == null)
         {
            label = new §5214238529238542123423632234§();
            label.§521423102842310297123423632234§ = 16;
            label.filters = [new GlowFilter(0,0.8,4,4,3)];
         }
      }
      
      public static function start(param1:Vector3, param2:uint, param3:int) : void
      {
         var _loc4_:DamageIndicatorEffect = DamageIndicatorEffect(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(DamageIndicatorEffect));
         _loc4_.init(param1,param2,param3);
         §52142380523818123423632234§.getBattleScene3D().§each var use§(_loc4_);
      }
      
      public function destroy() : void
      {
         this.container.§5214231752231765123423632234§(this.sprite);
         this.container = null;
         §521423117092311722123423632234§();
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         sprite.scaleX = sprite.scaleY = Display.§521423132512313264123423632234§;
         this.container = §52142380523818123423632234§.getBattleScene3D().§do get§();
         this.container.§5214237128237141123423632234§(this.sprite);
      }
      
      public function kill() : void
      {
         this.sprite.alpha = 0;
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         this.sprite.x = this.§static const for§.x + this.z * this.§521423103732310386123423632234§;
         this.sprite.y = this.§static const for§.y + this.z * this.§with for true§;
         this.sprite.z = this.§static const for§.z + this.z;
         this.time += param1;
         var _loc3_:Number = this.z < 100 ? 1000 : 100;
         this.z += _loc3_ * param1 * 0.001;
         if(this.z < 250)
         {
            this.sprite.alpha = 1;
         }
         else
         {
            this.sprite.alpha = (300 - this.z) / (300 - 250);
            if(this.sprite.alpha < 0)
            {
               this.sprite.alpha = 0;
               return false;
            }
         }
         return true;
      }
      
      private function init(param1:Vector3, param2:uint, param3:int) : void
      {
         this.§static const for§.copy(param1);
         this.time = 0;
         this.z = 0;
         this.§521423103732310386123423632234§ = Math.random() - 0.5;
         this.§with for true§ = Math.random() - 0.5;
         label.text = param3.toString();
         label.color = param2;
         var _loc4_:BitmapData = new BitmapData(32,20,true,0);
         _loc4_.draw(label);
         material.texture = _loc4_;
      }
   }
}

