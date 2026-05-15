package org.swiftsuspenders
{
   import §521423131932313206123423632234§.§521423102652310278123423632234§;
   import §521423131932313206123423632234§.§class switch do§;
   import §521423131932313206123423632234§.§native const function§;
   import §521423131932313206123423632234§.§package const native§;
   import flash.system.ApplicationDomain;
   import flash.utils.Dictionary;
   import flash.utils.describeType;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import org.swiftsuspenders.injectionpoints.§5214232367232380123423632234§;
   import org.swiftsuspenders.injectionpoints.ConstructorInjectionPoint;
   import org.swiftsuspenders.injectionpoints.MethodInjectionPoint;
   import org.swiftsuspenders.injectionpoints.PostConstructInjectionPoint;
   import org.swiftsuspenders.injectionpoints.PropertyInjectionPoint;
   import org.swiftsuspenders.injectionpoints.§try var true§;
   
   public class Injector
   {
      
      private static var §break const static§:Dictionary = new Dictionary(true);
      
      private var §final set continue§:Injector;
      
      private var §521423110822311095123423632234§:ApplicationDomain;
      
      private var §5214239865239878123423632234§:Dictionary;
      
      private var §5214239825239838123423632234§:Dictionary;
      
      private var §521423119862311999123423632234§:Dictionary;
      
      private var §do const true§:XML;
      
      public function Injector(param1:XML = null)
      {
         super();
         this.§5214239865239878123423632234§ = new Dictionary();
         if(param1 != null)
         {
            this.§5214239825239838123423632234§ = new Dictionary(true);
         }
         else
         {
            this.§5214239825239838123423632234§ = §break const static§;
         }
         this.§521423119862311999123423632234§ = new Dictionary(true);
         this.§do const true§ = param1;
      }
      
      public static function §521423134382313451123423632234§() : void
      {
         §break const static§ = new Dictionary(true);
      }
      
      public function §for var while§(param1:Class, param2:Object, param3:String = "") : *
      {
         var _loc4_:§521423139362313949123423632234§ = this.§else set try§(param1,param3);
         _loc4_.setResult(new §class switch do§(param2));
         return _loc4_;
      }
      
      public function §super var const§(param1:Class, param2:Class, param3:String = "") : *
      {
         var _loc4_:§521423139362313949123423632234§ = this.§else set try§(param1,param3);
         _loc4_.setResult(new §521423102652310278123423632234§(param2));
         return _loc4_;
      }
      
      public function §continue set continue§(param1:Class, param2:String = "") : *
      {
         return this.§5214235661235674123423632234§(param1,param1,param2);
      }
      
      public function §5214235661235674123423632234§(param1:Class, param2:Class, param3:String = "") : *
      {
         var _loc4_:§521423139362313949123423632234§ = this.§else set try§(param1,param3);
         _loc4_.setResult(new §native const function§(param2));
         return _loc4_;
      }
      
      public function §5214233920233933123423632234§(param1:Class, param2:*, param3:String = "") : *
      {
         var _loc4_:§521423139362313949123423632234§ = this.§else set try§(param1,param3);
         _loc4_.setResult(new §package const native§(param2));
         return param2;
      }
      
      public function §else set try§(param1:Class, param2:String = "") : §521423139362313949123423632234§
      {
         var _loc3_:String = getQualifiedClassName(param1);
         var _loc4_:§521423139362313949123423632234§ = this.§5214239865239878123423632234§[_loc3_ + "#" + param2];
         if(!_loc4_)
         {
            _loc4_ = this.§5214239865239878123423632234§[_loc3_ + "#" + param2] = new §521423139362313949123423632234§(param1,param2);
         }
         return _loc4_;
      }
      
      public function §521423132622313275123423632234§(param1:Object) : void
      {
         var _loc7_:§5214232367232380123423632234§ = null;
         if(this.§521423119862311999123423632234§[param1])
         {
            return;
         }
         this.§521423119862311999123423632234§[param1] = true;
         var _loc2_:Class = getConstructor(param1);
         var _loc3_:InjecteeDescription = this.§5214239825239838123423632234§[_loc2_] || this.set(_loc2_);
         var _loc4_:Array = _loc3_.injectionPoints;
         var _loc5_:int = int(_loc4_.length);
         var _loc6_:* = 0;
         while(_loc6_ < _loc5_)
         {
            _loc7_ = _loc4_[_loc6_];
            _loc7_.applyInjection(param1,this);
            _loc6_++;
         }
      }
      
      public function §5214231940231953123423632234§(param1:Class) : *
      {
         var _loc2_:InjecteeDescription = this.§5214239825239838123423632234§[param1];
         if(!_loc2_)
         {
            _loc2_ = this.set(param1);
         }
         var _loc3_:§5214232367232380123423632234§ = _loc2_.ctor;
         var _loc4_:* = _loc3_.applyInjection(param1,this);
         this.§521423132622313275123423632234§(_loc4_);
         return _loc4_;
      }
      
      public function §5214232846232859123423632234§(param1:Class, param2:String = "") : void
      {
         var _loc3_:§521423139362313949123423632234§ = this.§catch var use§(param1,param2);
         if(!_loc3_)
         {
            throw new §5214237680237693123423632234§("Error while removing an injector mapping: " + "No mapping defined for class " + getQualifiedClassName(param1) + ", named \"" + param2 + "\"");
         }
         _loc3_.setResult(null);
      }
      
      public function §false catch include§(param1:Class, param2:String = "") : Boolean
      {
         var _loc3_:§521423139362313949123423632234§ = this.§catch var use§(param1,param2);
         if(!_loc3_)
         {
            return false;
         }
         return _loc3_.§while catch class§(this);
      }
      
      public function getInstance(param1:Class, param2:String = "") : *
      {
         var _loc3_:§521423139362313949123423632234§ = this.§catch var use§(param1,param2);
         if(!_loc3_ || !_loc3_.§while catch class§(this))
         {
            throw new §5214237680237693123423632234§("Error while getting mapping response: " + "No mapping defined for class " + getQualifiedClassName(param1) + ", named \"" + param2 + "\"");
         }
         return _loc3_.§in package throw§(this);
      }
      
      public function §each use dynamic§(param1:ApplicationDomain = null) : Injector
      {
         var _loc2_:Injector = new Injector();
         _loc2_.§false case§(param1);
         _loc2_.§52142312923142123423632234§(this);
         return _loc2_;
      }
      
      public function §false case§(param1:ApplicationDomain) : void
      {
         this.§521423110822311095123423632234§ = param1;
      }
      
      public function §with const switch§() : ApplicationDomain
      {
         return this.§521423110822311095123423632234§ ? this.§521423110822311095123423632234§ : ApplicationDomain.currentDomain;
      }
      
      public function §52142312923142123423632234§(param1:Injector) : void
      {
         if(Boolean(this.§final set continue§) && !param1)
         {
            this.§521423119862311999123423632234§ = new Dictionary(true);
         }
         this.§final set continue§ = param1;
         if(param1)
         {
            this.§521423119862311999123423632234§ = param1.§implements var continue§;
         }
      }
      
      public function §while catch while§() : Injector
      {
         return this.§final set continue§;
      }
      
      internal function §default const throw§(param1:Class, param2:String = null) : §521423139362313949123423632234§
      {
         var _loc4_:§521423139362313949123423632234§ = null;
         var _loc3_:Injector = this.§final set continue§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§catch var use§(param1,param2,false);
            if((Boolean(_loc4_)) && _loc4_.§native var in§())
            {
               return _loc4_;
            }
            _loc3_ = _loc3_.§while catch while§();
         }
         return null;
      }
      
      internal function get §implements var continue§() : Dictionary
      {
         return this.§521423119862311999123423632234§;
      }
      
      private function set(param1:Class) : InjecteeDescription
      {
         var injectionPoints:Array;
         var injecteeDescription:InjecteeDescription;
         var node:XML = null;
         var ctorInjectionPoint:§5214232367232380123423632234§ = null;
         var injectionPoint:§5214232367232380123423632234§ = null;
         var postConstructMethodPoints:Array = null;
         var clazz:Class = param1;
         var description:XML = describeType(clazz);
         if(description.@name != "Object" && description.factory.extendsClass.length() == 0)
         {
            throw new §5214237680237693123423632234§("Interfaces can\'t be used as instantiatable classes.");
         }
         injectionPoints = [];
         if(this.§do const true§)
         {
            this.§function var each§(description);
            this.§5214233260233273123423632234§(description,injectionPoints);
         }
         node = description.factory.constructor[0];
         if(node)
         {
            ctorInjectionPoint = new ConstructorInjectionPoint(node,clazz,this);
         }
         else
         {
            ctorInjectionPoint = new §try var true§();
         }
         for each(node in description.factory.*.(name() == "variable" || name() == "accessor").metadata.(@name == "Inject"))
         {
            injectionPoint = new PropertyInjectionPoint(node);
            injectionPoints.push(injectionPoint);
         }
         for each(node in description.factory.method.metadata.(@name == "Inject"))
         {
            injectionPoint = new MethodInjectionPoint(node,this);
            injectionPoints.push(injectionPoint);
         }
         postConstructMethodPoints = [];
         for each(node in description.factory.method.metadata.(@name == "PostConstruct"))
         {
            injectionPoint = new PostConstructInjectionPoint(node,this);
            postConstructMethodPoints.push(injectionPoint);
         }
         if(postConstructMethodPoints.length > 0)
         {
            postConstructMethodPoints.sortOn("order",Array.NUMERIC);
            injectionPoints.push.apply(injectionPoints,postConstructMethodPoints);
         }
         injecteeDescription = new InjecteeDescription(ctorInjectionPoint,injectionPoints);
         this.§5214239825239838123423632234§[clazz] = injecteeDescription;
         return injecteeDescription;
      }
      
      private function §catch var use§(param1:Class, param2:String, param3:Boolean = true) : §521423139362313949123423632234§
      {
         var _loc4_:String = getQualifiedClassName(param1);
         var _loc5_:§521423139362313949123423632234§ = this.§5214239865239878123423632234§[_loc4_ + "#" + param2];
         if(Boolean(!_loc5_ && param3) && Boolean(this.§final set continue§) && this.§final set continue§.§false catch include§(param1,param2))
         {
            _loc5_ = this.§default const throw§(param1,param2);
         }
         return _loc5_;
      }
      
      private function §function var each§(param1:XML) : void
      {
         var node:XML = null;
         var className:String = null;
         var metaNode:XML = null;
         var typeNode:XML = null;
         var arg:XML = null;
         var description:XML = param1;
         for each(node in description..metadata.(@name == "Inject" || @name == "PostConstruct"))
         {
            delete node.parent().metadata.(@name == "Inject" || @name == "PostConstruct")[0];
         }
         className = description.factory.@type;
         for each(node in this.§do const true§.type.(@name == className).children())
         {
            metaNode = <metadata/>;
            if(node.name() == "postconstruct")
            {
               metaNode.@name = "PostConstruct";
               if(node.@order.length())
               {
                  metaNode.appendChild(<arg key='order' value={node.@order}/>);
               }
            }
            else
            {
               metaNode.@name = "Inject";
               if(node.@injectionname.length())
               {
                  metaNode.appendChild(<arg key='name' value={node.@injectionname}/>);
               }
               for each(arg in node.arg)
               {
                  metaNode.appendChild(<arg key='name' value={arg.@injectionname}/>);
               }
            }
            if(node.name() == "constructor")
            {
               typeNode = description.factory[0];
            }
            else
            {
               typeNode = description.factory.*.(attribute("name") == node.@name)[0];
               if(!typeNode)
               {
                  throw new §5214237680237693123423632234§("Error in XML configuration: Class \"" + className + "\" doesn\'t contain the instance member \"" + node.@name + "\"");
               }
            }
            typeNode.appendChild(metaNode);
         }
      }
      
      private function §5214233260233273123423632234§(param1:XML, param2:Array) : void
      {
         var _loc3_:String = param1.factory.extendsClass.@type[0];
         if(!_loc3_)
         {
            return;
         }
         var _loc4_:Class = Class(getDefinitionByName(_loc3_));
         var _loc5_:InjecteeDescription = this.§5214239825239838123423632234§[_loc4_] || this.set(_loc4_);
         var _loc6_:Array = _loc5_.injectionPoints;
         param2.push.apply(param2,_loc6_);
      }
   }
}

import org.swiftsuspenders.injectionpoints.§5214232367232380123423632234§;

final class InjecteeDescription
{
   
   public var ctor:§5214232367232380123423632234§;
   
   public var injectionPoints:Array;
   
   public function InjecteeDescription(param1:§5214232367232380123423632234§, param2:Array)
   {
      super();
      this.ctor = param1;
      this.injectionPoints = param2;
   }
}
