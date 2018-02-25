.class final Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;
.super Ljava/lang/Object;
.source "SerializedNameAnnotationInterceptingNamingPolicy.java"

# interfaces
.implements Lcom/google/gson/FieldNamingStrategy2;


# instance fields
.field private final delegate:Lcom/google/gson/FieldNamingStrategy2;


# direct methods
.method constructor <init>(Lcom/google/gson/FieldNamingStrategy2;)V
    .locals 0
    .param p1, "delegate"    # Lcom/google/gson/FieldNamingStrategy2;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;->delegate:Lcom/google/gson/FieldNamingStrategy2;

    .line 42
    return-void
.end method


# virtual methods
.method public translateName(Lcom/google/gson/FieldAttributes;)Ljava/lang/String;
    .locals 2
    .param p1, "f"    # Lcom/google/gson/FieldAttributes;

    .prologue
    .line 45
    const-class v1, Lcom/google/gson/annotations/SerializedName;

    invoke-virtual {p1, v1}, Lcom/google/gson/FieldAttributes;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/SerializedName;

    .line 46
    .local v0, "serializedName":Lcom/google/gson/annotations/SerializedName;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;->delegate:Lcom/google/gson/FieldNamingStrategy2;

    invoke-interface {v1, p1}, Lcom/google/gson/FieldNamingStrategy2;->translateName(Lcom/google/gson/FieldAttributes;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
