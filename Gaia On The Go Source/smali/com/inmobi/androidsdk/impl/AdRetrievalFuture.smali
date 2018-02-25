.class final Lcom/inmobi/androidsdk/impl/AdRetrievalFuture;
.super Ljava/util/concurrent/FutureTask;
.source "AdRetrievalFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 14
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "forceCancel"    # Z

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method
