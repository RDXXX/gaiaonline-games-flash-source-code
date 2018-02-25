.class Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;
.super Ljava/lang/Object;
.source "MMAdViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MMJSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewController;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/android/MMAdViewController;)V
    .locals 0

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdViewController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/millennialmedia/android/MMAdViewController;
    .param p2, "x1"    # Lcom/millennialmedia/android/MMAdViewController$1;

    .prologue
    .line 1132
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;-><init>(Lcom/millennialmedia/android/MMAdViewController;)V

    return-void
.end method


# virtual methods
.method public getUrl(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1140
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-object p1, v0, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    .line 1141
    const-string v0, "nextUrl: %s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1142
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mmvideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-boolean v4, v0, Lcom/millennialmedia/android/OverlaySettings;->shouldLaunchToOverlay:Z

    .line 1144
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1279
    invoke-static {p1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1280
    return-void
.end method

.method public overlayTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-object p1, v0, Lcom/millennialmedia/android/OverlaySettings;->overlayTitle:Ljava/lang/String;

    .line 1202
    return-void
.end method

.method public overlayTransition(Ljava/lang/String;J)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-object p1, v0, Lcom/millennialmedia/android/OverlaySettings;->overlayTransition:Ljava/lang/String;

    .line 1213
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-wide p2, v0, Lcom/millennialmedia/android/OverlaySettings;->transitionTime:J

    .line 1214
    return-void
.end method

.method public shouldAccelerate(Z)V
    .locals 2
    .param p1, "shouldAccelerate"    # Z

    .prologue
    .line 1223
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 1224
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-eqz v0, :cond_0

    .line 1225
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-boolean p1, v1, Lcom/millennialmedia/android/OverlaySettings;->canAccelerate:Z

    .line 1226
    :cond_0
    return-void
.end method

.method public shouldEnableBottomBar(Z)V
    .locals 1
    .param p1, "enableBottomBar"    # Z

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-boolean p1, v0, Lcom/millennialmedia/android/OverlaySettings;->shouldEnableBottomBar:Z

    .line 1262
    return-void
.end method

.method public shouldMakeOverlayTransparent(Z)V
    .locals 1
    .param p1, "isTransparent"    # Z

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-boolean p1, v0, Lcom/millennialmedia/android/OverlaySettings;->shouldMakeOverlayTransparent:Z

    .line 1271
    return-void
.end method

.method public shouldOpen(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1154
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 1155
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_1

    .line 1157
    const-string v1, "The reference to the ad view was broken."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    .line 1183
    :cond_0
    :goto_0
    return-void

    .line 1161
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/millennialmedia/android/OverlaySettings;->shouldLaunchToOverlay:Z

    .line 1162
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/android/MMAdViewController;->handleClick(Ljava/lang/String;)V

    .line 1165
    iget-object v1, v0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v1, :cond_0

    .line 1167
    new-instance v1, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface$1;-><init>(Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;Lcom/millennialmedia/android/MMAdView;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public shouldOverlay(Z)V
    .locals 1
    .param p1, "shouldOverlay"    # Z

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-boolean p1, v0, Lcom/millennialmedia/android/OverlaySettings;->shouldLaunchToOverlay:Z

    .line 1192
    return-void
.end method

.method public shouldResizeOverlay(I)V
    .locals 1
    .param p1, "padding"    # I

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput p1, v0, Lcom/millennialmedia/android/OverlaySettings;->shouldResizeOverlay:I

    .line 1235
    return-void
.end method

.method public shouldShowBottomBar(Z)V
    .locals 1
    .param p1, "showBottomBar"    # Z

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-boolean p1, v0, Lcom/millennialmedia/android/OverlaySettings;->shouldShowBottomBar:Z

    .line 1253
    return-void
.end method

.method public shouldShowTitlebar(Z)V
    .locals 1
    .param p1, "showTitlebar"    # Z

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-boolean p1, v0, Lcom/millennialmedia/android/OverlaySettings;->shouldShowTitlebar:Z

    .line 1244
    return-void
.end method

.method public vibrate(I)V
    .locals 6
    .param p1, "time"    # I

    .prologue
    .line 1291
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 1292
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-eqz v0, :cond_0

    .line 1296
    :try_start_0
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1297
    .local v1, "context":Landroid/content/Context;
    const-string v4, "vibrator"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 1298
    .local v3, "vibrator":Landroid/os/Vibrator;
    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1308
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    :goto_0
    return-void

    .line 1300
    :catch_0
    move-exception v2

    .line 1302
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v4, "Advertisement is trying to use vibrator but permissions are missing."

    invoke-static {v4}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 1304
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method
