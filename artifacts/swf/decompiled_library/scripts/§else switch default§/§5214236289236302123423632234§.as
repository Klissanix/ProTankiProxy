package §else switch default§
{
   import §5214231366231379123423632234§.§default catch native§;
   import alternativa.engine3d.containers.KDContainer;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Decal;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleUtils;
   import flash.geom.Vector3D;
   import §for catch for§.§5214234380234393123423632234§;
   
   public class §5214236289236302123423632234§
   {
      
      private static const §get for for§:Number = 1.4835298641951802;
      
      private static const §5214235622235635123423632234§:§default catch native§ = new §default catch native§();
      
      private static const §5214239673239686123423632234§:Vector3 = new Vector3();
      
      private static const §5214238901238914123423632234§:Vector3 = new Vector3();
      
      private static const §case use var§:Vector3 = new Vector3();
      
      private static const §5214233761233774123423632234§:Vector3 = new Vector3();
      
      private static const §5214236776236789123423632234§:Vector.<Vector3> = new <Vector3>[new Vector3(),new Vector3(),new Vector3(),new Vector3(),new Vector3()];
      
      private static const §dynamic catch for§:Vector3D = new Vector3D();
      
      private static const §5214234643234656123423632234§:Vector3D = new Vector3D();
      
      private var §dynamic use switch§:§5214234380234393123423632234§;
      
      public function §5214236289236302123423632234§(param1:§5214234380234393123423632234§)
      {
         super();
         this.§dynamic use switch§ = param1;
      }
      
      private function §dynamic switch package§(param1:§dynamic throw§) : Number
      {
         var _loc2_:§dynamic throw§ = param1;
         if(§dynamic throw§.§5214233938233951123423632234§ !== _loc2_)
         {
            return Math.random() * 2 * 3.141592653589793;
         }
         return 0;
      }
      
      public function §each implements§(param1:Vector3, param2:Vector3, param3:Number, param4:TextureMaterial, param5:KDContainer, param6:§dynamic throw§) : Decal
      {
         §5214239673239686123423632234§.diff(param1,param2);
         var _loc7_:Number = §5214239673239686123423632234§.length() + 200;
         §5214239673239686123423632234§.normalize();
         §5214238901238914123423632234§.cross2(§5214239673239686123423632234§,Vector3.§521423109692310982123423632234§).normalize();
         §case use var§.cross2(§5214238901238914123423632234§,§5214239673239686123423632234§);
         §5214236776236789123423632234§[4].copy(param2);
         §5214236776236789123423632234§[0].copy(param2).addScaled(50,§5214238901238914123423632234§);
         §5214236776236789123423632234§[1].copy(param2).addScaled(50,§case use var§);
         §5214236776236789123423632234§[2].copy(param2).addScaled(-50,§5214238901238914123423632234§);
         §5214236776236789123423632234§[3].copy(param2).addScaled(-50,§case use var§);
         §5214233761233774123423632234§.reset(0,0,0);
         for each(var _loc8_ in §5214236776236789123423632234§)
         {
            if(this.§dynamic use switch§.§set use for§(_loc8_,§5214239673239686123423632234§,16,_loc7_,null,§5214235622235635123423632234§))
            {
               §5214233761233774123423632234§.add(§5214235622235635123423632234§.§5214233761233774123423632234§);
            }
         }
         §5214233761233774123423632234§.normalize();
         BattleUtils.copyToVector3D(param1,§dynamic catch for§);
         BattleUtils.copyToVector3D(§5214233761233774123423632234§,§5214234643234656123423632234§);
         var _loc9_:Number = this.§dynamic switch package§(param6);
         return param5.createDecal(§dynamic catch for§,§5214234643234656123423632234§,param3,_loc9_,1.4835298641951802,300,param4);
      }
   }
}

