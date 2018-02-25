.class public Lcom/ansca/corona/events/NotificationReceivedEvent;
.super Lcom/ansca/corona/events/Event;
.source "NotificationReceivedEvent.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "notification"


# instance fields
.field private fApplicationStateName:Ljava/lang/String;

.field private fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)V
    .locals 1
    .param p1, "applicationStateName"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 27
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32
    :cond_1
    iput-object p1, p0, Lcom/ansca/corona/events/NotificationReceivedEvent;->fApplicationStateName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/ansca/corona/events/NotificationReceivedEvent;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    .line 34
    return-void
.end method

.method private getNotificationTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ansca/corona/events/NotificationReceivedEvent;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->isSourceLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/ansca/corona/notifications/NotificationType;->LOCAL:Lcom/ansca/corona/notifications/NotificationType;

    invoke-virtual {v0}, Lcom/ansca/corona/notifications/NotificationType;->toInvariantString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ansca/corona/notifications/NotificationType;->REMOTE:Lcom/ansca/corona/notifications/NotificationType;

    invoke-virtual {v0}, Lcom/ansca/corona/notifications/NotificationType;->toInvariantString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public Send()V
    .locals 4

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "luaState":Lcom/naef/jnlua/LuaState;
    invoke-static {}, Lcom/ansca/corona/Controller;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object v2

    .line 42
    .local v2, "runtime":Lcom/ansca/corona/CoronaRuntime;
    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v2}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 45
    :cond_0
    if-nez v0, :cond_1

    .line 73
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 51
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    .line 52
    .local v1, "luaTableStackIndex":I
    const-string v3, "notification"

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 53
    const-string v3, "name"

    invoke-virtual {v0, v1, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/ansca/corona/events/NotificationReceivedEvent;->getNotificationTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 55
    const-string v3, "type"

    invoke-virtual {v0, v1, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 56
    iget-object v3, p0, Lcom/ansca/corona/events/NotificationReceivedEvent;->fApplicationStateName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 57
    const-string v3, "applicationState"

    invoke-virtual {v0, v1, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 58
    iget-object v3, p0, Lcom/ansca/corona/events/NotificationReceivedEvent;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getContentText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 59
    const-string v3, "alert"

    invoke-virtual {v0, v1, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 60
    iget-object v3, p0, Lcom/ansca/corona/events/NotificationReceivedEvent;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getData()Lcom/ansca/corona/CoronaData$Table;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 61
    iget-object v3, p0, Lcom/ansca/corona/events/NotificationReceivedEvent;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getData()Lcom/ansca/corona/CoronaData$Table;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ansca/corona/CoronaData$Table;->pushTo(Lcom/naef/jnlua/LuaState;)Z

    .line 66
    :goto_1
    const-string v3, "custom"

    invoke-virtual {v0, v1, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->dispatchEventInLua()V

    .line 72
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->newTable()V

    goto :goto_1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "name"

    const-string v3, "notification"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "type"

    invoke-direct {p0}, Lcom/ansca/corona/events/NotificationReceivedEvent;->getNotificationTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "applicationState"

    iget-object v3, p0, Lcom/ansca/corona/events/NotificationReceivedEvent;->fApplicationStateName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "alert"

    iget-object v3, p0, Lcom/ansca/corona/events/NotificationReceivedEvent;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getContentText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/ansca/corona/events/NotificationReceivedEvent;->fStatusBarSettings:Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getData()Lcom/ansca/corona/CoronaData$Table;

    move-result-object v1

    .line 87
    .local v1, "customData":Lcom/ansca/corona/CoronaData$Table;
    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/ansca/corona/CoronaData$Table;

    .end local v1    # "customData":Lcom/ansca/corona/CoronaData$Table;
    invoke-direct {v1}, Lcom/ansca/corona/CoronaData$Table;-><init>()V

    .line 90
    .restart local v1    # "customData":Lcom/ansca/corona/CoronaData$Table;
    :cond_0
    const-string v2, "custom"

    new-instance v3, Lcom/ansca/corona/CoronaData$Proxy;

    invoke-direct {v3, v1}, Lcom/ansca/corona/CoronaData$Proxy;-><init>(Lcom/ansca/corona/CoronaData;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 91
    return-object v0
.end method
