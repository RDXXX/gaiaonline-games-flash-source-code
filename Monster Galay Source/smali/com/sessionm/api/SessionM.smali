.class public Lcom/sessionm/api/SessionM;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sessionm/api/SessionM$ActivityType;,
        Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;
    }
.end annotation


# static fields
.field protected static instance:Lcom/sessionm/api/SessionM;

.field public static userOptOutState:Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;


# instance fields
.field private activityListener:Lcom/sessionm/api/ActivityListener;

.field private sessionListener:Lcom/sessionm/api/SessionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;->UNKNOWN:Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    sput-object v0, Lcom/sessionm/api/SessionM;->userOptOutState:Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    sput-object p0, Lcom/sessionm/api/SessionM;->instance:Lcom/sessionm/api/SessionM;

    .line 98
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sessionm/api/SessionM;
    .locals 2

    .prologue
    .line 106
    const-class v1, Lcom/sessionm/api/SessionM;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sessionm/api/SessionM;->instance:Lcom/sessionm/api/SessionM;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/sessionm/api/SessionM;

    invoke-direct {v0}, Lcom/sessionm/api/SessionM;-><init>()V

    sput-object v0, Lcom/sessionm/api/SessionM;->instance:Lcom/sessionm/api/SessionM;

    .line 109
    :cond_0
    sget-object v0, Lcom/sessionm/api/SessionM;->instance:Lcom/sessionm/api/SessionM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getActivityListener()Lcom/sessionm/api/ActivityListener;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sessionm/api/SessionM;->activityListener:Lcom/sessionm/api/ActivityListener;

    return-object v0
.end method

.method public getConfig()Lcom/sessionm/api/Config;
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/sessionm/core/SessionMAndroidConfig;->getInstance()Lcom/sessionm/core/SessionMAndroidConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionListener()Lcom/sessionm/api/SessionListener;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sessionm/api/SessionM;->sessionListener:Lcom/sessionm/api/SessionListener;

    return-object v0
.end method

