.class public Lorg/codehaus/jackson/map/deser/BeanDeserializer;
.super Lorg/codehaus/jackson/map/deser/StdDeserializer;
.source "BeanDeserializer.java"

# interfaces
.implements Lorg/codehaus/jackson/map/ResolvableDeserializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/deser/BeanDeserializer$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/StdDeserializer",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/codehaus/jackson/map/ResolvableDeserializer;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonCachable;
.end annotation


# instance fields
.field protected final _anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

.field protected final _backRefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected final _beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

.field protected final _beanType:Lorg/codehaus/jackson/type/JavaType;

.field protected final _defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

.field protected final _forClass:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

.field protected final _ignorableProps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _ignoreAllUnknown:Z

.field protected final _numberCreator:Lorg/codehaus/jackson/map/deser/Creator$NumberBased;

.field protected final _property:Lorg/codehaus/jackson/map/BeanProperty;

.field protected final _propertyBasedCreator:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

.field protected final _stringCreator:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

.field protected _subDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    .prologue
    .line 212
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    .line 213
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .line 214
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    .line 215
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    .line 216
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    .line 217
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_backRefs:Ljava/util/Map;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_backRefs:Ljava/util/Map;

    .line 218
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    .line 219
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignoreAllUnknown:Z

    iput-boolean v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignoreAllUnknown:Z

    .line 220
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    .line 223
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_defaultConstructor:Ljava/lang/reflect/Constructor;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 224
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_stringCreator:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_stringCreator:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    .line 225
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_numberCreator:Lorg/codehaus/jackson/map/deser/Creator$NumberBased;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_numberCreator:Lorg/codehaus/jackson/map/deser/Creator$NumberBased;

    .line 226
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    .line 227
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    .line 228
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/deser/CreatorContainer;Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLorg/codehaus/jackson/map/deser/SettableAnyProperty;)V
    .locals 1
    .param p1, "forClass"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .param p4, "creators"    # Lorg/codehaus/jackson/map/deser/CreatorContainer;
    .param p5, "properties"    # Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;
    .param p8, "ignoreAllUnknown"    # Z
    .param p9, "anySetter"    # Lorg/codehaus/jackson/map/deser/SettableAnyProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/deser/CreatorContainer;",
            "Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/codehaus/jackson/map/deser/SettableAnyProperty;",
            ")V"
        }
    .end annotation

    .prologue
    .line 171
    .local p6, "backRefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;>;"
    .local p7, "ignorableProps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lorg/codehaus/jackson/map/deser/StdDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    .line 172
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .line 173
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    .line 174
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    .line 175
    iput-object p5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    .line 176
    iput-object p6, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_backRefs:Ljava/util/Map;

    .line 177
    iput-object p7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    .line 178
    iput-boolean p8, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignoreAllUnknown:Z

    .line 179
    iput-object p9, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    .line 182
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->stringCreator()Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_stringCreator:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    .line 183
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->numberCreator()Lorg/codehaus/jackson/map/deser/Creator$NumberBased;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_numberCreator:Lorg/codehaus/jackson/map/deser/Creator$NumberBased;

    .line 190
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->delegatingCreator()Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    .line 191
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->propertyBasedCreator()Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    .line 196
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->getDefaultConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_defaultConstructor:Ljava/lang/reflect/Constructor;

    goto :goto_0
.end method


