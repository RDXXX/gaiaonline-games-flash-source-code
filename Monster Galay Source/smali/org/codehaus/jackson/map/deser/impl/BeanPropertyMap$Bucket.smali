.class final Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
.super Ljava/lang/Object;
.source "BeanPropertyMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Bucket"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field public final next:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

.field public final value:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 0
    .param p1, "next"    # Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 165
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 167
    return-void
.end method
