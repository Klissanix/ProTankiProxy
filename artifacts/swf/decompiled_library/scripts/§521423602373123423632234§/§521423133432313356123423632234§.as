package §521423602373123423632234§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import §finally catch with§.§5214238074238087123423632234§;
   import flash.display.BitmapData;
   import flash.utils.Dictionary;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   
   public final class §521423133432313356123423632234§ extends Mesh implements §521423117662311779123423632234§
   {
      
      private static const §with var in§:Number = 100;
      
      private static const §continue catch extends§:Number = 10;
      
      private static const §5214238717238730123423632234§:Number = 5;
      
      private static const §5214239407239420123423632234§:Number = 0.5;
      
      private static const §try package for§:Number = 0.75;
      
      private static const §5214231160231173123423632234§:Number = 300;
      
      private static const §5214235358235371123423632234§:Class = D6204f3_jpg$9f678e88ddca8d992eb6c357dc164d921924510240;
      
      private static const §5214234510234523123423632234§:Class = §c12g9ge_jpg$b0914f03750aae6b3c5af5112f0029af-786806803§;
      
      private static const §5214234713234726123423632234§:BitmapData = new §5214235358235371123423632234§().bitmapData;
      
      private static const §in for§:BitmapData = new §5214234510234523123423632234§().bitmapData;
      
      private static const §521423139082313921123423632234§:Dictionary = new Dictionary();
      
      private static const §super const catch§:Dictionary = new Dictionary();
      
      private var §if set implements§:TextureMaterial;
      
      private var §5214237275237288123423632234§:Vertex;
      
      private var §static var function§:Vertex;
      
      private var §break native§:Vertex;
      
      private var §try set static§:Vertex;
      
      private var §521423123972312410123423632234§:Vertex;
      
      private var §5214237901237914123423632234§:Vertex;
      
      private var §5214235949235962123423632234§:Vertex;
      
      private var §521423112312311244123423632234§:Vertex;
      
      private var §do catch true§:Face;
      
      private var §break for null§:Face;
      
      private var §with use override§:Vertex;
      
      private var §with const static§:Vertex;
      
      private var §override set continue§:Vertex;
      
      private var §get each§:Vertex;
      
      private var §catch switch var§:Vertex;
      
      private var §try for final§:Vertex;
      
      private var §for const const§:Vertex;
      
      private var §super package override§:Vertex;
      
      private var §521423108142310827123423632234§:Face;
      
      private var §case package function§:Face;
      
      private var §5214239637239650123423632234§:Number;
      
      private var §521423108322310845123423632234§:Number;
      
      private var §set const override§:Number;
      
      private var color:uint;
      
      private var §final set override§:int;
      
      private var §finally var case§:int;
      
      public function §521423133432313356123423632234§()
      {
         super();
         this.§5214237275237288123423632234§ = addVertex(-1,1,0);
         this.§static var function§ = addVertex(-1,0,0);
         this.§break native§ = addVertex(1,0,0);
         this.§try set static§ = addVertex(1,1,0);
         this.§521423123972312410123423632234§ = addVertex(-1,1,0);
         this.§5214237901237914123423632234§ = addVertex(-1,0,0);
         this.§5214235949235962123423632234§ = addVertex(1,0,0);
         this.§521423112312311244123423632234§ = addVertex(1,1,0);
         this.§do catch true§ = addQuadFace(this.§5214237275237288123423632234§,this.§static var function§,this.§break native§,this.§try set static§);
         this.§break for null§ = addQuadFace(this.§521423123972312410123423632234§,this.§5214237901237914123423632234§,this.§5214235949235962123423632234§,this.§521423112312311244123423632234§);
         this.§with use override§ = addVertex(-1,1,0);
         this.§with const static§ = addVertex(-1,0,0);
         this.§override set continue§ = addVertex(1,0,0);
         this.§get each§ = addVertex(1,1,0);
         this.§catch switch var§ = addVertex(-1,1,0);
         this.§try for final§ = addVertex(-1,0,0);
         this.§for const const§ = addVertex(1,0,0);
         this.§super package override§ = addVertex(1,1,0);
         this.§521423108142310827123423632234§ = addQuadFace(this.§with use override§,this.§with const static§,this.§override set continue§,this.§get each§);
         this.§case package function§ = addQuadFace(this.§catch switch var§,this.§try for final§,this.§for const const§,this.§super package override§);
         calculateFacesNormals();
         useLight = false;
         useShadowMap = false;
         sorting = 2;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         blendMode = "add";
      }
      
      public function close() : void
      {
         if(this.color in §521423139082313921123423632234§)
         {
            delete §521423139082313921123423632234§[this.color];
         }
         if(this.color in §super const catch§)
         {
            delete §super const catch§[this.color];
         }
         this.§if set implements§ = null;
         this.§do catch true§.material = null;
         this.§521423108142310827123423632234§.material = null;
         this.§break for null§.material = null;
         this.§case package function§.material = null;
      }
      
      public function init(param1:int) : void
      {
         this.color = param1;
         this.§if set implements§ = §5214238074238087123423632234§.§for use include§(§521423139082313921123423632234§,param1,§5214234713234726123423632234§);
         this.§final set override§ = this.§if set implements§.texture.width;
         this.§finally var case§ = this.§if set implements§.texture.height;
         this.§do catch true§.material = this.§if set implements§;
         this.§521423108142310827123423632234§.material = this.§if set implements§;
         var _loc2_:TextureMaterial = §5214238074238087123423632234§.§for use include§(§super const catch§,param1,§in for§,false);
         this.§break for null§.material = _loc2_;
         this.§case package function§.material = _loc2_;
         var _loc3_:Number = 5;
         this.§5214237275237288123423632234§.x = -_loc3_;
         this.§5214237275237288123423632234§.u = 0;
         this.§static var function§.x = -_loc3_;
         this.§static var function§.u = 0;
         this.§break native§.x = _loc3_;
         this.§break native§.u = 1;
         this.§try set static§.x = _loc3_;
         this.§try set static§.u = 1;
         this.§521423123972312410123423632234§.x = -_loc3_;
         this.§521423123972312410123423632234§.u = 0;
         this.§521423123972312410123423632234§.v = 0;
         this.§5214237901237914123423632234§.x = -_loc3_;
         this.§5214237901237914123423632234§.u = 0;
         this.§5214237901237914123423632234§.v = 1;
         this.§5214235949235962123423632234§.x = _loc3_;
         this.§5214235949235962123423632234§.u = 1;
         this.§5214235949235962123423632234§.v = 1;
         this.§521423112312311244123423632234§.x = _loc3_;
         this.§521423112312311244123423632234§.u = 1;
         this.§521423112312311244123423632234§.v = 0;
         this.§with use override§.x = -_loc3_;
         this.§with use override§.u = 0;
         this.§with const static§.x = -_loc3_;
         this.§with const static§.u = 0;
         this.§override set continue§.x = _loc3_;
         this.§override set continue§.u = 1;
         this.§get each§.x = _loc3_;
         this.§get each§.u = 1;
         this.§catch switch var§.x = -_loc3_;
         this.§catch switch var§.u = 0;
         this.§catch switch var§.v = 0;
         this.§try for final§.x = -_loc3_;
         this.§try for final§.u = 0;
         this.§try for final§.v = 1;
         this.§for const const§.x = _loc3_;
         this.§for const const§.u = 1;
         this.§for const const§.v = 1;
         this.§super package override§.x = _loc3_;
         this.§super package override§.u = 1;
         this.§super package override§.v = 0;
         this.§5214239637239650123423632234§ = 5 * 10 * this.§if set implements§.texture.height / this.§if set implements§.texture.width;
         this.§521423108322310845123423632234§ = 0;
         this.§set const override§ = 0;
      }
      
      public function §521423120402312053123423632234§(param1:int, param2:Number) : void
      {
         var _loc3_:Number = param1 / 1000;
         this.§5214237275237288123423632234§.y = param2;
         this.§static var function§.y = 100;
         this.§break native§.y = 100;
         this.§try set static§.y = param2;
         this.§521423123972312410123423632234§.y = 100;
         this.§5214237901237914123423632234§.y = 0;
         this.§5214235949235962123423632234§.y = 0;
         this.§521423112312311244123423632234§.y = 100;
         this.§with use override§.y = param2;
         this.§with const static§.y = 100;
         this.§override set continue§.y = 100;
         this.§get each§.y = param2;
         this.§catch switch var§.y = 100;
         this.§try for final§.y = 0;
         this.§for const const§.y = 0;
         this.§super package override§.y = 100;
         this.§521423108322310845123423632234§ += 0.5 * _loc3_;
         this.§set const override§ += 0.75 * _loc3_;
         var _loc8_:Number = Math.sin(this.§521423108322310845123423632234§) * 300;
         var _loc7_:Number = Math.sin(this.§set const override§) * 300;
         this.§5214237275237288123423632234§.v = (-this.§5214237275237288123423632234§.y + _loc8_) / this.§5214239637239650123423632234§;
         this.§static var function§.v = (-this.§static var function§.y + _loc8_) / this.§5214239637239650123423632234§;
         this.§break native§.v = (-this.§break native§.y + _loc8_) / this.§5214239637239650123423632234§;
         this.§try set static§.v = (-this.§try set static§.y + _loc8_) / this.§5214239637239650123423632234§;
         this.§with use override§.v = (-this.§with use override§.y + _loc7_) / this.§5214239637239650123423632234§;
         this.§with const static§.v = (-this.§with const static§.y + _loc7_) / this.§5214239637239650123423632234§;
         this.§override set continue§.v = (-this.§override set continue§.y + _loc7_) / this.§5214239637239650123423632234§;
         this.§get each§.v = (-this.§get each§.y + _loc7_) / this.§5214239637239650123423632234§;
         var _loc4_:Number = §final set override§ / 2;
         var _loc5_:Number = this.§static var function§.v * §finally var case§ % §finally var case§;
         if(_loc5_ < 0)
         {
            _loc5_ = §finally var case§ + _loc5_;
         }
         var _loc6_:Number = (§5214234713234726123423632234§.getPixel(_loc4_,_loc5_) >> 16 & 0xFF) / 255;
         this.§521423123972312410123423632234§.v = 1 - _loc6_;
         this.§521423112312311244123423632234§.v = 1 - _loc6_;
         _loc5_ = this.§with const static§.v * §finally var case§ % §finally var case§;
         if(_loc5_ < 0)
         {
            _loc5_ = §finally var case§ + _loc5_;
         }
         _loc6_ = (§5214234713234726123423632234§.getPixel(_loc4_,_loc5_) >> 16 & 0xFF) / 255;
         this.§catch switch var§.v = 1 - _loc6_;
         this.§super package override§.v = 1 - _loc6_;
      }
   }
}

