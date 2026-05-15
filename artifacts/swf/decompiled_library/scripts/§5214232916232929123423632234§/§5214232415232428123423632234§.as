package §5214232916232929123423632234§
{
   import §5214233635233648123423632234§.§5214237478237491123423632234§;
   import §5214233635233648123423632234§.§override set case§;
   import alternativa.utils.XMLUtils;
   import §catch catch§.§521423132262313239123423632234§;
   import §catch catch§.§5214233797233810123423632234§;
   import §catch catch§.§break catch import§;
   import §finally package catch§.§5214234227234240123423632234§;
   import §finally package catch§.§5214234253234266123423632234§;
   import §finally package catch§.§switch finally switch§;
   import flash.utils.ByteArray;
   import §in switch implements§.TextureByteData;
   
   public class §5214232415232428123423632234§
   {
      
      public static const §var catch in§:String = "library.xml";
      
      public static const §5214238788238801123423632234§:String = "images.xml";
      
      private var §521423115322311545123423632234§:§5214234253234266123423632234§;
      
      private var §true const false§:§override set case§;
      
      private var §try const final§:§5214237478237491123423632234§;
      
      private var §5214231331231344123423632234§:String;
      
      public function §5214232415232428123423632234§(param1:§override set case§)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("Parameter e56f09bc is null");
         }
         this.§true const false§ = param1;
         var _loc3_:ByteArray = param1.§521423118062311819123423632234§("images.xml");
         if(_loc3_ != null)
         {
            this.§try const final§ = this.§521423115742311587123423632234§(XML(_loc3_.toString()));
         }
         var _loc2_:XML = XML(param1.§521423118062311819123423632234§("library.xml").toString());
         this.§5214231331231344123423632234§ = XMLUtils.copyXMLString(_loc2_.@name);
         this.§521423115322311545123423632234§ = this.§implements catch while§(_loc2_);
      }
      
      private function §catch if§(param1:XML) : §521423132262313239123423632234§
      {
         if(param1.mesh.length() > 0)
         {
            return this.§const catch false§(param1.mesh[0]);
         }
         if(param1.sprite.length() > 0)
         {
            return this.§function catch final§(param1.sprite[0]);
         }
         throw new Error("Unknown prop type");
      }
      
      public function get §super package throw§() : §5214234253234266123423632234§
      {
         return this.§521423115322311545123423632234§;
      }
      
      private function §521423115742311587123423632234§(param1:XML) : §5214237478237491123423632234§
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc6_:String = null;
         var _loc5_:§5214237478237491123423632234§ = new §5214237478237491123423632234§();
         for each(var _loc2_ in param1.image)
         {
            _loc3_ = _loc2_.@name;
            _loc4_ = _loc2_.attribute("new-name").toString().toLowerCase();
            _loc6_ = XMLUtils.getAttributeAsString(_loc2_,"alpha",null);
            if(_loc6_ != null)
            {
               _loc6_ = _loc6_.toLowerCase();
            }
            _loc5_.§false package class§(_loc3_,new TextureByteData(this.§true const false§.§521423118062311819123423632234§(_loc4_),this.§true const false§.§521423118062311819123423632234§(_loc6_)));
         }
         return _loc5_;
      }
      
      public function get §extends set case§() : String
      {
         return this.§5214231331231344123423632234§;
      }
      
      private function §5214236711236724123423632234§(param1:XML) : §switch finally switch§
      {
         var _loc4_:§switch finally switch§ = new §switch finally switch§();
         var _loc2_:XMLList = param1.lod;
         if(_loc2_.length() > 0)
         {
            for each(var _loc3_ in _loc2_)
            {
               _loc4_.§get set try§(this.§catch if§(_loc3_),Number(_loc3_.@distance));
            }
         }
         else
         {
            _loc4_.§get set try§(this.§catch if§(param1),0);
         }
         return _loc4_;
      }
      
      private function §dynamic for§(param1:XML) : §5214234227234240123423632234§
      {
         var _loc2_:§5214234227234240123423632234§ = new §5214234227234240123423632234§(XMLUtils.copyXMLString(param1.@name));
         var _loc4_:XMLList = param1.state;
         if(_loc4_.length() > 0)
         {
            for each(var _loc3_ in _loc4_)
            {
               _loc2_.§do catch do§(XMLUtils.copyXMLString(_loc3_.@name),this.§5214236711236724123423632234§(_loc3_));
            }
         }
         else
         {
            _loc2_.§do catch do§("default",this.§5214236711236724123423632234§(param1));
         }
         return _loc2_;
      }
      
      private function §const catch false§(param1:XML) : §5214233797233810123423632234§
      {
         var _loc3_:ByteArray = this.§true const false§.§521423118062311819123423632234§(param1.@file.toString().toLowerCase());
         var _loc2_:Object = null;
         if(param1.texture.length() > 0)
         {
            _loc2_ = {};
            for each(var _loc5_ in param1.texture)
            {
               _loc2_[XMLUtils.copyXMLString(_loc5_.@name)] = _loc5_.attribute("diffuse-map").toString().toLowerCase();
            }
         }
         var _loc4_:String = XMLUtils.getAttributeAsString(param1,"object",null);
         return new §5214233797233810123423632234§(_loc3_,_loc4_,_loc2_,this.§true const false§,this.§try const final§,§5214231331231344123423632234§);
      }
      
      private function §implements catch while§(param1:XML) : §5214234253234266123423632234§
      {
         var _loc4_:§5214234253234266123423632234§ = new §5214234253234266123423632234§(XMLUtils.copyXMLString(param1.@name));
         for each(var _loc3_ in param1.prop)
         {
            _loc4_.§for use finally§(this.§dynamic for§(_loc3_));
         }
         for each(var _loc2_ in param1.elements("prop-group"))
         {
            _loc4_.§each package static§(this.§implements catch while§(_loc2_));
         }
         return _loc4_;
      }
      
      private function §function catch final§(param1:XML) : §break catch import§
      {
         var _loc6_:String = param1.@file.toString().toLowerCase();
         var _loc5_:TextureByteData = this.§try const final§ == null ? new TextureByteData(this.§true const false§.§521423118062311819123423632234§(_loc6_)) : this.§try const final§.§521423118062311819123423632234§(_loc6_);
         var _loc2_:Number = XMLUtils.getAttributeAsNumber(param1,"origin-x",0.5);
         var _loc3_:Number = XMLUtils.getAttributeAsNumber(param1,"origin-y",0.5);
         var _loc4_:Number = XMLUtils.getAttributeAsNumber(param1,"scale",1);
         return new §break catch import§(_loc5_,_loc2_,_loc3_,_loc4_);
      }
   }
}

