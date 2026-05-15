package §finally package catch§
{
   public class §5214234253234266123423632234§
   {
      
      public var §extends set case§:String;
      
      public var §null set get§:Vector.<§5214234227234240123423632234§>;
      
      public var §5214232349232362123423632234§:Vector.<§5214234253234266123423632234§>;
      
      public function §5214234253234266123423632234§(param1:String)
      {
         super();
         this.§extends set case§ = param1;
      }
      
      public function §native var class§(param1:String) : §5214234227234240123423632234§
      {
         if(this.§null set get§ == null)
         {
            return null;
         }
         for each(var _loc2_ in this.§null set get§)
         {
            if(_loc2_.§extends set case§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §each package static§(param1:§5214234253234266123423632234§) : void
      {
         if(this.§5214232349232362123423632234§ == null)
         {
            this.§5214232349232362123423632234§ = new Vector.<§5214234253234266123423632234§>();
         }
         this.§5214232349232362123423632234§[§5214232349232362123423632234§.length] = param1;
      }
      
      public function §for use finally§(param1:§5214234227234240123423632234§) : void
      {
         if(this.§null set get§ == null)
         {
            this.§null set get§ = new Vector.<§5214234227234240123423632234§>();
         }
         this.§null set get§[§null set get§.length] = param1;
      }
      
      public function §override package get§(param1:String) : §5214234253234266123423632234§
      {
         if(this.§5214232349232362123423632234§ == null)
         {
            return null;
         }
         for each(var _loc2_ in this.§5214232349232362123423632234§)
         {
            if(_loc2_.§extends set case§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §true finally var§() : void
      {
         trace("=== Group " + this.§extends set case§ + " ===");
         if(this.§5214232349232362123423632234§ != null)
         {
            for each(var _loc2_ in this.§5214232349232362123423632234§)
            {
               _loc2_.§true finally var§();
            }
         }
         if(this.§null set get§ != null)
         {
            for each(var _loc1_ in this.§null set get§)
            {
               _loc1_.§import catch case§();
            }
         }
      }
   }
}

