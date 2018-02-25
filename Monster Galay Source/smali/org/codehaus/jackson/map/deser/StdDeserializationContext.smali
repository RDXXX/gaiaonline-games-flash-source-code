.class public Lorg/codehaus/jackson/map/deser/StdDeserializationContext;
.super Lorg/codehaus/jackson/map/DeserializationContext;
.source "StdDeserializationContext.java"


# static fields
.field static final MAX_ERROR_STR_LEN:I = 0x1f4


# instance fields
.field protected _arrayBuilders:Lorg/codehaus/jackson/map/util/ArrayBuilders;

.field protected _dateFormat:Ljava/text/DateFormat;

.field protected final _deserProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

.field protected _objectBuffer:Lorg/codehaus/jackson/map/util/ObjectBuffer;

.field protected _parser:Lorg/codehaus/jackson/JsonParser;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializerProvider;)V
    .locals 0
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p3, "prov"    # Lorg/codehaus/jackson/map/DeserializerProvider;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/DeserializationContext;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;)V

    .line 64
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lorg/codehaus/jackson/JsonParser;

    .line 65
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_deserProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

    .line 66
    return-void
.end method


# virtual methods
.method protected _calcName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_calcName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected _desc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x1f4

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]...["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, -0x1f4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 303
    :cond_0
    return-object p1
.end method

.method protected _valueDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    :try_start_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_desc(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 294
    :goto_0
    return-object v1

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "[N/A]"

    goto :goto_0
.end method

.method public constructCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 1
    .param p1, "d"    # Ljava/util/Date;

    .prologue
    .line 152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 153
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 154
    return-object v0
.end method

.method protected determineClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 272
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->getClassDescription(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getArrayBuilders()Lorg/codehaus/jackson/map/util/ArrayBuilders;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_arrayBuilders:Lorg/codehaus/jackson/map/util/ArrayBuilders;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_arrayBuilders:Lorg/codehaus/jackson/map/util/ArrayBuilders;

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_arrayBuilders:Lorg/codehaus/jackson/map/util/ArrayBuilders;

    return-object v0
.end method

.method protected getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_dateFormat:Ljava/text/DateFormat;

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getDeserializerProvider()Lorg/codehaus/jackson/map/DeserializerProvider;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_deserProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

    return-object v0
.end method

.method public getParser()Lorg/codehaus/jackson/JsonParser;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lorg/codehaus/jackson/JsonParser;

    return-object v0
.end method

.method public handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p3, "instanceOrClass"    # Ljava/lang/Object;
    .param p4, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 172
    .local p2, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/DeserializationConfig;->getProblemHandlers()Lorg/codehaus/jackson/map/util/LinkedNode;

    move-result-object v0

    .line 173
    .local v0, "h":Lorg/codehaus/jackson/map/util/LinkedNode;, "Lorg/codehaus/jackson/map/util/LinkedNode<Lorg/codehaus/jackson/map/DeserializationProblemHandler;>;"
    if-eqz v0, :cond_2

    .line 177
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lorg/codehaus/jackson/JsonParser;

    .line 178
    .local v1, "oldParser":Lorg/codehaus/jackson/JsonParser;
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lorg/codehaus/jackson/JsonParser;

    .line 180
    :goto_0
    if-eqz v0, :cond_1

    .line 182
    :try_start_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/LinkedNode;->value()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/map/DeserializationProblemHandler;

    invoke-virtual {v2, p0, p2, p3, p4}, Lorg/codehaus/jackson/map/DeserializationProblemHandler;->handleUnknownProperty(Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    const/4 v2, 0x1

    .line 188
    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lorg/codehaus/jackson/JsonParser;

    .line 191
    .end local v1    # "oldParser":Lorg/codehaus/jackson/JsonParser;
    :goto_1
    return v2

    .line 185
    .restart local v1    # "oldParser":Lorg/codehaus/jackson/JsonParser;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/LinkedNode;->next()Lorg/codehaus/jackson/map/util/LinkedNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_1
    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lorg/codehaus/jackson/JsonParser;

    .line 191
    .end local v1    # "oldParser":Lorg/codehaus/jackson/JsonParser;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 188
    .restart local v1    # "oldParser":Lorg/codehaus/jackson/JsonParser;
    :catchall_0
    move-exception v2

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lorg/codehaus/jackson/JsonParser;

    throw v2
.end method

.method public instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "instClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lorg/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "instClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lorg/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public final leaseObjectBuffer()Lorg/codehaus/jackson/map/util/ObjectBuffer;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_objectBuffer:Lorg/codehaus/jackson/map/util/ObjectBuffer;

    .line 100
    .local v0, "buf":Lorg/codehaus/jackson/map/util/ObjectBuffer;
    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lorg/codehaus/jackson/map/util/ObjectBuffer;

    .end local v0    # "buf":Lorg/codehaus/jackson/map/util/ObjectBuffer;
    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ObjectBuffer;-><init>()V

    .line 105
    .restart local v0    # "buf":Lorg/codehaus/jackson/map/util/ObjectBuffer;
    :goto_0
    return-object v0

    .line 103
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_objectBuffer:Lorg/codehaus/jackson/map/util/ObjectBuffer;

    goto :goto_0
.end method

.method public mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_calcName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "clsName":Ljava/lang/String;
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lorg/codehaus/jackson/JsonParser;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    return-object v1
.end method

.method public parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "dateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "pex":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final returnObjectBuffer(Lorg/codehaus/jackson/map/util/ObjectBuffer;)V
    .locals 2
    .param p1, "buf"    # Lorg/codehaus/jackson/map/util/ObjectBuffer;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_objectBuffer:Lorg/codehaus/jackson/map/util/ObjectBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->initialCapacity()I

    move-result v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_objectBuffer:Lorg/codehaus/jackson/map/util/ObjectBuffer;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->initialCapacity()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 116
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_objectBuffer:Lorg/codehaus/jackson/map/util/ObjectBuffer;

    .line 118
    :cond_1
    return-void
.end method

.method public unknownFieldException(Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 1
    .param p1, "instanceOrClass"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 246
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lorg/codehaus/jackson/JsonParser;

    invoke-static {v0, p1, p2}, Lorg/codehaus/jackson/map/exc/UnrecognizedPropertyException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/exc/UnrecognizedPropertyException;

    move-result-object v0

    return-object v0
.end method

.method public unknownTypeException(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 252
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lorg/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not resolve type id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' into a subtype of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .param p2, "keyValue"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lorg/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct Map key of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from String \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_desc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public weirdNumberException(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "instClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lorg/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from number value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_valueDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "instClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lorg/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from String value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;->_valueDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public wrongTokenException(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 2
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "expToken"    # Lorg/codehaus/jackson/JsonToken;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method
