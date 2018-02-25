.class public abstract Lcom/ansca/corona/CoronaData;
.super Ljava/lang/Object;
.source "CoronaData.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaData$1;,
        Lcom/ansca/corona/CoronaData$Table;,
        Lcom/ansca/corona/CoronaData$List;,
        Lcom/ansca/corona/CoronaData$Proxy;,
        Lcom/ansca/corona/CoronaData$String;,
        Lcom/ansca/corona/CoronaData$Double;,
        Lcom/ansca/corona/CoronaData$Boolean;,
        Lcom/ansca/corona/CoronaData$Value;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    return-void
.end method

.method public static from(Lcom/naef/jnlua/LuaState;I)Lcom/ansca/corona/CoronaData;
    .locals 7
    .param p0, "luaState"    # Lcom/naef/jnlua/LuaState;
    .param p1, "luaStackIndex"    # I

    .prologue
    .line 52
    if-nez p0, :cond_1

    .line 53
    const/4 v0, 0x0

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    const/4 v0, 0x0

    .line 58
    .local v0, "data":Lcom/ansca/corona/CoronaData;
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v2

    .line 59
    .local v2, "luaType":Lcom/naef/jnlua/LuaType;
    sget-object v5, Lcom/naef/jnlua/LuaType;->BOOLEAN:Lcom/naef/jnlua/LuaType;

    if-ne v2, v5, :cond_2

    .line 60
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v5

    invoke-static {v5}, Lcom/ansca/corona/CoronaData$Boolean;->from(Z)Lcom/ansca/corona/CoronaData$Boolean;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_2
    sget-object v5, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    if-ne v2, v5, :cond_3

    .line 63
    new-instance v0, Lcom/ansca/corona/CoronaData$Double;

    .end local v0    # "data":Lcom/ansca/corona/CoronaData;
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Lcom/ansca/corona/CoronaData$Double;-><init>(D)V

    .restart local v0    # "data":Lcom/ansca/corona/CoronaData;
    goto :goto_0

    .line 65
    :cond_3
    sget-object v5, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    if-ne v2, v5, :cond_4

    .line 66
    new-instance v0, Lcom/ansca/corona/CoronaData$String;

    .end local v0    # "data":Lcom/ansca/corona/CoronaData;
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    .restart local v0    # "data":Lcom/ansca/corona/CoronaData;
    goto :goto_0

    .line 68
    :cond_4
    sget-object v5, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    if-ne v2, v5, :cond_0

    .line 69
    if-gez p1, :cond_5

    .line 70
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v5

    add-int/lit8 v6, p1, 0x1

    add-int p1, v5, v6

    .line 72
    :cond_5
    new-instance v3, Lcom/ansca/corona/CoronaData$Table;

    invoke-direct {v3}, Lcom/ansca/corona/CoronaData$Table;-><init>()V

    .line 73
    .local v3, "table":Lcom/ansca/corona/CoronaData$Table;
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 74
    const/4 v5, -0x2

    invoke-static {p0, v5}, Lcom/ansca/corona/CoronaData;->from(Lcom/naef/jnlua/LuaState;I)Lcom/ansca/corona/CoronaData;

    move-result-object v1

    .line 75
    .local v1, "key":Lcom/ansca/corona/CoronaData;
    instance-of v5, v1, Lcom/ansca/corona/CoronaData$Value;

    if-nez v5, :cond_6

    .line 73
    .end local v1    # "key":Lcom/ansca/corona/CoronaData;
    :goto_2
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto :goto_1

    .line 78
    .restart local v1    # "key":Lcom/ansca/corona/CoronaData;
    :cond_6
    const/4 v5, -0x1

    invoke-static {p0, v5}, Lcom/ansca/corona/CoronaData;->from(Lcom/naef/jnlua/LuaState;I)Lcom/ansca/corona/CoronaData;

    move-result-object v4

    .line 79
    .local v4, "value":Lcom/ansca/corona/CoronaData;
    check-cast v1, Lcom/ansca/corona/CoronaData$Value;

    .end local v1    # "key":Lcom/ansca/corona/CoronaData;
    invoke-virtual {v3, v1, v4}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    goto :goto_2

    .line 81
    .end local v4    # "value":Lcom/ansca/corona/CoronaData;
    :cond_7
    move-object v0, v3

    goto :goto_0
.end method