# virtual methods
.method protected final _deserializeUsingPropertyBased(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 12
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 581
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    .line 582
    .local v2, "creator":Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;
    invoke-virtual {v2, p1, p2}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->startBuilding(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;

    move-result-object v1

    .line 585
    .local v1, "buffer":Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;
    const/4 v7, 0x0

    .line 587
    .local v7, "unknown":Lorg/codehaus/jackson/util/TokenBuffer;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v6

    .line 588
    .local v6, "t":Lorg/codehaus/jackson/JsonToken;
    :goto_0
    sget-object v10, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v6, v10, :cond_9

    .line 589
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v5

    .line 590
    .local v5, "propName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 592
    invoke-virtual {v2, v5}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->findCreatorProperty(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v4

    .line 593
    .local v4, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v4, :cond_4

    .line 595
    invoke-virtual {v4, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v8

    .line 596
    .local v8, "value":Ljava/lang/Object;
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v10

    invoke-virtual {v1, v10, v8}, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 597
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 600
    :try_start_0
    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->build(Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 606
    .local v0, "bean":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    iget-object v10, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v10}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v10

    if-eq v9, v10, :cond_2

    .line 607
    invoke-virtual {p0, p1, p2, v0, v7}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handlePolymorphic(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 659
    .end local v0    # "bean":Ljava/lang/Object;
    .end local v4    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v5    # "propName":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v0

    .line 601
    .restart local v4    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .restart local v5    # "propName":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 602
    .local v3, "e":Ljava/lang/Exception;
    iget-object v10, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v10}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {p0, v3, v10, v5, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    .line 588
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v6

    goto :goto_0

    .line 609
    .restart local v0    # "bean":Ljava/lang/Object;
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_2
    if-eqz v7, :cond_3

    .line 610
    invoke-virtual {p0, p2, v0, v7}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperties(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 613
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 618
    .end local v0    # "bean":Ljava/lang/Object;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_4
    iget-object v10, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v10, v5}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v4

    .line 619
    if-eqz v4, :cond_5

    .line 620
    invoke-virtual {v4, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v4, v10}, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->bufferProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/Object;)V

    goto :goto_2

    .line 626
    :cond_5
    iget-object v10, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v10, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 627
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_2

    .line 631
    :cond_6
    iget-object v10, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v10, :cond_7

    .line 632
    iget-object v10, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    iget-object v11, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v11, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v10, v5, v11}, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->bufferAnyProperty(Lorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 636
    :cond_7
    if-nez v7, :cond_8

    .line 637
    new-instance v7, Lorg/codehaus/jackson/util/TokenBuffer;

    .end local v7    # "unknown":Lorg/codehaus/jackson/util/TokenBuffer;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 639
    .restart local v7    # "unknown":Lorg/codehaus/jackson/util/TokenBuffer;
    :cond_8
    invoke-virtual {v7, v5}, Lorg/codehaus/jackson/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v7, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    goto :goto_2

    .line 646
    .end local v4    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v5    # "propName":Ljava/lang/String;
    :cond_9
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->build(Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 651
    .restart local v0    # "bean":Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 653
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    iget-object v11, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v11}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v11

    if-eq v10, v11, :cond_a

    .line 654
    invoke-virtual {p0, v9, p2, v0, v7}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handlePolymorphic(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 647
    .end local v0    # "bean":Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 648
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v3, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lorg/codehaus/jackson/map/DeserializationContext;)V

    move-object v0, v9

    .line 649
    goto :goto_1

    .line 657
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "bean":Ljava/lang/Object;
    :cond_a
    invoke-virtual {p0, p2, v0, v7}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperties(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method protected _findSubclassDeserializer(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 7
    .param p1, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "unknownTokens"    # Lorg/codehaus/jackson/util/TokenBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            "Ljava/lang/Object;",
            "Lorg/codehaus/jackson/util/TokenBuffer;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 766
    monitor-enter p0

    .line 767
    :try_start_0
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    if-nez v4, :cond_0

    const/4 v1, 0x0

    .line 768
    .local v1, "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_0
    monitor-exit p0

    .line 769
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 790
    .end local v1    # "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .local v2, "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_1
    return-object v2

    .line 767
    .end local v2    # "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_0
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    new-instance v5, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/JsonDeserializer;

    move-object v1, v4

    goto :goto_0

    .line 768
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 773
    .restart local v1    # "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationContext;->getDeserializerProvider()Lorg/codehaus/jackson/map/DeserializerProvider;

    move-result-object v0

    .line 774
    .local v0, "deserProv":Lorg/codehaus/jackson/map/DeserializerProvider;
    if-eqz v0, :cond_3

    .line 775
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/map/DeserializationContext;->constructType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 779
    .local v3, "type":Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationContext;->getConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v4

    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {v0, v4, v3, v5}, Lorg/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 781
    if-eqz v1, :cond_3

    .line 782
    monitor-enter p0

    .line 783
    :try_start_1
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    if-nez v4, :cond_2

    .line 784
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    .line 786
    :cond_2
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    new-instance v5, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    monitor-exit p0

    .end local v3    # "type":Lorg/codehaus/jackson/type/JavaType;
    :cond_3
    move-object v2, v1

    .line 790
    .end local v1    # "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .restart local v2    # "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    goto :goto_1

    .line 787
    .end local v2    # "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .restart local v1    # "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .restart local v3    # "type":Lorg/codehaus/jackson/type/JavaType;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4
.end method

.method protected constructDefaultInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 804
    :try_start_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_defaultConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 807
    :goto_0
    return-object v1

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->unwrapAndThrowAsIAE(Ljava/lang/Throwable;)V

    .line 807
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 348
    .local v0, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 349
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 350
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 368
    :goto_0
    return-object v1

    .line 353
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/map/deser/BeanDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 370
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->getBeanClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 355
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromString(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 358
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromNumber(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 360
    :pswitch_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 365
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeUsingCreator(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 368
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 384
    .local v3, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_0

    .line 385
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 387
    :cond_0
    :goto_0
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_4

    .line 388
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "propName":Ljava/lang/String;
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v4, v2}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    .line 390
    .local v1, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 392
    if-eqz v1, :cond_1

    .line 394
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, p3, v2, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_1

    .line 403
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 404
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    .line 407
    :cond_2
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v4, :cond_3

    .line 408
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v4, p1, p2, p3, v2}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 412
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 414
    .end local v1    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v2    # "propName":Ljava/lang/String;
    :cond_4
    return-object p3
.end method

.method public deserializeFromNumber(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_numberCreator:Lorg/codehaus/jackson/map/deser/Creator$NumberBased;

    if-eqz v0, :cond_0

    .line 542
    sget-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 549
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 544
    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_numberCreator:Lorg/codehaus/jackson/map/deser/Creator$NumberBased;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->construct(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 546
    :pswitch_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_numberCreator:Lorg/codehaus/jackson/map/deser/Creator$NumberBased;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->construct(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 552
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "no suitable creator method found to deserialize from JSON Number"

    invoke-virtual {p2, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public deserializeFromObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 6
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 469
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_defaultConstructor:Ljava/lang/reflect/Constructor;

    if-nez v4, :cond_4

    .line 471
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    if-eqz v4, :cond_1

    .line 472
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_deserializeUsingPropertyBased(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 517
    :cond_0
    :goto_0
    return-object v0

    .line 475
    :cond_1
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    if-eqz v4, :cond_2

    .line 476
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    invoke-virtual {v4, p1, p2}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 479
    :cond_2
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v4}, Lorg/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 480
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not instantiate abstract type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (need to add/enable type information?)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v4

    throw v4

    .line 483
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No suitable constructor found for type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": can not instantiate from JSON object (need to add/enable type information?)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v4

    throw v4

    .line 486
    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->constructDefaultInstance()Ljava/lang/Object;

    move-result-object v0

    .line 487
    .local v0, "bean":Ljava/lang/Object;
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_0

    .line 488
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, "propName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 491
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v4, v3}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v2

    .line 492
    .local v2, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v2, :cond_5

    .line 494
    :try_start_0
    invoke-virtual {v2, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 495
    :catch_0
    move-exception v1

    .line 496
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, v0, v3, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_2

    .line 503
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 504
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_2

    .line 505
    :cond_6
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v4, :cond_7

    .line 507
    :try_start_1
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v4, p1, p2, v0, v3}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 508
    :catch_1
    move-exception v1

    .line 509
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, v0, v3, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_2

    .line 514
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-virtual {p0, p1, p2, v0, v3}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public deserializeFromString(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_stringCreator:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_stringCreator:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/Creator$StringBased;->construct(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 532
    :goto_0
    return-object v0

    .line 526
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 530
    :cond_1
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getTextLength()I

    move-result v0

    if-nez v0, :cond_2

    .line 532
    const/4 v0, 0x0

    goto :goto_0

    .line 535
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "no suitable creator method found to deserialize from JSON String"

    invoke-virtual {p2, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public deserializeUsingCreator(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 558
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    if-eqz v1, :cond_0

    .line 560
    :try_start_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lorg/codehaus/jackson/map/DeserializationContext;)V

    .line 565
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->getBeanClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1
.end method

.method public deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "typeDeserializer"    # Lorg/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public findBackReference(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1
    .param p1, "logicalName"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_backRefs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 455
    const/4 v0, 0x0

    .line 457
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_backRefs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    goto :goto_0
.end method

.method public final getBeanClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->size()I

    move-result v0

    return v0
.end method

.method public getValueType()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method protected handlePolymorphic(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;
    .locals 3
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "unknownTokens"    # Lorg/codehaus/jackson/util/TokenBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 730
    invoke-virtual {p0, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_findSubclassDeserializer(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    .line 731
    .local v2, "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v2, :cond_2

    .line 732
    if-eqz p4, :cond_0

    .line 734
    invoke-virtual {p4}, Lorg/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    .line 735
    invoke-virtual {p4}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser()Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 736
    .local v1, "p2":Lorg/codehaus/jackson/JsonParser;
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 737
    invoke-virtual {v2, v1, p2, p3}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 740
    .end local v1    # "p2":Lorg/codehaus/jackson/JsonParser;
    :cond_0
    if-eqz p1, :cond_1

    .line 741
    invoke-virtual {v2, p1, p2, p3}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_1
    move-object v0, p3

    .line 753
    .end local p3    # "bean":Ljava/lang/Object;
    .local v0, "bean":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 746
    .end local v0    # "bean":Ljava/lang/Object;
    .restart local p3    # "bean":Ljava/lang/Object;
    :cond_2
    if-eqz p4, :cond_3

    .line 747
    invoke-virtual {p0, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperties(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object p3

    .line 750
    :cond_3
    if-eqz p1, :cond_4

    .line 751
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_4
    move-object v0, p3

    .line 753
    .end local p3    # "bean":Ljava/lang/Object;
    .restart local v0    # "bean":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected handleUnknownProperties(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;
    .locals 4
    .param p1, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "unknownTokens"    # Lorg/codehaus/jackson/util/TokenBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 701
    invoke-virtual {p3}, Lorg/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    .line 704
    invoke-virtual {p3}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser()Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 705
    .local v0, "bufferParser":Lorg/codehaus/jackson/JsonParser;
    :goto_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_0

    .line 706
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 708
    .local v1, "propName":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 709
    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 711
    .end local v1    # "propName":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method protected handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "beanOrClass"    # Ljava/lang/Object;
    .param p4, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 681
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignoreAllUnknown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    .line 690
    :goto_0
    return-void

    .line 689
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/StdDeserializer;->handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public properties()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only call before BeanDeserializer has been resolved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->allProperties()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;)V
    .locals 20
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "provider"    # Lorg/codehaus/jackson/map/DeserializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->allProperties()Ljava/util/Iterator;

    move-result-object v14

    .line 264
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codehaus/jackson/map/deser/SettableBeanProperty;>;"
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 265
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 267
    .local v6, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->hasValueDeserializer()Z

    move-result v4

    if-nez v4, :cond_1

    .line 268
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v6}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->findDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->setValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 271
    :cond_1
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getManagedReferenceName()Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "refName":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 273
    iget-object v0, v6, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    move-object/from16 v17, v0

    .line 274
    .local v17, "valueDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    const/4 v7, 0x0

    .line 275
    .local v7, "backProp":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    const/4 v9, 0x0

    .line 276
    .local v9, "isContainer":Z
    move-object/from16 v0, v17

    instance-of v4, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    if-eqz v4, :cond_2

    .line 277
    check-cast v17, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    .end local v17    # "valueDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->findBackReference(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v7

    .line 294
    :goto_1
    if-nez v7, :cond_6

    .line 295
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Can not handle managed/back reference \'"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v18, "\': no back reference property found from type "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 278
    .restart local v17    # "valueDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :cond_2
    move-object/from16 v0, v17

    instance-of v4, v0, Lorg/codehaus/jackson/map/deser/ContainerDeserializer;

    if-eqz v4, :cond_4

    .line 279
    check-cast v17, Lorg/codehaus/jackson/map/deser/ContainerDeserializer;

    .end local v17    # "valueDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/deser/ContainerDeserializer;->getContentDeserializer()Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v11

    .line 280
    .local v11, "contentDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    instance-of v4, v11, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    if-nez v4, :cond_3

    .line 281
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Can not handle managed/back reference \'"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v18, "\': value deserializer is of type ContainerDeserializer, but content type is not handled by a BeanDeserializer "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v18, " (instead it\'s of type "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v18, ")"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 285
    :cond_3
    check-cast v11, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    .end local v11    # "contentDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    invoke-virtual {v11, v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->findBackReference(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v7

    .line 286
    const/4 v9, 0x1

    .line 287
    goto/16 :goto_1

    .restart local v17    # "valueDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :cond_4
    move-object/from16 v0, v17

    instance-of v4, v0, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;

    if-eqz v4, :cond_5

    .line 288
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Can not handle managed/back reference for abstract types (property "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v18, "."

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v18, ")"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 290
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Can not handle managed/back reference \'"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v18, "\': type for value deserializer is not BeanDeserializer or ContainerDeserializer, but "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 299
    .end local v17    # "valueDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    move-object/from16 v16, v0

    .line 300
    .local v16, "referredType":Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {v7}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v10

    .line 301
    .local v10, "backRefType":Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {v10}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 302
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Can not handle managed/back reference \'"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v18, "\': back reference type ("

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v10}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v18, ") not compatible with managed type ("

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v18, ")"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 306
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    move-object/from16 v18, v0

    new-instance v4, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v8}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v8

    invoke-direct/range {v4 .. v9}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/util/Annotations;Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->replace(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto/16 :goto_0

    .line 312
    .end local v5    # "refName":Ljava/lang/String;
    .end local v6    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v7    # "backProp":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v9    # "isContainer":Z
    .end local v10    # "backRefType":Lorg/codehaus/jackson/type/JavaType;
    .end local v16    # "referredType":Lorg/codehaus/jackson/type/JavaType;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->hasValueDeserializer()Z

    move-result v4

    if-nez v4, :cond_9

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v8}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->getProperty()Lorg/codehaus/jackson/map/BeanProperty;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v8, v3}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->findDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->setValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 317
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    if-eqz v4, :cond_a

    .line 319
    new-instance v15, Lorg/codehaus/jackson/map/BeanProperty$Std;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    invoke-virtual {v8}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->getValueType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->getCreator()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v15, v4, v8, v0, v1}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 321
    .local v15, "property":Lorg/codehaus/jackson/map/BeanProperty$Std;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->getValueType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v15}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->findDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v12

    .line 322
    .local v12, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    invoke-virtual {v4, v12}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->setDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 325
    .end local v12    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .end local v15    # "property":Lorg/codehaus/jackson/map/BeanProperty$Std;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    if-eqz v4, :cond_c

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->properties()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 327
    .restart local v6    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->hasValueDeserializer()Z

    move-result v4

    if-nez v4, :cond_b

    .line 328
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v6}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->findDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->setValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)V

    goto :goto_2

    .line 332
    .end local v6    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_c
    return-void
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 923
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;ILorg/codehaus/jackson/map/DeserializationContext;)V

    .line 924
    return-void
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;ILorg/codehaus/jackson/map/DeserializationContext;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .param p4, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 862
    :goto_0
    instance-of v1, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 863
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 866
    :cond_0
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 867
    check-cast p1, Ljava/lang/Error;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 869
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_1
    if-eqz p4, :cond_2

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->WRAP_EXCEPTIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p4, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 871
    .local v0, "wrap":Z
    :goto_1
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 872
    if-eqz v0, :cond_3

    instance-of v1, p1, Lorg/codehaus/jackson/map/JsonMappingException;

    if-nez v1, :cond_6

    .line 873
    :cond_3
    check-cast p1, Ljava/io/IOException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 869
    .end local v0    # "wrap":Z
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 875
    .restart local v0    # "wrap":Z
    :cond_5
    if-nez v0, :cond_6

    .line 876
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 877
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 881
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_6
    invoke-static {p1, p2, p3}, Lorg/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 913
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    .line 914
    return-void
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;
    .param p4, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 837
    :goto_0
    instance-of v1, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 838
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 841
    :cond_0
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 842
    check-cast p1, Ljava/lang/Error;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 844
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_1
    if-eqz p4, :cond_2

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->WRAP_EXCEPTIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p4, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 846
    .local v0, "wrap":Z
    :goto_1
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 847
    if-eqz v0, :cond_3

    instance-of v1, p1, Lorg/codehaus/jackson/map/JsonMappingException;

    if-nez v1, :cond_6

    .line 848
    :cond_3
    check-cast p1, Ljava/io/IOException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 844
    .end local v0    # "wrap":Z
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 850
    .restart local v0    # "wrap":Z
    :cond_5
    if-nez v0, :cond_6

    .line 851
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 852
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 856
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_6
    invoke-static {p1, p2, p3}, Lorg/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1
.end method

.method protected wrapInstantiationProblem(Ljava/lang/Throwable;Lorg/codehaus/jackson/map/DeserializationContext;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 887
    :goto_0
    instance-of v1, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 888
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 891
    :cond_0
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 892
    check-cast p1, Ljava/lang/Error;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 894
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_1
    if-eqz p2, :cond_2

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->WRAP_EXCEPTIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 895
    .local v0, "wrap":Z
    :goto_1
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_4

    .line 897
    check-cast p1, Ljava/io/IOException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 894
    .end local v0    # "wrap":Z
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 898
    .restart local v0    # "wrap":Z
    :cond_4
    if-nez v0, :cond_5

    .line 899
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_5

    .line 900
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 903
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_5
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lorg/codehaus/jackson/map/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1
.end method