.method public getUser()Lcom/sessionm/api/User;
    .locals 1

    .prologue
    .line 296
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/core/Session;->getUser()Lcom/sessionm/api/User;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getUserOptOutState(Landroid/content/Context;)Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;
    .locals 1

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sessionm/api/SessionM;->getUser()Lcom/sessionm/api/User;

    move-result-object v0

    .line 326
    if-nez v0, :cond_0

    .line 327
    sget-object v0, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;->UNKNOWN:Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :goto_0
    monitor-exit p0

    return-object v0

    .line 330
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/sessionm/api/User;->isOptedOut()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;->OPTED_OUT:Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    :goto_1
    sput-object v0, Lcom/sessionm/api/SessionM;->userOptOutState:Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    .line 331
    sget-object v0, Lcom/sessionm/api/SessionM;->userOptOutState:Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    goto :goto_0

    .line 330
    :cond_1
    sget-object v0, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;->OPTED_IN:Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized logAction(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sessionm/core/Session;->logAction(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActivityPause(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Activity is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sessionm/core/Session;->onActivityPause(Landroid/app/Activity;)V

    .line 223
    return-void
.end method

.method public onActivityResume(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 204
    if-nez p1, :cond_0

    .line 205
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Activity is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/core/Session;->startSession()Z

    .line 209
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sessionm/core/Session;->onActivityResume(Landroid/app/Activity;)V

    .line 210
    return-void
.end method

.method public onActivityStart(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Activity is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sessionm/core/Session;->onActivityStart(Landroid/app/Activity;)V

    .line 196
    return-void
.end method

.method public onActivityStop(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 232
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Activity is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sessionm/core/Session;->onActivityStop(Landroid/app/Activity;)V

    .line 236
    return-void
.end method

.method public declared-synchronized presentActivity(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 390
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/sessionm/api/SessionM;->presentActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized presentActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 372
    monitor-enter p0

    if-nez p1, :cond_0

    .line 373
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 375
    :cond_0
    :try_start_1
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity as context is expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_1
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Lcom/sessionm/core/Session;->presentActivity(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    monitor-exit p0

    return-void
.end method

.method public varargs declared-synchronized presentActivity(Lcom/sessionm/api/SessionM$ActivityType;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 245
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lcom/sessionm/core/Session;->isDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sessionm/core/Session;->getSessionState()Lcom/sessionm/core/Session$State;

    move-result-object v2

    sget-object v3, Lcom/sessionm/core/Session$State;->STARTED:Lcom/sessionm/core/Session$State;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/sessionm/core/Session;->getCurrentActivityController()Lcom/sessionm/ui/ActivityController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    .line 270
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 249
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/sessionm/core/Session;->getVisibleActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_2

    .line 250
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Visible activity is null. Ensure that activity extends com.sessionm.api.BaseActivity or calls SessionM.onActivity lifecycle methods."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 255
    :cond_2
    :try_start_2
    sget-object v2, Lcom/sessionm/api/SessionM$ActivityType;->PORTAL:Lcom/sessionm/api/SessionM$ActivityType;

    if-ne p1, v2, :cond_4

    .line 257
    if-eqz p2, :cond_3

    array-length v2, p2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    aget-object v2, p2, v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 258
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    .line 260
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sessionm/core/Session;->presentPortal(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_4
    sget-object v2, Lcom/sessionm/api/SessionM$ActivityType;->INTRODUCTION:Lcom/sessionm/api/SessionM$ActivityType;

    if-ne p1, v2, :cond_5

    .line 262
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/sessionm/core/Session;->presentIntroduction(Landroid/app/Activity;)V

    goto :goto_0

    .line 263
    :cond_5
    sget-object v2, Lcom/sessionm/api/SessionM$ActivityType;->ACHIEVEMENT:Lcom/sessionm/api/SessionM$ActivityType;

    if-ne p1, v2, :cond_0

    .line 265
    if-eqz p2, :cond_6

    array-length v2, p2

    if-lez v2, :cond_6

    const/4 v2, 0x0

    aget-object v2, p2, v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 266
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    .line 268
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sessionm/core/Session;->presentActivity(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized presentIntroduction(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 353
    monitor-enter p0

    if-nez p1, :cond_0

    .line 354
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 356
    :cond_0
    :try_start_1
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity as context is expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lcom/sessionm/core/Session;->presentIntroduction(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized presentPortal(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 401
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sessionm/api/SessionM;->presentPortal(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    monitor-exit p0

    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized presentPortal(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 413
    monitor-enter p0

    if-nez p1, :cond_0

    .line 414
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 416
    :cond_0
    :try_start_1
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 417
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity as context is expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_1
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Lcom/sessionm/core/Session;->presentPortal(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    monitor-exit p0

    return-void
.end method

.method public setActivityListener(Lcom/sessionm/api/ActivityListener;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sessionm/api/SessionM;->activityListener:Lcom/sessionm/api/ActivityListener;

    .line 158
    return-void
.end method

.method public declared-synchronized setMetaData(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sessionm/core/Session;->setMetaData(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSessionListener(Lcom/sessionm/api/SessionListener;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sessionm/api/SessionM;->sessionListener:Lcom/sessionm/api/SessionListener;

    .line 140
    return-void
.end method

.method public declared-synchronized setUserOptOutState(Landroid/content/Context;Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;)V
    .locals 2

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sessionm/api/SessionM;->getUser()Lcom/sessionm/api/User;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 308
    if-nez v0, :cond_0

    .line 316
    :goto_0
    monitor-exit p0

    return-void

    .line 311
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;->OPTED_IN:Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    if-ne p2, v1, :cond_1

    .line 312
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sessionm/api/User;->setOptedOut(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 314
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    invoke-interface {v0, v1}, Lcom/sessionm/api/User;->setOptedOut(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized startSession(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 173
    monitor-enter p0

    if-nez p1, :cond_0

    .line 174
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not initialize SessionM SDK due to null application context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 176
    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not initialize SessionM SDK due to null or empty API key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_2
    invoke-static {}, Lcom/sessionm/core/SessionMAndroidConfig;->getInstance()Lcom/sessionm/core/SessionMAndroidConfig;

    .line 182
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sessionm/core/Session;->startSession(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized wakeUp(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/core/Session;->startSession()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
