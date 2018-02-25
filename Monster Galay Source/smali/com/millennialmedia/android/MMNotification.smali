.class Lcom/millennialmedia/android/MMNotification;
.super Lcom/millennialmedia/android/MMJSObject;
.source "MMNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private index:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public declared-synchronized alert(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/millennialmedia/android/MMNotification;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 42
    .local v0, "context":Landroid/content/Context;
    move-object v2, p1

    .line 44
    .local v2, "finalArguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 46
    new-instance v4, Lcom/millennialmedia/android/MMNotification$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/millennialmedia/android/MMNotification$1;-><init>(Lcom/millennialmedia/android/MMNotification;Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-static {v4}, Lcom/millennialmedia/android/MMAdViewSDK;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 72
    new-instance v3, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v3}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 73
    .local v3, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v4, 0x1

    iput v4, v3, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 74
    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, Lcom/millennialmedia/android/MMNotification;->index:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    iput-object v4, v3, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .end local v3    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :goto_0
    monitor-exit p0

    return-object v3

    .line 77
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 41
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "finalArguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 24
    monitor-enter p0

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 25
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/millennialmedia/android/MMNotification;->index:I

    .line 26
    :cond_0
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/millennialmedia/android/MMNotification;->index:I

    .line 28
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/millennialmedia/android/MMNotification;->index:I

    .line 30
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public vibrate(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/millennialmedia/android/MMNotification;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 92
    .local v0, "context":Landroid/content/Context;
    const-wide/16 v1, 0x0

    .line 94
    .local v1, "time":J
    const-string v4, "duration"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    const-string v4, "duration"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-long v1, v4

    .line 97
    :cond_0
    if-eqz v0, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_2

    .line 99
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.permission.VIBRATE"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 101
    const-string v4, "vibrator"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 102
    .local v3, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v3, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 103
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    .line 110
    .end local v3    # "vibrator":Landroid/os/Vibrator;
    :goto_0
    return-object v4

    .line 107
    :cond_1
    const-string v4, "The required permissions to vibrate are not set."

    invoke-static {v4}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    goto :goto_0

    .line 110
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method
