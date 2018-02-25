.class Lcom/ansca/corona/CoronaRuntimeTaskDispatcher$TaskEvent;
.super Lcom/ansca/corona/events/Event;
.source "CoronaRuntimeTaskDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskEvent"
.end annotation


# instance fields
.field private fTask:Lcom/ansca/corona/CoronaRuntimeTask;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaRuntimeTask;)V
    .locals 1
    .param p1, "task"    # Lcom/ansca/corona/CoronaRuntimeTask;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher$TaskEvent;->fTask:Lcom/ansca/corona/CoronaRuntimeTask;

    .line 136
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 2

    .prologue
    .line 142
    iget-object v1, p0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher$TaskEvent;->fTask:Lcom/ansca/corona/CoronaRuntimeTask;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-static {}, Lcom/ansca/corona/Controller;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    .line 148
    .local v0, "runtime":Lcom/ansca/corona/CoronaRuntime;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher$TaskEvent;->fTask:Lcom/ansca/corona/CoronaRuntimeTask;

    invoke-interface {v1, v0}, Lcom/ansca/corona/CoronaRuntimeTask;->executeUsing(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0
.end method
