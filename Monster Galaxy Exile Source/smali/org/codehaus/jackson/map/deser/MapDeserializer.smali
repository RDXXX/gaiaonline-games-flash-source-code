.class public Lorg/codehaus/jackson/map/deser/MapDeserializer;
.super Lorg/codehaus/jackson/map/deser/ContainerDeserializer;
.source "MapDeserializer.java"

# interfaces
.implements Lorg/codehaus/jackson/map/ResolvableDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/ContainerDeserializer",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;",
        "Lorg/codehaus/jackson/map/ResolvableDeserializer;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# instance fields
.field protected final _defaultCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected _ignorableProperties:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _keyDeserializer:Lorg/codehaus/jackson/map/KeyDeserializer;

.field protected final _mapType:Lorg/codehaus/jackson/type/JavaType;

.field protected _propertyBasedCreator:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

.field protected final _valueDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Constructor;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;)V
    .locals 1
    .param p1, "mapType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "keyDeser"    # Lorg/codehaus/jackson/map/KeyDeserializer;
    .param p5, "valueTypeDeser"    # Lorg/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, "defCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .local p4, "valueDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    const-class v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/ContainerDeserializer;-><init>(Ljava/lang/Class;)V

    .line 78
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_mapType:Lorg/codehaus/jackson/type/JavaType;

    .line 79
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_defaultCtor:Ljava/lang/reflect/Constructor;

    .line 80
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_keyDeserializer:Lorg/codehaus/jackson/map/KeyDeserializer;

    .line 81
    iput-object p4, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_valueDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 82
    iput-object p5, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_valueTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 83
    return-void
.end method


