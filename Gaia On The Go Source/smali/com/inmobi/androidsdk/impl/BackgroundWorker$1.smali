.class Lcom/inmobi/androidsdk/impl/BackgroundWorker$1;
.super Ljava/lang/Object;
.source "BackgroundWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/impl/BackgroundWorker;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inmobi/androidsdk/impl/BackgroundWorker;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/impl/BackgroundWorker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/BackgroundWorker$1;->this$0:Lcom/inmobi/androidsdk/impl/BackgroundWorker;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 22
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/BackgroundWorker$1;->this$0:Lcom/inmobi/androidsdk/impl/BackgroundWorker;

    new-instance v1, Lcom/inmobi/androidsdk/impl/BackgroundWorker$1$1;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/impl/BackgroundWorker$1$1;-><init>(Lcom/inmobi/androidsdk/impl/BackgroundWorker$1;)V

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/impl/BackgroundWorker;->access$0(Lcom/inmobi/androidsdk/impl/BackgroundWorker;Landroid/os/Handler;)V

    .line 36
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 37
    return-void
.end method
