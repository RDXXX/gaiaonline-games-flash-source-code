.class public Lcom/ansca/corona/events/NotificationRegistrationEvent;
.super Lcom/ansca/corona/events/Event;
.source "NotificationRegistrationEvent.java"


# instance fields
.field private fRegistrationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 16
    if-nez p1, :cond_0

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/events/NotificationRegistrationEvent;->fRegistrationId:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 4

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "luaState":Lcom/naef/jnlua/LuaState;
    invoke-static {}, Lcom/ansca/corona/Controller;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object v2

    .line 30
    .local v2, "runtime":Lcom/ansca/corona/CoronaRuntime;
    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v2}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 33
    :cond_0
    if-nez v0, :cond_1

    .line 52
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 39
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    .line 40
    .local v1, "luaTableStackIndex":I
    const-string v3, "notification"

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 41
    const-string v3, "name"

    invoke-virtual {v0, v1, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 42
    sget-object v3, Lcom/ansca/corona/notifications/NotificationType;->REMOTE_REGISTRATION:Lcom/ansca/corona/notifications/NotificationType;

    invoke-virtual {v3}, Lcom/ansca/corona/notifications/NotificationType;->toInvariantString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 43
    const-string v3, "type"

    invoke-virtual {v0, v1, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 44
    iget-object v3, p0, Lcom/ansca/corona/events/NotificationRegistrationEvent;->fRegistrationId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 45
    const-string v3, "token"

    invoke-virtual {v0, v1, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->dispatchEventInLua()V

    .line 51
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto :goto_0
.end method
