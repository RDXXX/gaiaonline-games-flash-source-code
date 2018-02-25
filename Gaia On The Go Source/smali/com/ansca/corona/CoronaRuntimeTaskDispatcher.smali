.class public Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
.super Ljava/lang/Object;
.source "CoronaRuntimeTaskDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaRuntimeTaskDispatcher$TaskEvent;
    }
.end annotation


# instance fields
.field private fRuntime:Lcom/ansca/corona/CoronaRuntime;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->fRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/naef/jnlua/LuaState;)V
    .locals 2
    .param p1, "luaState"    # Lcom/naef/jnlua/LuaState;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->fRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-static {}, Lcom/ansca/corona/Controller;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    .line 58
    .local v0, "runtime":Lcom/ansca/corona/CoronaRuntime;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 59
    iput-object v0, p0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->fRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 62
    .end local v0    # "runtime":Lcom/ansca/corona/CoronaRuntime;
    :cond_0
    return-void
.end method


# virtual methods
.method public isRuntimeAvailable()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->fRuntime:Lcom/ansca/corona/CoronaRuntime;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->fRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->wasNotDisposed()Z

    move-result v0

    goto :goto_0
.end method

.method public isRuntimeUnavailable()Z
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->isRuntimeAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send(Lcom/ansca/corona/CoronaRuntimeTask;)V
    .locals 2
    .param p1, "task"    # Lcom/ansca/corona/CoronaRuntimeTask;

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->isRuntimeUnavailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    .line 117
    .local v0, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v0, :cond_1

    .line 118
    new-instance v1, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher$TaskEvent;

    invoke-direct {v1, p1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher$TaskEvent;-><init>(Lcom/ansca/corona/CoronaRuntimeTask;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    goto :goto_0
.end method
