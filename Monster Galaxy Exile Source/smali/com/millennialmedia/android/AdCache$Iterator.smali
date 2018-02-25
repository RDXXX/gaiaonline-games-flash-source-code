.class Lcom/millennialmedia/android/AdCache$Iterator;
.super Ljava/lang/Object;
.source "AdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AdCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Iterator"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method callback(Lcom/millennialmedia/android/CachedAd;)Z
    .locals 1
    .param p1, "ad"    # Lcom/millennialmedia/android/CachedAd;

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method callback(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method callback(Ljava/lang/String;ILjava/util/Date;Ljava/lang/String;JLjava/io/ObjectInputStream;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "expiration"    # Ljava/util/Date;
    .param p4, "acid"    # Ljava/lang/String;
    .param p5, "deferredViewStart"    # J
    .param p7, "objectInputStream"    # Ljava/io/ObjectInputStream;

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method