.method public static from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;
    .locals 15
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 218
    if-nez p0, :cond_0

    .line 219
    const/4 p0, 0x0

    .line 297
    .end local p0    # "value":Ljava/lang/Object;
    .local v4, "data":Lcom/ansca/corona/CoronaData;
    :goto_0
    return-object p0

    .line 223
    .end local v4    # "data":Lcom/ansca/corona/CoronaData;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v13, p0, Lcom/ansca/corona/CoronaData;

    if-eqz v13, :cond_1

    .line 224
    check-cast p0, Lcom/ansca/corona/CoronaData;

    goto :goto_0

    .line 228
    :cond_1
    const/4 v4, 0x0

    .line 229
    .restart local v4    # "data":Lcom/ansca/corona/CoronaData;
    instance-of v13, p0, Ljava/lang/Boolean;

    if-eqz v13, :cond_3

    .line 230
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-static {v13}, Lcom/ansca/corona/CoronaData$Boolean;->from(Z)Lcom/ansca/corona/CoronaData$Boolean;

    move-result-object v4

    :cond_2
    :goto_1
    move-object p0, v4

    .line 297
    goto :goto_0

    .line 232
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v13, p0, Ljava/lang/Number;

    if-eqz v13, :cond_4

    .line 233
    new-instance v4, Lcom/ansca/corona/CoronaData$Double;

    .end local v4    # "data":Lcom/ansca/corona/CoronaData;
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    invoke-direct {v4, v13, v14}, Lcom/ansca/corona/CoronaData$Double;-><init>(D)V

    .restart local v4    # "data":Lcom/ansca/corona/CoronaData;
    goto :goto_1

    .line 235
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v13, p0, Ljava/lang/Character;

    if-nez v13, :cond_5

    instance-of v13, p0, Ljava/lang/CharSequence;

    if-eqz v13, :cond_6

    .line 236
    :cond_5
    new-instance v4, Lcom/ansca/corona/CoronaData$String;

    .end local v4    # "data":Lcom/ansca/corona/CoronaData;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    .restart local v4    # "data":Lcom/ansca/corona/CoronaData;
    goto :goto_1

    .line 238
    :cond_6
    instance-of v13, p0, Ljava/io/File;

    if-eqz v13, :cond_7

    .line 239
    new-instance v4, Lcom/ansca/corona/CoronaData$String;

    .end local v4    # "data":Lcom/ansca/corona/CoronaData;
    check-cast p0, Ljava/io/File;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    .restart local v4    # "data":Lcom/ansca/corona/CoronaData;
    goto :goto_1

    .line 241
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v13, p0, Landroid/net/Uri;

    if-eqz v13, :cond_8

    .line 242
    new-instance v4, Lcom/ansca/corona/CoronaData$String;

    .end local v4    # "data":Lcom/ansca/corona/CoronaData;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    .restart local v4    # "data":Lcom/ansca/corona/CoronaData;
    goto :goto_1

    .line 244
    :cond_8
    instance-of v13, p0, Landroid/os/Bundle;

    if-eqz v13, :cond_9

    .line 245
    check-cast p0, Landroid/os/Bundle;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/ansca/corona/CoronaData$Table;->from(Landroid/os/Bundle;)Lcom/ansca/corona/CoronaData$Table;

    move-result-object v4

    goto :goto_1

    .line 247
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v13, p0, Lorg/json/JSONArray;

    if-eqz v13, :cond_a

    .line 249
    :try_start_0
    move-object v0, p0

    check-cast v0, Lorg/json/JSONArray;

    move-object v13, v0

    invoke-static {v13}, Lcom/ansca/corona/CoronaData$List;->from(Lorg/json/JSONArray;)Lcom/ansca/corona/CoronaData$List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 251
    :catch_0
    move-exception v8

    .line 253
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Lcom/ansca/corona/CoronaData$String;

    check-cast p0, Lorg/json/JSONArray;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .end local v4    # "data":Lcom/ansca/corona/CoronaData;
    .local v5, "data":Lcom/ansca/corona/CoronaData;
    move-object v4, v5

    .line 255
    .end local v5    # "data":Lcom/ansca/corona/CoronaData;
    .restart local v4    # "data":Lcom/ansca/corona/CoronaData;
    goto :goto_1

    .line 258
    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v13, p0, Lorg/json/JSONObject;

    if-eqz v13, :cond_b

    .line 260
    :try_start_2
    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    move-object v13, v0

    invoke-static {v13}, Lcom/ansca/corona/CoronaData$Table;->from(Lorg/json/JSONObject;)Lcom/ansca/corona/CoronaData$Table;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    goto :goto_1

    .line 262
    :catch_1
    move-exception v8

    .line 264
    .restart local v8    # "ex":Ljava/lang/Exception;
    :try_start_3
    new-instance v5, Lcom/ansca/corona/CoronaData$String;

    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v4    # "data":Lcom/ansca/corona/CoronaData;
    .restart local v5    # "data":Lcom/ansca/corona/CoronaData;
    move-object v4, v5

    .line 266
    .end local v5    # "data":Lcom/ansca/corona/CoronaData;
    .restart local v4    # "data":Lcom/ansca/corona/CoronaData;
    goto/16 :goto_1

    .line 269
    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 270
    new-instance v10, Lcom/ansca/corona/CoronaData$List;

    invoke-direct {v10}, Lcom/ansca/corona/CoronaData$List;-><init>()V

    .line 271
    .local v10, "list":Lcom/ansca/corona/CoronaData$List;
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 272
    .local v2, "arrayLength":I
    const/4 v1, 0x0

    .local v1, "arrayIndex":I
    :goto_2
    if-ge v1, v2, :cond_c

    .line 273
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/ansca/corona/CoronaData$List;->add(Lcom/ansca/corona/CoronaData;)V

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 275
    :cond_c
    move-object v4, v10

    .line 276
    goto/16 :goto_1

    .line 277
    .end local v1    # "arrayIndex":I
    .end local v2    # "arrayLength":I
    .end local v10    # "list":Lcom/ansca/corona/CoronaData$List;
    :cond_d
    instance-of v13, p0, Ljava/util/Map;

    if-eqz v13, :cond_10

    .line 278
    new-instance v12, Lcom/ansca/corona/CoronaData$Table;

    invoke-direct {v12}, Lcom/ansca/corona/CoronaData$Table;-><init>()V

    .local v12, "table":Lcom/ansca/corona/CoronaData$Table;
    move-object v11, p0

    .line 279
    check-cast v11, Ljava/util/Map;

    .line 280
    .local v11, "map":Ljava/util/Map;
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 281
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v7

    .line 282
    .local v7, "entryKey":Lcom/ansca/corona/CoronaData;
    instance-of v13, v7, Lcom/ansca/corona/CoronaData$Value;

    if-eqz v13, :cond_e

    .line 283
    check-cast v7, Lcom/ansca/corona/CoronaData$Value;

    .end local v7    # "entryKey":Lcom/ansca/corona/CoronaData;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    goto :goto_3

    .line 286
    .end local v6    # "entry":Ljava/util/Map$Entry;
    :cond_f
    move-object v4, v12

    .line 287
    goto/16 :goto_1

    .line 288
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "map":Ljava/util/Map;
    .end local v12    # "table":Lcom/ansca/corona/CoronaData$Table;
    :cond_10
    instance-of v13, p0, Ljava/lang/Iterable;

    if-eqz v13, :cond_2

    .line 289
    new-instance v10, Lcom/ansca/corona/CoronaData$List;

    invoke-direct {v10}, Lcom/ansca/corona/CoronaData$List;-><init>()V

    .line 290
    .restart local v10    # "list":Lcom/ansca/corona/CoronaData$List;
    check-cast p0, Ljava/lang/Iterable;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 291
    .local v3, "collectionValue":Ljava/lang/Object;
    invoke-static {v3}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/ansca/corona/CoronaData$List;->add(Lcom/ansca/corona/CoronaData;)V

    goto :goto_4

    .line 293
    .end local v3    # "collectionValue":Ljava/lang/Object;
    :cond_11
    move-object v4, v10

    goto/16 :goto_1

    .line 266
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "list":Lcom/ansca/corona/CoronaData$List;
    .restart local v8    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v13

    goto/16 :goto_1

    .line 255
    :catch_3
    move-exception v13

    goto/16 :goto_1
