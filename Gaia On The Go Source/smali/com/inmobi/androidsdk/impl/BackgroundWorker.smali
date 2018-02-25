.class Lcom/inmobi/androidsdk/impl/BackgroundWorker;
.super Ljava/lang/Object;
.source "BackgroundWorker.java"


# instance fields
.field private looper:Landroid/os/Looper;

.field private messageHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/inmobi/androidsdk/impl/BackgroundWorker;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/BackgroundWorker;->messageHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method getMessageHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/BackgroundWorker;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/BackgroundWorker;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 48
    return-void
.end method

.method start()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/androidsdk/impl/BackgroundWorker$1;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/impl/BackgroundWorker$1;-><init>(Lcom/inmobi/androidsdk/impl/BackgroundWorker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 39
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    return-void
.end method
