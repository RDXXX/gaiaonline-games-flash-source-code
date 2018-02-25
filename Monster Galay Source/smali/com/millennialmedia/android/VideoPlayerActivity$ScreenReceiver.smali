.class Lcom/millennialmedia/android/VideoPlayerActivity$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayerActivity;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1356
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$ScreenReceiver;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity;Lcom/millennialmedia/android/VideoPlayerActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;
    .param p2, "x1"    # Lcom/millennialmedia/android/VideoPlayerActivity$1;

    .prologue
    .line 1356
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity$ScreenReceiver;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1361
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1363
    const-string v0, "VideoPlayerActivity - Screen off"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$ScreenReceiver;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1702(Lcom/millennialmedia/android/VideoPlayerActivity;Z)Z

    .line 1376
    :cond_0
    :goto_0
    return-void

    .line 1366
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1368
    const-string v0, "VideoPlayerActivity - Screen on"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 1370
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1372
    const-string v0, "VideoPlayerActivity - Screen unlocked"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1373
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$ScreenReceiver;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1800(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    .line 1374
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$ScreenReceiver;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1702(Lcom/millennialmedia/android/VideoPlayerActivity;Z)Z

    goto :goto_0
.end method
