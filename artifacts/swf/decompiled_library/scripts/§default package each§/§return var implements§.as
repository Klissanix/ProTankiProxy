package §default package each§
{
   import alternativa.engine3d.core.Object3DContainer;
   import alternativa.engine3d.objects.Mesh;
   
   public class §return var implements§ extends Object3DContainer
   {
      
      private var §5214234356234369123423632234§:Vector.<Mesh> = new Vector.<Mesh>();
      
      public function §return var implements§()
      {
         super();
      }
      
      public function §case for extends§(param1:Vector.<Mesh>) : void
      {
         this.§5214234356234369123423632234§.push(param1[0]);
         addChild(param1[0]);
         param1[0].x = 0;
         param1[0].y = 0;
         param1[0].z = 0;
         if(param1.length == 1)
         {
            return;
         }
         var _loc2_:Object3DContainer = new Object3DContainer();
         addChild(_loc2_);
         _loc2_.x = param1[1].x;
         _loc2_.y = param1[1].y;
         _loc2_.z = param1[1].z;
         param1[1].x = 0;
         param1[1].y = 0;
         param1[1].z = 0;
         var _loc3_:int = 1;
         while(_loc3_ < param1.length)
         {
            _loc2_.addChild(param1[_loc3_]);
            this.§5214234356234369123423632234§[§5214234356234369123423632234§.length] = param1[_loc3_];
            _loc3_++;
         }
      }
      
      public function §5214237028237041123423632234§() : Vector.<Mesh>
      {
         return this.§5214234356234369123423632234§;
      }
   }
}

