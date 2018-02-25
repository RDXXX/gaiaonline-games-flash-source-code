.class final Lcom/millennialmedia/android/AdCache$1;
.super Lcom/millennialmedia/android/AdCache$Iterator;
.source "AdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/AdCache;->getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$hashSet:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/millennialmedia/android/AdCache$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/millennialmedia/android/AdCache$1;->val$hashSet:Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/millennialmedia/android/AdCache$Iterator;-><init>()V

    return-void
.end method


# virtual methods
.method callback(Lcom/millennialmedia/android/CachedAd;)Z
    .locals 3
    .param p1, "cachedAd"    # Lcom/millennialmedia/android/CachedAd;

    .prologue
    const/4 v2, 0x1

    .line 112
    iget-object v0, p1, Lcom/millennialmedia/android/CachedAd;->acid:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdCache$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/millennialmedia/android/CachedAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/millennialmedia/android/AdCache$1;->val$hashSet:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/millennialmedia/android/CachedAd;->acid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    return v2
.end method
