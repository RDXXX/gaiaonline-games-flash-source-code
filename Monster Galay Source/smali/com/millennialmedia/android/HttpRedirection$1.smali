.class final Lcom/millennialmedia/android/HttpRedirection$1;
.super Ljava/lang/Object;
.source "HttpRedirection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/HttpRedirection;->startActivityFromUri(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/OverlaySettings;Lcom/millennialmedia/android/HttpRedirection$Listener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adType:Ljava/lang/String;

.field final synthetic val$contextReference:Ljava/lang/ref/WeakReference;

.field final synthetic val$listenerReference:Ljava/lang/ref/WeakReference;

.field final synthetic val$settings:Lcom/millennialmedia/android/OverlaySettings;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/millennialmedia/android/OverlaySettings;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/millennialmedia/android/HttpRedirection$1;->val$uri:Ljava/lang/String;

    iput-object p2, p0, Lcom/millennialmedia/android/HttpRedirection$1;->val$contextReference:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/millennialmedia/android/HttpRedirection$1;->val$listenerReference:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/millennialmedia/android/HttpRedirection$1;->val$adType:Ljava/lang/String;

    iput-object p5, p0, Lcom/millennialmedia/android/HttpRedirection$1;->val$settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 242
    iget-object v8, p0, Lcom/millennialmedia/android/HttpRedirection$1;->val$uri:Ljava/lang/String;

    invoke-static {v8}, Lcom/millennialmedia/android/HttpRedirection;->navigateRedirects(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "destination":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 246
    .local v2, "destinationUri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/millennialmedia/android/HttpRedirection$1;->val$contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 247
    .local v0, "context":Landroid/content/Context;
    iget-object v8, p0, Lcom/millennialmedia/android/HttpRedirection$1;->val$listenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/millennialmedia/android/HttpRedirection$Listener;

    .line 248
    .local v6, "listener":Lcom/millennialmedia/android/HttpRedirection$Listener;
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    if-eqz v6, :cond_6

    .line 251
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmvideo"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 253
    invoke-interface {v6, v2}, Lcom/millennialmedia/android/HttpRedirection$Listener;->shouldStartActivityForUri(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 255
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "id":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 258
    invoke-static {v0, v4}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v7

    check-cast v7, Lcom/millennialmedia/android/VideoAd;

    .line 259
    .local v7, "videoAd":Lcom/millennialmedia/android/VideoAd;
    if-eqz v7, :cond_2

    invoke-virtual {v7, v0, v12, v10}, Lcom/millennialmedia/android/VideoAd;->canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 261
    iget-object v8, p0, Lcom/millennialmedia/android/HttpRedirection$1;->val$adType:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 262
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v8

    iget-object v9, p0, Lcom/millennialmedia/android/HttpRedirection$1;->val$adType:Ljava/lang/String;

    invoke-virtual {v8, v0, v9}, Lcom/millennialmedia/android/HandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 263
    :cond_0
    const-string v8, "mmvideo: attempting to play video %s"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    invoke-virtual {v7, v0, v12}, Lcom/millennialmedia/android/VideoAd;->show(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;)V

    .line 304
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :cond_1
    :goto_0
    return-void

    .line 268
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v7    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :cond_2
    const-string v8, "mmvideo: Ad %s cannot be shown at this time."

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 275
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :cond_3
    iget-object v8, p0, Lcom/millennialmedia/android/HttpRedirection$1;->val$settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-static {v0, v2, v8}, Lcom/millennialmedia/android/HttpRedirection;->getIntentFromUri(Landroid/content/Context;Landroid/net/Uri;Lcom/millennialmedia/android/OverlaySettings;)Landroid/content/Intent;

    move-result-object v5

    .line 276
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_5

    invoke-interface {v6, v2}, Lcom/millennialmedia/android/HttpRedirection$Listener;->shouldStartActivityForUri(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 280
    :try_start_0
    instance-of v8, v0, Landroid/app/Activity;

    if-nez v8, :cond_4

    .line 282
    const/high16 v8, 0x10000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 284
    :cond_4
    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v3

    .line 288
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string v8, "No activity found for %s"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 294
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :cond_5
    const-string v8, "Could not start activity for %s"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-interface {v6, v2}, Lcom/millennialmedia/android/HttpRedirection$Listener;->didFailToResolveUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 299
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_6
    if-eqz v6, :cond_1

    .line 301
    const-string v8, "Could not start activity for %s"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    iget-object v8, p0, Lcom/millennialmedia/android/HttpRedirection$1;->val$uri:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/millennialmedia/android/HttpRedirection$Listener;->didFailToResolveUri(Landroid/net/Uri;)V

    goto :goto_0
.end method
