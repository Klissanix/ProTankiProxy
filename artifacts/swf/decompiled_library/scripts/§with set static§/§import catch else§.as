package §with set static§
{
   import §5214231074231087123423632234§.CaptchaLocation;
   import §521423113572311370123423632234§.§5214231488231501123423632234§;
   import §521423117022311715123423632234§.§5214231668231681123423632234§;
   import §521423120812312094123423632234§.§5214234120234133123423632234§;
   import §5214233111233124123423632234§.§for switch else§;
   import §5214233465233478123423632234§.§521423108302310843123423632234§;
   import §5214235638235651123423632234§.§52142313623149123423632234§;
   import §5214236611236624123423632234§.§521423139592313972123423632234§;
   import §521423832396123423632234§.§5214234734234747123423632234§;
   import §521423832396123423632234§.§5214238194238207123423632234§;
   import §5214239273239286123423632234§.*;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import §const use implements§.§dynamic include§;
   import §do package if§.ItemCategoryEnum;
   import §do package if§.ItemViewCategoryEnum;
   import §each var do§.§521423127822312795123423632234§;
   import §extends var import§.§5214231658231671123423632234§;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import projects.tanks.client.battleselect.model.item.BattleSuspicionLevel;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import scpacker.networking.Network;
   import scpacker.networking.protocol.codec.*;
   import scpacker.networking.protocol.codec.complex.ByteArrayCodec;
   import scpacker.networking.protocol.codec.custom.*;
   import scpacker.networking.protocol.codec.primitive.*;
   import §static set§.§521423113842311397123423632234§;
   import §switch catch extends§.§5214234111234124123423632234§;
   
   public class §import catch else§
   {
      
      private var §52142393923952123423632234§:Dictionary = new Dictionary();
      
      private var §super use throw§:§native finally switch§ = new §5214237415237428123423632234§();
      
      public function §import catch else§()
      {
         super();
         this.§else catch false§(new BooleanCodec());
         this.§else catch false§(new ByteCodec());
         this.§else catch false§(new VectorCodecByte());
         this.§else catch false§(new FloatCodec());
         this.§else catch false§(new IntCodec());
         this.§else catch false§(new DoubleCodec());
         this.§else catch false§(new ShortCodec());
         this.§else catch false§(new StringCodec());
         this.§else catch false§(new LongCodec());
         this.§else catch false§(new ByteArrayCodec());
         this.§else catch false§(new Codecz511d68(this));
         this.§else catch false§(new Codecp3hb0i0(this));
         this.§else catch false§(new Codecp2729f5(this));
      }
      
      public function §use try§(param1:Vector.<int>) : void
      {
         this.§super use throw§ = new §521423114302311443123423632234§(param1);
         var _loc2_:OSGi = OSGi.getInstance();
         var _loc3_:Network = Network(_loc2_.getService(Network));
         _loc3_.send(new §5214231488231501123423632234§(ILocaleService(_loc2_.getService(ILocaleService)).language));
      }
      
      private function §else catch false§(param1:§5214239886239899123423632234§) : void
      {
         this.§52142393923952123423632234§[getQualifiedClassName(param1).replace("::",".")] = param1;
      }
      
      public function §5214233820233833123423632234§() : void
      {
         this.§super use throw§ = new §5214237415237428123423632234§();
      }
      
      public function init() : void
      {
         this.§else catch false§(new ResourceGetterCodec(this,ResourceRegistry(OSGi.getInstance().getService(ResourceRegistry))));
         this.§52142385323866123423632234§("CaptchaLocationCodec",CaptchaLocation);
         this.§else catch false§(new Codecp6ffji6(this));
         this.§else catch false§(new Codecm6ha277(this));
         this.§else catch false§(new Codeco7d8f2(this));
         this.§52142385323866123423632234§("CodecLayoutState",LayoutState);
         this.§else catch false§(new Codech52j8h4(this));
         this.§52142385323866123423632234§("CodecBattleMode",§dynamic include§);
         this.§else catch false§(new Codeco26933b(this));
         this.§else catch false§(new CodecD1h4gif(this));
         this.§else catch false§(new Codect398g8c(this));
         this.§else catch false§(new Codect2f9cgh(this));
         this.§else catch false§(new Codect6h8j37(this));
         this.§else catch false§(new Codeco661999(this));
         this.§else catch false§(new Codect63ja32(this));
         this.§else catch false§(new Codecz10fad6(this));
         this.§else catch false§(new Codech515220(this));
         this.§else catch false§(new Codechh2af2(this));
         this.§else catch false§(new Codece64h11(this));
         this.§else catch false§(new Codect4f1h5f(this));
         this.§else catch false§(new Codecu442d3i(this));
         this.§else catch false§(new Codecu65322h(this));
         this.§else catch false§(new Codece8cge9(this));
         this.§52142385323866123423632234§("CodecItemCategoryEnum",ItemCategoryEnum);
         this.§52142385323866123423632234§("CodecItemViewCategoryEnum",ItemViewCategoryEnum);
         this.§else catch false§(new Codech4b49hf(this));
         this.§52142385323866123423632234§("CodecChatModeratorLevel",§5214231668231681123423632234§);
         this.§else catch false§(new Codecl47gj41(this));
         this.§else catch false§(new Codecm2a28jd(this));
         this.§else catch false§(new Codeco370482(this));
         this.§else catch false§(new Codecu3a2jf2(this));
         this.§52142385323866123423632234§("CodecMapTheme",§521423139592313972123423632234§);
         this.§52142385323866123423632234§("CodecEquipmentConstraintsMode",§521423127822312795123423632234§);
         this.§else catch false§(new Codecc279b65(this));
         this.§52142385323866123423632234§("CodecBattleTeam",§5214231658231671123423632234§);
         this.§else catch false§(new CodecD7b5425(this));
         this.§52142385323866123423632234§("CodecValidationStatus",§52142313623149123423632234§);
         this.§else catch false§(new Codecu2bj2ia(this));
         this.§else catch false§(new Codecc5d6ej3(this));
         this.§else catch false§(new Codect348a32(this));
         this.§else catch false§(new Codect63hj89(this));
         this.§else catch false§(new Codecp70bh3h(this));
         this.§else catch false§(new Codeco56055h(this));
         this.§else catch false§(new Codecc19071g(this));
         this.§else catch false§(new Codecz4h8c53(this));
         this.§else catch false§(new Codecp514189(this));
         this.§52142385323866123423632234§("CodecDamageIndicatorType",§5214234111234124123423632234§);
         this.§else catch false§(new Codecp72448i(this));
         this.§else catch false§(new Codeco4292cg(this));
         this.§else catch false§(new Codect741312(this));
         this.§52142385323866123423632234§("CodecControlPointState",§5214234120234133123423632234§);
         this.§else catch false§(new CodecD73dfdb(this));
         this.§else catch false§(new Codecm5d39bf(this));
         this.§else catch false§(new Codect43e1bj(this));
         this.§else catch false§(new Codectijc30(this));
         this.§else catch false§(new Codect3d062b(this));
         this.§else catch false§(new Codecc539f8g(this));
         this.§else catch false§(new Codecu2047a1(this));
         this.§52142385323866123423632234§("CodecIsisState",§521423108302310843123423632234§);
         this.§else catch false§(new Codece4i1iib(this));
         this.§else catch false§(new Codech7d3d74(this));
         this.§52142385323866123423632234§("CodecAchievement",§for switch else§);
         this.§else catch false§(new Codech4h5c4g(this));
         this.§else catch false§(new Codect3cfda9(this));
         this.§else catch false§(new Codece394142(this));
         this.§else catch false§(new Codecp33fc72(this));
         this.§else catch false§(new Codecu36j031(this));
         this.§else catch false§(new Codect3c2dgd(this));
         this.§else catch false§(new Codech5i2j4a(this));
         this.§else catch false§(new Codeco346556(this));
         this.§52142385323866123423632234§("CodecBattleSuspicionLevel",BattleSuspicionLevel);
         this.§else catch false§(new CodecD78652i(this));
         this.§else catch false§(new Codecm4gf474(this));
         this.§else catch false§(new Codecn7edj0a(this));
         this.§else catch false§(new Codeco5f166f(this));
         this.§else catch false§(new Codecz378d3e(this));
         this.§else catch false§(new CodecDe20i2(this));
         this.§else catch false§(new Codecp50fgh4(this));
         this.§else catch false§(new Codect6jee42(this));
         this.§else catch false§(new Codecu730ag3(this));
         this.§52142385323866123423632234§("CodecBonusType",§521423113842311397123423632234§);
         this.§else catch false§(new Codeco7a870j(this));
         this.§else catch false§(new Codecp1fai9a(this));
         this.§else catch false§(new Codecc269ide(this));
         this.§else catch false§(new Codece71a0if(this));
         this.§52142385323866123423632234§("CodecClanAction",§5214238194238207123423632234§);
         this.§52142385323866123423632234§("CodecClanPermission",§5214234734234747123423632234§);
         this.§else catch false§(new Codech2hc4cj(this));
         this.§else catch false§(new Codecl596hh2(this));
         this.§else catch false§(new Codece70i2d5(this));
         this.§else catch false§(new Codecp65ge9d(this));
         this.§else catch false§(new Codeco509580(this));
         this.§else catch false§(new Codech5ij0i0(this));
         this.§else catch false§(new Codect7ggc18(this));
         this.§else catch false§(new Codeclfh39b(this));
         this.§else catch false§(new CodecD23ef25(this));
         this.§else catch false§(new Codectc5952(this));
      }
      
      public function §with const if§(param1:String) : §5214239886239899123423632234§
      {
         var _loc4_:String = null;
         var _loc3_:* = undefined;
         var _loc2_:§5214239886239899123423632234§ = this.§52142393923952123423632234§[param1];
         if(_loc2_ == null && param1.indexOf(".VectorCodec") != -1)
         {
            _loc4_ = param1.replace(".Vector",".");
            _loc3_ = this.§with const if§(_loc4_);
            if(_loc3_ == undefined)
            {
               _loc4_ = _loc4_.replace("Codec","") + "Codec";
               _loc3_ = this.§with const if§(_loc4_);
               if(_loc3_ == undefined)
               {
                  _loc4_ = _loc4_.replace("custom","primitive");
                  _loc3_ = this.§with const if§(_loc4_);
                  if(_loc3_ == undefined)
                  {
                     _loc3_ = this.§with const if§(_loc4_.replace("complex","primitive"));
                  }
               }
            }
            _loc2_ = new VectorCodec(_loc3_,_loc3_.element,_loc3_.optionalVector);
            this.§52142393923952123423632234§[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      private function §52142385323866123423632234§(param1:String, param2:Class) : void
      {
         this.§52142393923952123423632234§["scpacker.networking.protocol.codec.custom." + param1] = new EnumCodec(param2);
      }
      
      public function §override final§() : §native finally switch§
      {
         return this.§super use throw§;
      }
   }
}

