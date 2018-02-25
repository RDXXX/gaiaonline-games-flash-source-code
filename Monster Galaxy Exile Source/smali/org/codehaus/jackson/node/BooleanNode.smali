.class public final Lorg/codehaus/jackson/node/BooleanNode;
.super Lorg/codehaus/jackson/node/ValueNode;
.source "BooleanNode.java"


# static fields
.field public static final FALSE:Lorg/codehaus/jackson/node/BooleanNode;

.field public static final TRUE:Lorg/codehaus/jackson/node/BooleanNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lorg/codehaus/jackson/node/BooleanNode;

    invoke-direct {v0}, Lorg/codehaus/jackson/node/BooleanNode;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/node/BooleanNode;->TRUE:Lorg/codehaus/jackson/node/BooleanNode;

    .line 19
    new-instance v0, Lorg/codehaus/jackson/node/BooleanNode;

    invoke-direct {v0}, Lorg/codehaus/jackson/node/BooleanNode;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/node/BooleanNode;->FALSE:Lorg/codehaus/jackson/node/BooleanNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/codehaus/jackson/node/ValueNode;-><init>()V

    return-void
.end method

.method public static getFalse()Lorg/codehaus/jackson/node/BooleanNode;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->FALSE:Lorg/codehaus/jackson/node/BooleanNode;

    return-object v0
.end method

.method public static getTrue()Lorg/codehaus/jackson/node/BooleanNode;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->TRUE:Lorg/codehaus/jackson/node/BooleanNode;

    return-object v0
.end method

.method public static valueOf(Z)Lorg/codehaus/jackson/node/BooleanNode;
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 26
    if-eqz p0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->TRUE:Lorg/codehaus/jackson/node/BooleanNode;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->FALSE:Lorg/codehaus/jackson/node/BooleanNode;

    goto :goto_0
.end method


# virtual methods
.method public asToken()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->TRUE:Lorg/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 82
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBooleanValue()Z
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->TRUE:Lorg/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueAsBoolean()Z
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->TRUE:Lorg/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueAsBoolean(Z)Z
    .locals 1
    .param p1, "defaultValue"    # Z

    .prologue
    .line 53
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->TRUE:Lorg/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueAsDouble(D)D
    .locals 2
    .param p1, "defaultValue"    # D

    .prologue
    .line 66
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->TRUE:Lorg/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getValueAsInt(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    .prologue
    .line 58
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->TRUE:Lorg/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueAsLong(J)J
    .locals 2
    .param p1, "defaultValue"    # J

    .prologue
    .line 62
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->TRUE:Lorg/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getValueAsText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->TRUE:Lorg/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public isBoolean()Z
    .locals 1

    .prologue
    .line 34
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
    .line 73
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->TRUE:Lorg/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    .line 74
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