.end method

.method public static from(Lorg/xmlpull/v1/XmlPullParser;)Lcom/ansca/corona/CoronaData;
    .locals 13
    .param p0, "xmlReader"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    .line 98
    if-nez p0, :cond_1

    .line 189
    :cond_0
    return-object v0

    .line 103
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v8

    .line 104
    .local v8, "xmlEventType":I
    if-ne v8, v11, :cond_0

    .line 107
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "tagName":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "data":Lcom/ansca/corona/CoronaData;
    const-string v9, "boolean"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 115
    const-string v9, ""

    const-string v10, "value"

    invoke-interface {p0, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 116
    .local v6, "value":Z
    invoke-static {v6}, Lcom/ansca/corona/CoronaData$Boolean;->from(Z)Lcom/ansca/corona/CoronaData$Boolean;

    move-result-object v0

    .line 180
    .end local v6    # "value":Z
    :cond_2
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    if-ne v9, v12, :cond_3

    .line 181
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 185
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_0

    .line 118
    :cond_4
    const-string v9, "double"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 119
    const-string v9, ""

    const-string v10, "value"

    invoke-interface {p0, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 120
    .local v6, "value":D
    new-instance v0, Lcom/ansca/corona/CoronaData$Double;

    .end local v0    # "data":Lcom/ansca/corona/CoronaData;
    invoke-direct {v0, v6, v7}, Lcom/ansca/corona/CoronaData$Double;-><init>(D)V

    .line 121
    .restart local v0    # "data":Lcom/ansca/corona/CoronaData;
    goto :goto_0

    .line 122
    .end local v6    # "value":D
    :cond_5
    const-string v9, "string"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 123
    sget-object v0, Lcom/ansca/corona/CoronaData$String;->EMPTY:Lcom/ansca/corona/CoronaData$String;

    .line 124
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 125
    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    .line 126
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "text":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 128
    new-instance v0, Lcom/ansca/corona/CoronaData$String;

    .end local v0    # "data":Lcom/ansca/corona/CoronaData;
    invoke-direct {v0, v5}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    .restart local v0    # "data":Lcom/ansca/corona/CoronaData;
    goto :goto_0

    .line 132
    .end local v5    # "text":Ljava/lang/String;
    :cond_6
    const-string v9, "proxy"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 133
    new-instance v0, Lcom/ansca/corona/CoronaData$Proxy;

    .end local v0    # "data":Lcom/ansca/corona/CoronaData;
    invoke-static {p0}, Lcom/ansca/corona/CoronaData;->from(Lorg/xmlpull/v1/XmlPullParser;)Lcom/ansca/corona/CoronaData;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/ansca/corona/CoronaData$Proxy;-><init>(Lcom/ansca/corona/CoronaData;)V

    .restart local v0    # "data":Lcom/ansca/corona/CoronaData;
    goto :goto_0

    .line 135
    :cond_7
    const-string v9, "list"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 136
    new-instance v2, Lcom/ansca/corona/CoronaData$List;

    invoke-direct {v2}, Lcom/ansca/corona/CoronaData$List;-><init>()V

    .line 138
    .local v2, "list":Lcom/ansca/corona/CoronaData$List;
    :cond_8
    invoke-static {p0}, Lcom/ansca/corona/CoronaData;->from(Lorg/xmlpull/v1/XmlPullParser;)Lcom/ansca/corona/CoronaData;

    move-result-object v0

    .line 139
    invoke-virtual {v2, v0}, Lcom/ansca/corona/CoronaData$List;->add(Lcom/ansca/corona/CoronaData;)V

    .line 140
    if-nez v0, :cond_8

    .line 141
    move-object v0, v2

    .line 142
    goto :goto_0

    .line 143
    .end local v2    # "list":Lcom/ansca/corona/CoronaData$List;
    :cond_9
    const-string v9, "table"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 144
    new-instance v3, Lcom/ansca/corona/CoronaData$Table;

    invoke-direct {v3}, Lcom/ansca/corona/CoronaData$Table;-><init>()V

    .line 146
    .local v3, "table":Lcom/ansca/corona/CoronaData$Table;
    :cond_a
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v8

    .line 147
    if-ne v8, v11, :cond_e

    const-string v9, "entry"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, "key":Lcom/ansca/corona/CoronaData$Value;
    const/4 v6, 0x0

    .line 151
    .local v6, "value":Lcom/ansca/corona/CoronaData;
    :cond_b
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v8

    .line 152
    if-ne v8, v11, :cond_d

    .line 153
    const-string v9, "key"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 154
    invoke-static {p0}, Lcom/ansca/corona/CoronaData;->from(Lorg/xmlpull/v1/XmlPullParser;)Lcom/ansca/corona/CoronaData;

    move-result-object v0

    .line 155
    instance-of v9, v0, Lcom/ansca/corona/CoronaData$Value;

    if-eqz v9, :cond_b

    move-object v1, v0

    .line 156
    check-cast v1, Lcom/ansca/corona/CoronaData$Value;

    goto :goto_2

    .line 159
    :cond_c
    const-string v9, "value"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 160
    invoke-static {p0}, Lcom/ansca/corona/CoronaData;->from(Lorg/xmlpull/v1/XmlPullParser;)Lcom/ansca/corona/CoronaData;

    move-result-object v6

    goto :goto_2

    .line 163
    :cond_d
    if-ne v8, v12, :cond_b

    const-string v9, "entry"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 167
    if-eqz v1, :cond_a

    if-eqz v6, :cond_a

    .line 168
    invoke-virtual {v3, v1, v6}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    goto :goto_1

    .line 171
    .end local v1    # "key":Lcom/ansca/corona/CoronaData$Value;
    .end local v6    # "value":Lcom/ansca/corona/CoronaData;
    :cond_e
    if-ne v8, v12, :cond_a

    const-string v9, "table"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 175
    move-object v0, v3

    goto/16 :goto_0
.end method


# virtual methods
.method public clone()Lcom/ansca/corona/CoronaData;
    .locals 3

    .prologue
    .line 12
    const/4 v1, 0x0

    .line 14
    .local v1, "clone":Lcom/ansca/corona/CoronaData;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/ansca/corona/CoronaData;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_0
    return-object v1

    .line 16
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData;->clone()Lcom/ansca/corona/CoronaData;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public abstract pushTo(Lcom/naef/jnlua/LuaState;)Z
.end method

.method public abstract writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
