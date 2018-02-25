.class Lcom/inmobi/androidsdk/impl/BackgroundWorker$1$1;
.super Landroid/os/Handler;
.source "BackgroundWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/impl/BackgroundWorker$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/inmobi/androidsdk/impl/BackgroundWorker$1;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/impl/BackgroundWorker$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/BackgroundWorker$1$1;->this$1:Lcom/inmobi/androidsdk/impl/BackgroundWorker$1;

    .line 22
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 26
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    .line 27
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "InmobiAndroidSDK2.3"

    .line 30
    const-string v3, "Caught exception while downloading and displaying ad"

    .line 29
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
