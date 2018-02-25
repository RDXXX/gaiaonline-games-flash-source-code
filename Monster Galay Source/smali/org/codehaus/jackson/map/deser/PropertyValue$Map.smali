.class final Lorg/codehaus/jackson/map/deser/PropertyValue$Map;
.super Lorg/codehaus/jackson/map/deser/PropertyValue;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/deser/PropertyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Map"
.end annotation


# instance fields
.field final _key:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/PropertyValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "next"    # Lorg/codehaus/jackson/map/deser/PropertyValue;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/Object;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/PropertyValue;-><init>(Lorg/codehaus/jackson/map/deser/PropertyValue;Ljava/lang/Object;)V

    .line 103
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/PropertyValue$Map;->_key:Ljava/lang/Object;

    .line 104
    return-void
.end method


# virtual methods
.method public assign(Ljava/lang/Object;)V
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 111
    check-cast p1, Ljava/util/Map;

    .end local p1    # "bean":Ljava/lang/Object;
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/PropertyValue$Map;->_key:Ljava/lang/Object;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/PropertyValue$Map;->value:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method
