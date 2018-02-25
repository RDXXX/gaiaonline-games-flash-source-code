.class public Lorg/codehaus/jackson/xc/DataHandlerJsonDeserializer;
.super Lorg/codehaus/jackson/map/deser/StdScalarDeserializer;
.source "DataHandlerJsonDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/StdScalarDeserializer",
        "<",
        "Ljavax/activation/DataHandler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Ljavax/activation/DataHandler;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
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
    .line 19
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/xc/DataHandlerJsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljavax/activation/DataHandler;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljavax/activation/DataHandler;
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
    .line 28
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getBinaryValue()[B

    move-result-object v0

    .line 29
    .local v0, "value":[B
    new-instance v1, Ljavax/activation/DataHandler;

    new-instance v2, Lorg/codehaus/jackson/xc/DataHandlerJsonDeserializer$1;

    invoke-direct {v2, p0, v0}, Lorg/codehaus/jackson/xc/DataHandlerJsonDeserializer$1;-><init>(Lorg/codehaus/jackson/xc/DataHandlerJsonDeserializer;[B)V

    invoke-direct {v1, v2}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    return-object v1
.end method
