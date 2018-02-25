.class public final Lorg/codehaus/jackson/node/POJONode;
.super Lorg/codehaus/jackson/node/ValueNode;
.source "POJONode.java"


# instance fields
.field protected final _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/codehaus/jackson/node/ValueNode;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public asToken()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    if-ne p1, p0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v1

    .line 116
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 118
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 120
    check-cast v0, Lorg/codehaus/jackson/node/POJONode;

    .line 121
    .local v0, "other":Lorg/codehaus/jackson/node/POJONode;
    iget-object v3, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 122
    iget-object v3, v0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 124
    :cond_4
    iget-object v1, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    iget-object v2, v0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getPojo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueAsBoolean(Z)Z
    .locals 1
    .param p1, "defaultValue"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 48
    .end local p1    # "defaultValue":Z
    :cond_0
    return p1
.end method

.method public getValueAsDouble(D)D
    .locals 1
    .param p1, "defaultValue"    # D

    .prologue
    .line 72
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    .line 75
    .end local p1    # "defaultValue":D
    :cond_0
    return-wide p1
.end method

.method public getValueAsInt(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 57
    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method public getValueAsLong(J)J
    .locals 1
    .param p1, "defaultValue"    # J

    .prologue
    .line 63
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 66
    .end local p1    # "defaultValue":J
    :cond_0
    return-wide p1
.end method

.method public getValueAsText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPojo()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .param p1, "jg"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
