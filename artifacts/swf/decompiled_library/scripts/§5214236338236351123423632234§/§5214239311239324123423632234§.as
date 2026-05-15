package §5214236338236351123423632234§
{
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.BSP;
   import alternativa.tanks.engine3d.UVFrame;
   import §catch catch§.§5214233797233810123423632234§;
   import §in switch implements§.TextureByteData;
   
   public class §5214239311239324123423632234§ implements §521423112022311215123423632234§
   {
      
      private var §each use catch§:§5214233797233810123423632234§;
      
      private var §5214238852238865123423632234§:String;
      
      private var §5214232985232998123423632234§:Vector.<BSP> = new Vector.<BSP>();
      
      public function §5214239311239324123423632234§(param1:§5214233797233810123423632234§, param2:String)
      {
         super();
         this.§each use catch§ = param1;
         this.§5214238852238865123423632234§ = param2;
      }
      
      public function §super set while§(param1:BSP) : void
      {
         this.§5214232985232998123423632234§[§5214232985232998123423632234§.length] = param1;
      }
      
      public function §try for throw§(param1:TextureMaterial, param2:UVFrame) : void
      {
         var _loc4_:int = 0;
         var _loc3_:int = int(§5214232985232998123423632234§.length);
         if(_loc3_ > 0)
         {
            param1.resolution = §5214232985232998123423632234§[0].calculateResolution(param1.texture.width,param1.texture.height);
         }
         while(_loc4_ < _loc3_)
         {
            §5214232985232998123423632234§[_loc4_].setMaterialToAllFaces(param1);
            if(param2 != null)
            {
               §5214234993235006123423632234§(§5214232985232998123423632234§[_loc4_],param2);
            }
            _loc4_++;
         }
      }
      
      public function §each var get§() : TextureByteData
      {
         return this.§each use catch§.§5214238136238149123423632234§.§521423118062311819123423632234§(this.§5214238852238865123423632234§);
      }
      
      public function §521423112572311270123423632234§() : String
      {
         return §each use catch§.§521423109572310970123423632234§[§5214238852238865123423632234§];
      }
      
      private function §5214234993235006123423632234§(param1:BSP, param2:UVFrame) : void
      {
         var _loc6_:Vertex = null;
         var _loc3_:Number = param2.topLeftU;
         var _loc5_:Number = param2.topLeftV;
         var _loc7_:Number = param2.bottomRightU - _loc3_;
         var _loc4_:Number = param2.bottomRightV - _loc5_;
         _loc6_ = param1.vertexList;
         while(_loc6_ != null)
         {
            _loc6_.u = _loc3_ + _loc6_.u * _loc7_;
            _loc6_.v = _loc5_ + _loc6_.v * _loc4_;
            _loc6_ = _loc6_.next;
         }
      }
   }
}

