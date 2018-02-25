.class public Lorg/codehaus/jackson/map/TreeMapper;
.super Lorg/codehaus/jackson/node/JsonNodeFactory;
.source "TreeMapper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected _objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/TreeMapper;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/ObjectMapper;)V
    .locals 0
    .param p1, "m"    # Lorg/codehaus/jackson/map/ObjectMapper;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/codehaus/jackson/node/JsonNodeFactory;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/codehaus/jackson/map/TreeMapper;->_objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 49
    return-void
.end method


# virtual methods
.method public getJsonFactory()Lorg/codehaus/jackson/JsonFactory;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/TreeMapper;->objectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ObjectMapper;->getJsonFactory()Lorg/codehaus/jackson/JsonFactory;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized objectMapper()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/TreeMapper;->_objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/TreeMapper;->_objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/TreeMapper;->_objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readTree(Ljava/io/File;)Lorg/codehaus/jackson/JsonNode;
    .locals 3
    .param p1, "src"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/TreeMapper;->objectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    const-class v2, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v1, p1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 104
    .local v0, "n":Lorg/codehaus/jackson/JsonNode;
    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/node/NullNode;->instance:Lorg/codehaus/jackson/node/NullNode;

    .end local v0    # "n":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    return-object v0
.end method

.method public readTree(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonNode;
    .locals 3
    .param p1, "src"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/TreeMapper;->objectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    const-class v2, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v1, p1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 118
    .local v0, "n":Lorg/codehaus/jackson/JsonNode;
    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/node/NullNode;->instance:Lorg/codehaus/jackson/node/NullNode;

    .end local v0    # "n":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    return-object v0
.end method

.method public readTree(Ljava/io/Reader;)Lorg/codehaus/jackson/JsonNode;
    .locals 3
    .param p1, "src"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/TreeMapper;->objectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    const-class v2, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v1, p1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 125
    .local v0, "n":Lorg/codehaus/jackson/JsonNode;
    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/node/NullNode;->instance:Lorg/codehaus/jackson/node/NullNode;

    .end local v0    # "n":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    return-object v0
.end method

.method public readTree(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 3
    .param p1, "jsonContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/TreeMapper;->objectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    const-class v2, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v1, p1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 132
    .local v0, "n":Lorg/codehaus/jackson/JsonNode;
    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/node/NullNode;->instance:Lorg/codehaus/jackson/node/NullNode;

    .end local v0    # "n":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    return-object v0
.end method

.method public readTree(Ljava/net/URL;)Lorg/codehaus/jackson/JsonNode;
    .locals 3
    .param p1, "src"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/TreeMapper;->objectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    const-class v2, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v1, p1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/net/URL;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 111
    .local v0, "n":Lorg/codehaus/jackson/JsonNode;
    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/node/NullNode;->instance:Lorg/codehaus/jackson/node/NullNode;

    .end local v0    # "n":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    return-object v0
.end method

.method public readTree(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonNode;
    .locals 2
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 89
    .local v0, "t":Lorg/codehaus/jackson/JsonToken;
    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 91
    if-nez v0, :cond_0

    .line 92
    const/4 v1, 0x0

    .line 96
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/TreeMapper;->objectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->readTree(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    goto :goto_0
.end method

.method public readTree([B)Lorg/codehaus/jackson/JsonNode;
    .locals 5
    .param p1, "jsonContent"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/TreeMapper;->objectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, p1

    const-class v4, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v1, p1, v2, v3, v4}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue([BIILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 139
    .local v0, "n":Lorg/codehaus/jackson/JsonNode;
    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/node/NullNode;->instance:Lorg/codehaus/jackson/node/NullNode;

    .end local v0    # "n":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    return-object v0
.end method

.method public writeTree(Lorg/codehaus/jackson/JsonNode;Ljava/io/File;)V
    .locals 1
    .param p1, "rootNode"    # Lorg/codehaus/jackson/JsonNode;
    .param p2, "dst"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/TreeMapper;->objectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValue(Ljava/io/File;Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public writeTree(Lorg/codehaus/jackson/JsonNode;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "rootNode"    # Lorg/codehaus/jackson/JsonNode;
    .param p2, "dst"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/TreeMapper;->objectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method public writeTree(Lorg/codehaus/jackson/JsonNode;Ljava/io/Writer;)V
    .locals 1
    .param p1, "rootNode"    # Lorg/codehaus/jackson/JsonNode;
    .param p2, "dst"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/TreeMapper;->objectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValue(Ljava/io/Writer;Ljava/lang/Object;)V

    .line 159
    return-void
.end method
