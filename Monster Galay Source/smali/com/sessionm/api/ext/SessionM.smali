.class public Lcom/sessionm/api/ext/SessionM;
.super Lcom/sessionm/api/SessionM;
.source "ProGuard"


# static fields
.field private static instance:Lcom/sessionm/api/ext/SessionM;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/sessionm/api/SessionM;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sessionm/api/ext/SessionM;
    .locals 2

    .prologue
    .line 14
    const-class v1, Lcom/sessionm/api/ext/SessionM;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sessionm/api/ext/SessionM;->instance:Lcom/sessionm/api/ext/SessionM;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/sessionm/api/ext/SessionM;

    invoke-direct {v0}, Lcom/sessionm/api/ext/SessionM;-><init>()V

    sput-object v0, Lcom/sessionm/api/ext/SessionM;->instance:Lcom/sessionm/api/ext/SessionM;

    .line 17
    :cond_0
    sget-object v0, Lcom/sessionm/api/ext/SessionM;->instance:Lcom/sessionm/api/ext/SessionM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public setSkipBlacklist(Z)V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sessionm/core/Session;->setSkipBlacklist(Z)V

    .line 22
    return-void
.end method

.method public stopSession()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/core/Session;->stopSession()V

    .line 26
    return-void
.end method
