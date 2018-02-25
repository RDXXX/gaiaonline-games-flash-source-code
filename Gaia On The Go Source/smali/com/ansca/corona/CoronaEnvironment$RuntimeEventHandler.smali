.class Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;
.super Ljava/lang/Object;
.source "CoronaEnvironment.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RuntimeEventHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaEnvironment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ansca/corona/CoronaEnvironment$1;

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;-><init>()V

    return-void
.end method

.method private cloneListenerCollection()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ansca/corona/CoronaRuntimeListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 471
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onExiting(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 3
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeListener;

    .line 529
    .local v1, "listener":Lcom/ansca/corona/CoronaRuntimeListener;
    if-eqz v1, :cond_0

    .line 530
    invoke-interface {v1, p1}, Lcom/ansca/corona/CoronaRuntimeListener;->onExiting(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    .line 533
    .end local v1    # "listener":Lcom/ansca/corona/CoronaRuntimeListener;
    :cond_1
    return-void
.end method

.method public onLoaded(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 3
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeListener;

    .line 481
    .local v1, "listener":Lcom/ansca/corona/CoronaRuntimeListener;
    if-eqz v1, :cond_0

    .line 482
    invoke-interface {v1, p1}, Lcom/ansca/corona/CoronaRuntimeListener;->onLoaded(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    .line 485
    .end local v1    # "listener":Lcom/ansca/corona/CoronaRuntimeListener;
    :cond_1
    return-void
.end method

.method public onResumed(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 3
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeListener;

    .line 517
    .local v1, "listener":Lcom/ansca/corona/CoronaRuntimeListener;
    if-eqz v1, :cond_0

    .line 518
    invoke-interface {v1, p1}, Lcom/ansca/corona/CoronaRuntimeListener;->onResumed(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    .line 521
    .end local v1    # "listener":Lcom/ansca/corona/CoronaRuntimeListener;
    :cond_1
    return-void
.end method

.method public onStarted(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 3
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeListener;

    .line 493
    .local v1, "listener":Lcom/ansca/corona/CoronaRuntimeListener;
    if-eqz v1, :cond_0

    .line 494
    invoke-interface {v1, p1}, Lcom/ansca/corona/CoronaRuntimeListener;->onStarted(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    .line 497
    .end local v1    # "listener":Lcom/ansca/corona/CoronaRuntimeListener;
    :cond_1
    return-void
.end method

.method public onSuspended(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 3
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeListener;

    .line 505
    .local v1, "listener":Lcom/ansca/corona/CoronaRuntimeListener;
    if-eqz v1, :cond_0

    .line 506
    invoke-interface {v1, p1}, Lcom/ansca/corona/CoronaRuntimeListener;->onSuspended(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0

    .line 509
    .end local v1    # "listener":Lcom/ansca/corona/CoronaRuntimeListener;
    :cond_1
    return-void
.end method
