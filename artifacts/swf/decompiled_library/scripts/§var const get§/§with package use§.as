package §var const get§
{
   import §521423139282313941123423632234§.ConsoleVarFloat;
   import alternativa.math.Vector3;
   import §var set var§.§521423132492313262123423632234§;
   
   public class §with package use§ implements §521423104832310496123423632234§
   {
      
      private static const §5214239673239686123423632234§:Vector3 = new Vector3();
      
      private static const §do package do§:Vector3 = new Vector3();
      
      private var §while use include§:ConsoleVarFloat;
      
      private var §521423123352312348123423632234§:ConsoleVarFloat;
      
      public function §with package use§(param1:ConsoleVarFloat, param2:ConsoleVarFloat)
      {
         super();
         this.§while use include§ = param1;
         this.§521423123352312348123423632234§ = param2;
      }
      
      public function §5214232162232175123423632234§(param1:§521423137392313752123423632234§, param2:§521423132492313262123423632234§, param3:Number) : Vector3
      {
         §do package do§.y = param1.§class native§();
         §do package do§.x = param1.§5214235499235512123423632234§();
         var _loc4_:Number = Math.cos(param2.rotationZ);
         var _loc5_:Number = Math.sin(param2.rotationZ);
         §5214239673239686123423632234§.x = §do package do§.x * _loc4_ - §do package do§.y * _loc5_;
         §5214239673239686123423632234§.y = §do package do§.x * _loc5_ + §do package do§.y * _loc4_;
         §5214239673239686123423632234§.z = param1.§521423139722313985123423632234§();
         if(§5214239673239686123423632234§.lengthSqr() > 0)
         {
            §5214239673239686123423632234§.normalize();
         }
         if(param1.§finally const import§())
         {
            §5214239673239686123423632234§.scale(this.§while use include§.value * this.§521423123352312348123423632234§.value * param3);
         }
         else
         {
            §5214239673239686123423632234§.scale(this.§while use include§.value * param3);
         }
         return §5214239673239686123423632234§;
      }
   }
}