# virtual methods
.method public _deserializeUsingCreator(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/Map;
    .locals 13
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
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
    .line 251
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    .line 252
    .local v1, "creator":Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;
    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->startBuilding(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;

    move-result-object v0

    .line 254
    .local v0, "buffer":Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    .line 255
    .local v8, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v12, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v8, v12, :cond_0

    .line 256
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    .line 258
    :cond_0
    iget-object v11, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_valueDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 259
    .local v11, "valueDes":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v9, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_valueTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 260
    .local v9, "typeDeser":Lorg/codehaus/jackson/map/TypeDeserializer;
    :goto_0
    sget-object v12, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v8, v12, :cond_7

    .line 261
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, "propName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    .line 263
    iget-object v12, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;

    invoke-virtual {v12, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 264
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    .line 260
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {v1, v6}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->findCreatorProperty(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    .line 269
    .local v5, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v5, :cond_3

    .line 271
    invoke-virtual {v5, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v10

    .line 272
    .local v10, "value":Ljava/lang/Object;
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v12

    invoke-virtual {v0, v12, v10}, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 273
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 276
    :try_start_0
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->build(Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .local v7, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, v7}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_readAndBind(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)V

    .line 305
    .end local v5    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v6    # "propName":Ljava/lang/String;
    .end local v7    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v10    # "value":Ljava/lang/Object;
    :goto_2
    return-object v7

    .line 277
    .restart local v5    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .restart local v6    # "propName":Ljava/lang/String;
    .restart local v10    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e":Ljava/lang/Exception;
    iget-object v12, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_mapType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v12}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {p0, v2, v12}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 279
    const/4 v7, 0x0

    goto :goto_2

    .line 287
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "fieldName":Ljava/lang/String;
    iget-object v12, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_keyDeserializer:Lorg/codehaus/jackson/map/KeyDeserializer;

    if-nez v12, :cond_4

    move-object v4, v3

    .line 290
    .local v4, "key":Ljava/lang/Object;
    :goto_3
    sget-object v12, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v8, v12, :cond_5

    .line 291
    const/4 v10, 0x0

    .line 297
    :goto_4
    invoke-virtual {v0, v4, v10}, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->bufferMapProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 288
    .end local v4    # "key":Ljava/lang/Object;
    :cond_4
    iget-object v12, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_keyDeserializer:Lorg/codehaus/jackson/map/KeyDeserializer;

    invoke-virtual {v12, v3, p2}, Lorg/codehaus/jackson/map/KeyDeserializer;->deserializeKey(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    .line 292
    .restart local v4    # "key":Ljava/lang/Object;
    :cond_5
    if-nez v9, :cond_6

    .line 293
    invoke-virtual {v11, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "value":Ljava/lang/Object;
    goto :goto_4

    .line 295
    .end local v10    # "value":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v11, p1, p2, v9}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "value":Ljava/lang/Object;
    goto :goto_4

    .line 302
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v6    # "propName":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_7
    :try_start_1
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->build(Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v12

    goto :goto_2

    .line 303
    :catch_1
    move-exception v2

    .line 304
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v12, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_mapType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v12}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {p0, v2, v12}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 305
    const/4 v7, 0x0

    goto :goto_2
.end method

.method protected final _readAndBind(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)V
    .locals 8
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 213
    .local p3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 214
    .local v3, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v7, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v7, :cond_0

    .line 215
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 217
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_keyDeserializer:Lorg/codehaus/jackson/map/KeyDeserializer;

    .line 218
    .local v2, "keyDes":Lorg/codehaus/jackson/map/KeyDeserializer;
    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_valueDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 219
    .local v6, "valueDes":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_valueTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 220
    .local v4, "typeDeser":Lorg/codehaus/jackson/map/TypeDeserializer;
    :goto_0
    sget-object v7, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v7, :cond_5

    .line 222
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "fieldName":Ljava/lang/String;
    if-nez v2, :cond_1

    move-object v1, v0

    .line 225
    .local v1, "key":Ljava/lang/Object;
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 226
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 227
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    .line 220
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 223
    .end local v1    # "key":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2, v0, p2}, Lorg/codehaus/jackson/map/KeyDeserializer;->deserializeKey(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 232
    .restart local v1    # "key":Ljava/lang/Object;
    :cond_2
    sget-object v7, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v7, :cond_3

    .line 233
    const/4 v5, 0x0

    .line 243
    :goto_3
    invoke-interface {p3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 234
    :cond_3
    if-nez v4, :cond_4

    .line 235
    invoke-virtual {v6, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v5

    .local v5, "value":Ljava/lang/Object;
    goto :goto_3

    .line 237
    .end local v5    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v6, p1, p2, v4}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 245
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_5
    return-void
.end method

.method public bridge synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "x2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 25
    check-cast p3, Ljava/util/Map;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/Map;
    .locals 5
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
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
    .line 149
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 150
    .local v2, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_0

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_0

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_0

    .line 151
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->getMapClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 153
    :cond_0
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    if-eqz v3, :cond_1

    .line 154
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_deserializeUsingCreator(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/Map;

    move-result-object v1

    .line 166
    :goto_0
    return-object v1

    .line 157
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_defaultCtor:Ljava/lang/reflect/Constructor;

    if-nez v3, :cond_2

    .line 158
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->getMapClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "No default constructor found"

    invoke-virtual {p2, v3, v4}, Lorg/codehaus/jackson/map/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 161
    :cond_2
    :try_start_0
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_defaultCtor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, v1}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_readAndBind(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)V

    goto :goto_0

    .line 162
    .end local v1    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->getMapClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2, v3, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3
.end method

.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
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
    .line 175
    .local p3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 176
    .local v0, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->getMapClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 179
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_readAndBind(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/util/Map;)V

    .line 180
    return-object p3
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
    .line 189
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentDeserializer()Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_valueDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    return-object v0
.end method

.method public getContentType()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_mapType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final getMapClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_mapType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValueType()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_mapType:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public resolve(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;)V
    .locals 3
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "provider"    # Lorg/codehaus/jackson/map/DeserializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->properties()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 133
    .local v1, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2, v1}, Lorg/codehaus/jackson/map/deser/MapDeserializer;->findDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->setValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)V

    goto :goto_0

    .line 136
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_0
    return-void
.end method

.method public setCreators(Lorg/codehaus/jackson/map/deser/CreatorContainer;)V
    .locals 1
    .param p1, "creators"    # Lorg/codehaus/jackson/map/deser/CreatorContainer;

    .prologue
    .line 91
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->propertyBasedCreator()Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    .line 92
    return-void
.end method

.method public setIgnorableProperties([Ljava/lang/String;)V
    .locals 1
    .param p1, "ignorable"    # [Ljava/lang/String;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;

    .line 98
    return-void

    .line 96
    :cond_1
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_0
.end method

.method protected wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "ref"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    :goto_0
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 318
    :cond_0
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .line 319
    check-cast p1, Ljava/lang/Error;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 322
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_1
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lorg/codehaus/jackson/map/JsonMappingException;

    if-nez v0, :cond_2

    .line 323
    check-cast p1, Ljava/io/IOException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 325
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_2
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method
