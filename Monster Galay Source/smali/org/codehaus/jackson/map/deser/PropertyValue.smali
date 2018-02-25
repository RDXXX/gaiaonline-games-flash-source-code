.class abstract Lorg/codehaus/jackson/map/deser/PropertyValue;
.super Ljava/lang/Object;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/deser/PropertyValue$Map;,
        Lorg/codehaus/jackson/map/deser/PropertyValue$Any;,
        Lorg/codehaus/jackson/map/deser/PropertyValue$Regular;
    }
.end annotation


# instance fields
.field public final next:Lorg/codehaus/jackson/map/deser/PropertyValue;

.field public final value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/deser/PropertyValue;Ljava/lang/Object;)V
    .locals 0
    .param p1, "next"    # Lorg/codehaus/jackson/map/deser/PropertyValue;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/PropertyValue;->next:Lorg/codehaus/jackson/map/deser/PropertyValue;

    .line 22
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/PropertyValue;->value:Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method public abstract assign(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method
