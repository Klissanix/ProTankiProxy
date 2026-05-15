package §521423130632313076123423632234§
{
   import §5214237930237943123423632234§.§throw var§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.math.Vector3;
   import §else switch default§.§5214235140235153123423632234§;
   
   public class NuclearBangEffect
   {
      
      internal static const SIZE:Number = 550;
      
      internal static const §5214234956234969123423632234§:int = 20;
      
      internal static const §5214234034234047123423632234§:Number = 1000;
      
      internal static const §521423113742311387123423632234§:Number = 2000;
      
      internal static const §null var switch§:int = 15;
      
      internal static const §break do§:Number = 850;
      
      internal static const §true package implements§:Number = 2330;
      
      internal static const §for package do§:int = 11;
      
      internal static const §include package extends§:Number = 650;
      
      internal static const §5214235713235726123423632234§:Number = 2550;
      
      internal static const §521423124152312428123423632234§:int = 7;
      
      internal static const §5214232143232156123423632234§:Number = 290;
      
      internal static const §switch use override§:Number = 2715;
      
      internal static const §5214235446235459123423632234§:int = 12;
      
      internal static const §52142366923682123423632234§:Number = 800;
      
      internal static const §521423140902314103123423632234§:Number = 2055;
      
      internal static const §5214236307236320123423632234§:int = 2;
      
      internal static const §in catch while§:Number = 50;
      
      internal static const §5214236345236358123423632234§:Number = 1725;
      
      internal static const §implements use§:int = 3;
      
      internal static const §5214236810236823123423632234§:Number = 120;
      
      internal static const §5214236953236966123423632234§:Number = 1450;
      
      internal static const §var for override§:int = 4;
      
      internal static const §native catch package§:Number = 200;
      
      internal static const §break package if§:Number = 1175;
      
      internal static const §function package class§:int = 4;
      
      internal static const §5214238294238307123423632234§:Number = 160;
      
      internal static const §break catch do§:Number = 1065;
      
      internal static const §get package catch§:int = 3;
      
      internal static const §5214231944231957123423632234§:Number = 50;
      
      internal static const §include finally set§:Number = 735;
      
      internal static const §521423131312313144123423632234§:int = 6;
      
      internal static const §null package switch§:Number = 150;
      
      internal static const §catch finally var§:Number = 460;
      
      internal static const §5214236993237006123423632234§:int = 9;
      
      internal static const §5214233365233378123423632234§:Number = 450;
      
      internal static const §else true§:Number = 240;
      
      internal static const §try catch with§:int = 10;
      
      internal static const §default package with§:Number = 550;
      
      internal static const §5214237579237592123423632234§:Number = 185;
      
      internal static const §5214231144231157123423632234§:Number = 0.16666666666666666;
      
      internal static const §5214238677238690123423632234§:Number = 2;
      
      internal static const END:Number = 2.6666666666666665;
      
      private var §521423124922312505123423632234§:§throw var§;
      
      private var §5214232469232482123423632234§:TextureMaterial;
      
      private var §catch set§:TextureMaterial;
      
      private var §false for with§:TextureMaterial;
      
      private var §5214237852237865123423632234§:TextureMaterial;
      
      public function NuclearBangEffect(param1:§throw var§, param2:TextureMaterial, param3:TextureMaterial, param4:TextureMaterial, param5:TextureMaterial)
      {
         super();
         this.§521423124922312505123423632234§ = param1;
         this.§5214232469232482123423632234§ = param2;
         this.§catch set§ = param3;
         this.§false for with§ = param4;
         this.§5214237852237865123423632234§ = param5;
      }
      
      private function a3df2f7c(param1:Vector3, param2:§5214235140235153123423632234§, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:Boolean) : void
      {
         var _loc12_:int = 0;
         var _loc9_:Vector3 = null;
         var _loc11_:Number = NaN;
         var _loc10_:NuclearBangSprite = null;
         var _loc13_:Number = 3.141592653589793 * 2 / param3;
         _loc12_ = 0;
         while(_loc12_ < param3)
         {
            _loc9_ = new Vector3();
            _loc9_.x = Math.cos(_loc12_ * _loc13_) * param4;
            _loc9_.y = Math.sin(_loc12_ * _loc13_) * param4;
            _loc9_.z = param5 - 100;
            _loc11_ = 1 + Math.random() * param6 + param7;
            _loc10_ = NuclearBangSprite(this.§521423124922312505123423632234§.§52142349423507123423632234§(NuclearBangSprite));
            if(param8)
            {
               _loc10_.initSmoke(param1,_loc9_,_loc11_,this.§false for with§);
            }
            else
            {
               _loc10_.initFlame(param1,_loc9_,_loc11_,this.§5214237852237865123423632234§);
            }
            param2.§each var use§(_loc10_);
            _loc12_++;
         }
      }
      
      public function play(param1:Vector3, param2:§5214235140235153123423632234§) : void
      {
         this.a3df2f7c(param1,param2,20,1000,2000,0.6,0,true);
         this.a3df2f7c(param1,param2,15,850,2330,0.6,0,true);
         this.a3df2f7c(param1,param2,11,650,2550,0.6,0,true);
         this.a3df2f7c(param1,param2,7,290,2715,0.6,0,true);
         this.a3df2f7c(param1,param2,12,800,2055,0.7,0.4,false);
         this.a3df2f7c(param1,param2,2,50,1725,0.6,0,true);
         this.a3df2f7c(param1,param2,3,120,1450,0.6,-0.4,true);
         this.a3df2f7c(param1,param2,4,200,1175,0.6,0,true);
         this.a3df2f7c(param1,param2,4,160,1065,0.7,-0.2,false);
         this.a3df2f7c(param1,param2,3,50,735,0.6,-0.3,true);
         this.a3df2f7c(param1,param2,6,150,460,0.6,0,true);
         this.a3df2f7c(param1,param2,9,450,240,0.6,0,true);
         this.a3df2f7c(param1,param2,10,550,185,0.7,-0.2,false);
         var _loc3_:NuclearLightEffect = NuclearLightEffect(this.§521423124922312505123423632234§.§52142349423507123423632234§(NuclearLightEffect));
         _loc3_.init(param1,this.§5214232469232482123423632234§);
         param2.§each var use§(_loc3_);
         var _loc4_:NuclearLightWaveEffect = NuclearLightWaveEffect(this.§521423124922312505123423632234§.§52142349423507123423632234§(NuclearLightWaveEffect));
         _loc4_.init(param1,this.§catch set§);
         param2.§each var use§(_loc4_);
      }
   }
}

