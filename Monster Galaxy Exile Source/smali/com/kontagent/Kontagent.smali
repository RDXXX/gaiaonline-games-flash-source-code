.class public Lcom/kontagent/Kontagent;
.super Ljava/lang/Object;
.source "Kontagent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kontagent/Kontagent$KontagentStateful;
    }
.end annotation


# static fields
.field public static API_VERSION:Ljava/lang/String; = null

.field protected static final APPLICATION_ADDED:Ljava/lang/String; = "apa"

.field protected static final CUSTOM_EVENT:Ljava/lang/String; = "evt"

.field private static final DEFAULT_HEARTBEAT_TIMEOUT:J = 0x1d4c0L

.field protected static final FAKETEST_URL_PREFIX:Ljava/lang/String; = "http://74.86.105.35/api/v1/"

.field public static final FEEDPUB:Ljava/lang/String; = "feedpub"

.field private static final GOAL_COUNT:Ljava/lang/String; = "gci"

.field private static final INVITE_RESPONSE:Ljava/lang/String; = "inr"

.field private static final INVITE_SENT:Ljava/lang/String; = "ins"

.field private static final MESSAGE_RECEIVED:Ljava/lang/String; = "mer"

.field private static final MESSAGE_SENT:Ljava/lang/String; = "mes"

.field private static final NOTIFICATION_EMAIL_RESPONSE:Ljava/lang/String; = "nei"

.field private static final NOTIFICATION_EMAIL_SENT:Ljava/lang/String; = "nes"

.field private static final PAGE_REQUEST:Ljava/lang/String; = "pgr"

.field public static final PRODUCTION_MODE:Ljava/lang/String; = "production"

.field private static final REVENUE_TRACKING:Ljava/lang/String; = "mtu"

.field private static final STREAM_POST:Ljava/lang/String; = "pst"

.field private static final STREAM_POST_RESPONSE:Ljava/lang/String; = "psr"

.field public static final TEST_MODE:Ljava/lang/String; = "test"

.field protected static final TEST_URL_PREFIX:Ljava/lang/String; = "http://test-server.kontagent.net/api/v1/"

.field private static final UNDIRECTED_COMMUNICATION_CLICK:Ljava/lang/String; = "ucc"

.field protected static final UNIT_TEST_URL_PREFIX:Ljava/lang/String; = "http://test.com/"

.field private static final URL_PREFIX:Ljava/lang/String; = "http://api.geo.kontagent.net/api/v1/"

.field private static final USER_INFORMATION:Ljava/lang/String; = "cpu"

.field private static apiKey:Ljava/lang/String;

.field private static context:Landroid/content/Context;

.field private static debug:Z

.field private static experimental:Z

.field private static handler:Landroid/os/Handler;

.field private static final heartbeatRunnable:Ljava/lang/Runnable;

.field private static prefs:Lcom/kontagent/KontagentPrefs;

.field private static queueManager:Lcom/kontagent/QueueManager;

.field private static senderId:Ljava/lang/String;

.field private static final stateful:Lcom/kontagent/Kontagent$KontagentStateful;

.field private static test:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    const-string v0, "1.0.2-RC1"

    sput-object v0, Lcom/kontagent/Kontagent;->API_VERSION:Ljava/lang/String;

    .line 32
    sput-object v2, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kontagent/Kontagent;->test:Z

    .line 37
    sput-boolean v1, Lcom/kontagent/Kontagent;->debug:Z

    .line 38
    sput-boolean v1, Lcom/kontagent/Kontagent;->experimental:Z

    .line 70
    new-instance v0, Lcom/kontagent/Kontagent$1;

    invoke-direct {v0}, Lcom/kontagent/Kontagent$1;-><init>()V

    sput-object v0, Lcom/kontagent/Kontagent;->heartbeatRunnable:Ljava/lang/Runnable;

    .line 105
    new-instance v0, Lcom/kontagent/Kontagent$KontagentStateful;

    invoke-direct {v0, v2}, Lcom/kontagent/Kontagent$KontagentStateful;-><init>(Lcom/kontagent/Kontagent$1;)V

    sput-object v0, Lcom/kontagent/Kontagent;->stateful:Lcom/kontagent/Kontagent$KontagentStateful;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/kontagent/Kontagent;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Lcom/kontagent/QueueManager;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/kontagent/Kontagent;->queueManager:Lcom/kontagent/QueueManager;

    return-object v0
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/kontagent/Kontagent;->startHeartbeatTimer()V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/kontagent/Kontagent;->stopHeartbeatTimer()V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/kontagent/Kontagent;->deinit()V

    return-void
.end method

.method public static applicationAdded()V
    .locals 2

    .prologue
    .line 243
    const-string v1, "applicationAdded"

    invoke-static {v1}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 245
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 246
    .restart local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/kontagent/Kontagent;->applicationAdded(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static applicationAdded(Ljava/util/Map;)V
    .locals 2
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
    .line 236
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "applicationAdded"

    invoke-static {v0}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    const-string v0, "s"

    sget-object v1, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v0, "apa"

    invoke-static {v0, p0}, Lcom/kontagent/Kontagent;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kontagent/Kontagent;->send(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static assertStarted(Ljava/lang/String;)Z
    .locals 2
    .param p0, "requestName"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {}, Lcom/kontagent/Kontagent;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kontagent not started. Ignoring request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .param p0, "apiCall"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 692
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/kontagent/Kontagent;->processOptionalParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 693
    .local v0, "newParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 695
    .local v1, "params_string":Ljava/lang/StringBuffer;
    if-eqz v0, :cond_0

    .line 696
    invoke-static {v0}, Lcom/kontagent/util/MapUtil;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 698
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kontagent/Kontagent;->urlPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/kontagent/Kontagent;->apiKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static customEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "optionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "customEvent"

    invoke-static {v1}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-static {p1}, Lcom/kontagent/Kontagent;->processOptionalParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 258
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "s"

    sget-object v2, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "n"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "evt"

    invoke-static {v1, v0}, Lcom/kontagent/Kontagent;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kontagent/Kontagent;->send(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static debugEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 589
    sget-boolean v0, Lcom/kontagent/Kontagent;->debug:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static deinit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 125
    sput-object v0, Lcom/kontagent/Kontagent;->apiKey:Ljava/lang/String;

    .line 126
    sput-object v0, Lcom/kontagent/Kontagent;->context:Landroid/content/Context;

    .line 127
    sput-object v0, Lcom/kontagent/Kontagent;->handler:Landroid/os/Handler;

    .line 128
    sput-object v0, Lcom/kontagent/Kontagent;->queueManager:Lcom/kontagent/QueueManager;

    .line 129
    sput-object v0, Lcom/kontagent/Kontagent;->prefs:Lcom/kontagent/KontagentPrefs;

    .line 130
    return-void
.end method

.method public static disableDebug()V
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kontagent/Kontagent;->debug:Z

    .line 582
    return-void
.end method

.method public static enableDebug()V
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kontagent/Kontagent;->debug:Z

    .line 570
    invoke-static {}, Lcom/kontagent/KontagentLog;->enable()V

    .line 571
    return-void
.end method

.method public static enableExperimentalFeatures()V
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kontagent/Kontagent;->experimental:Z

    .line 575
    return-void
.end method

.method public static generateShortUniqueTrackingTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    invoke-static {}, Lcom/kontagent/util/GUIDUtil;->generateShortTrackingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateUniqueTrackingTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    invoke-static {}, Lcom/kontagent/util/GUIDUtil;->generateTrackingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getQueueManager()Lcom/kontagent/QueueManager;
    .locals 1

    .prologue
    .line 732
    sget-object v0, Lcom/kontagent/Kontagent;->queueManager:Lcom/kontagent/QueueManager;

    return-object v0
.end method

.method protected static getStateful()Lcom/kontagent/Stateful;
    .locals 1

    .prologue
    .line 736
    sget-object v0, Lcom/kontagent/Kontagent;->stateful:Lcom/kontagent/Kontagent$KontagentStateful;

    return-object v0
.end method

.method public static goalCount(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3
    .param p0, "goalCountId"    # Ljava/lang/Integer;
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 271
    const-string v1, "goalCount"

    invoke-static {v1}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    :goto_0
    return-void

    .line 273
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 274
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "s"

    sget-object v2, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v1, "gci"

    invoke-static {v1, v0}, Lcom/kontagent/Kontagent;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kontagent/Kontagent;->send(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static heartbeat()V
    .locals 1

    .prologue
    .line 537
    const-string v0, "heartbeat"

    invoke-static {v0}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    :goto_0
    return-void

    .line 539
    :cond_0
    const-string v0, "Heartbeat!"

    invoke-static {v0}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;)I

    .line 540
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kontagent/Kontagent;->pageRequest(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static init(Ljava/lang/String;Landroid/content/Context;Lcom/kontagent/QueueManager;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "apiKey"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "queueManager"    # Lcom/kontagent/QueueManager;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "senderId"    # Ljava/lang/Integer;

    .prologue
    .line 110
    sput-object p0, Lcom/kontagent/Kontagent;->apiKey:Ljava/lang/String;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kontagent/Kontagent;->handler:Landroid/os/Handler;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/kontagent/Kontagent;->context:Landroid/content/Context;

    .line 113
    sput-object p2, Lcom/kontagent/Kontagent;->queueManager:Lcom/kontagent/QueueManager;

    .line 114
    new-instance v0, Lcom/kontagent/KontagentPrefs;

    sget-object v1, Lcom/kontagent/Kontagent;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kontagent/KontagentPrefs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kontagent/Kontagent;->prefs:Lcom/kontagent/KontagentPrefs;

    .line 115
    invoke-static {p4}, Lcom/kontagent/Kontagent;->setSenderId(Ljava/lang/Integer;)V

    .line 117
    const-string v0, "production"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kontagent/Kontagent;->setTest(Z)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kontagent/Kontagent;->setTest(Z)V

    goto :goto_0
.end method

.method public static inviteResponse(ZLjava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "applicationInstalled"    # Z
    .param p1, "trackingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p2, "optionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "inviteResponse"

    invoke-static {v1}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-static {p2}, Lcom/kontagent/Kontagent;->processOptionalParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 319
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "i"

    if-eqz p0, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v1, "u"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v1, "inr"

    invoke-static {v1, v0}, Lcom/kontagent/Kontagent;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kontagent/Kontagent;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method public static inviteSent(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "recipientId"    # Ljava/lang/Integer;
    .param p1, "trackingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p2, "optionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "inviteSent"

    invoke-static {v1}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    :goto_0
    return-void

    .line 290
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-static {v0, p1, p2}, Lcom/kontagent/Kontagent;->inviteSent(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected static inviteSent(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "trackingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "recipientIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "optionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "inviteSent"

    invoke-static {v1}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-static {p2}, Lcom/kontagent/Kontagent;->processOptionalParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 301
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "r"

    invoke-static {p0}, Lcom/kontagent/util/ListUtil;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v1, "u"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v1, "s"

    sget-object v2, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v1, "ins"

    invoke-static {v1, v0}, Lcom/kontagent/Kontagent;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kontagent/Kontagent;->send(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isExperimental()Z
    .locals 1

    .prologue
    .line 728
    sget-boolean v0, Lcom/kontagent/Kontagent;->experimental:Z

    return v0
.end method

.method private static isFirstRun()Z
    .locals 2

    .prologue
    .line 623
    sget-object v1, Lcom/kontagent/Kontagent;->prefs:Lcom/kontagent/KontagentPrefs;

    invoke-virtual {v1}, Lcom/kontagent/KontagentPrefs;->isFirstRun()Z

    move-result v0

    .line 624
    .local v0, "firstRun":Z
    if-eqz v0, :cond_0

    .line 625
    const-string v1, "First time application is being run."

    invoke-static {v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;)I

    .line 627
    :cond_0
    return v0
.end method

.method public static declared-synchronized isPaused()Z
    .locals 2

    .prologue
    .line 210
    const-class v1, Lcom/kontagent/Kontagent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kontagent/Kontagent;->stateful:Lcom/kontagent/Kontagent$KontagentStateful;

    invoke-virtual {v0}, Lcom/kontagent/Kontagent$KontagentStateful;->isPaused()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isRunning()Z
    .locals 2

    .prologue
    .line 205
    const-class v1, Lcom/kontagent/Kontagent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kontagent/Kontagent;->stateful:Lcom/kontagent/Kontagent$KontagentStateful;

    invoke-virtual {v0}, Lcom/kontagent/Kontagent$KontagentStateful;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kontagent/Kontagent;->stateful:Lcom/kontagent/Kontagent$KontagentStateful;

    invoke-virtual {v0}, Lcom/kontagent/Kontagent$KontagentStateful;->isPaused()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isStarted()Z
    .locals 2

    .prologue
    .line 201
    const-class v1, Lcom/kontagent/Kontagent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kontagent/Kontagent;->stateful:Lcom/kontagent/Kontagent$KontagentStateful;

    invoke-virtual {v0}, Lcom/kontagent/Kontagent$KontagentStateful;->isStarted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isTest()Z
    .locals 1

    .prologue
    .line 724
    sget-boolean v0, Lcom/kontagent/Kontagent;->test:Z

    return v0
.end method

.method public static messageResponse(ZLjava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "applicationInstalled"    # Z
    .param p1, "trackingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p2, "optionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "messageResponse"

    invoke-static {v1}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-static {p2}, Lcom/kontagent/Kontagent;->processOptionalParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 370
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "i"

    if-eqz p0, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v1, "tu"

    const-string v2, "dashboard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v1, "u"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v1, "s"

    sget-object v2, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v1, "mer"

    invoke-static {v1, v0}, Lcom/kontagent/Kontagent;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kontagent/Kontagent;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method public static messageSent(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "recipientId"    # Ljava/lang/Integer;
    .param p1, "trackingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p2, "optionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "messageSent"

    invoke-static {v0}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-static {p0}, Lcom/kontagent/Kontagent;->wrapAsList(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/kontagent/Kontagent;->messageSent(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected static messageSent(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "trackingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, "recipientIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "optionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "messageSent"

    invoke-static {v1}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-static {p2}, Lcom/kontagent/Kontagent;->processOptionalParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 351
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "r"

    invoke-static {p0}, Lcom/kontagent/util/ListUtil;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v1, "tu"

    const-string v2, "dashboard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v1, "u"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v1, "s"

    sget-object v2, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v1, "mes"

    invoke-static {v1, v0}, Lcom/kontagent/Kontagent;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kontagent/Kontagent;->send(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static notificationEmailResponse(ZLjava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "applicationInstalled"    # Z
    .param p1, "trackingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p2, "optionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "notificationEmailResponse"

    invoke-static {v1}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    :goto_0
    return-void

    .line 475
    :cond_0
    invoke-static {p2}, Lcom/kontagent/Kontagent;->processOptionalParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 476
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "i"

    if-eqz p0, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string v1, "u"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v1, "s"

    sget-object v2, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v1, "nei"

    invoke-static {v1, v0}, Lcom/kontagent/Kontagent;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kontagent/Kontagent;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method public static notificationEmailSent(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "recipientId"    # Ljava/lang/Integer;
    .param p1, "trackingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p2, "optionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "notificationEmailSent"

    invoke-static {v0}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-static {p0}, Lcom/kontagent/Kontagent;->wrapAsList(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/kontagent/Kontagent;->notificationEmailSent(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static notificationEmailSent(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "trackingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "recipientIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "optionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "notificationEmailSent"

    invoke-static {v1}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-static {p2}, Lcom/kontagent/Kontagent;->processOptionalParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 458
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "r"

    invoke-static {p0}, Lcom/kontagent/util/ListUtil;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string v1, "u"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string v1, "s"

    sget-object v2, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v1, "nes"

    invoke-static {v1, v0}, Lcom/kontagent/Kontagent;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kontagent/Kontagent;->send(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static onFirstRun()V
    .locals 9

    .prologue
    .line 631
    sget-object v7, Lcom/kontagent/Kontagent;->prefs:Lcom/kontagent/KontagentPrefs;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/kontagent/KontagentPrefs;->setFirstRun(Z)V

    .line 632
    const-string v7, "First sdk start detected."

    invoke-static {v7}, Lcom/kontagent/KontagentLog;->i(Ljava/lang/String;)I

    .line 634
    sget-object v7, Lcom/kontagent/Kontagent;->prefs:Lcom/kontagent/KontagentPrefs;

    invoke-virtual {v7}, Lcom/kontagent/KontagentPrefs;->getReferrerEventType()Ljava/lang/String;

    move-result-object v5

    .line 635
    .local v5, "type":Ljava/lang/String;
    sget-object v7, Lcom/kontagent/Kontagent;->prefs:Lcom/kontagent/KontagentPrefs;

    invoke-virtual {v7}, Lcom/kontagent/KontagentPrefs;->getReferrerEventSubtype1()Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, "st1":Ljava/lang/String;
    sget-object v7, Lcom/kontagent/Kontagent;->prefs:Lcom/kontagent/KontagentPrefs;

    invoke-virtual {v7}, Lcom/kontagent/KontagentPrefs;->getReferrerEventSubtype2()Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, "st2":Ljava/lang/String;
    sget-object v7, Lcom/kontagent/Kontagent;->prefs:Lcom/kontagent/KontagentPrefs;

    invoke-virtual {v7}, Lcom/kontagent/KontagentPrefs;->getReferrerEventSubtype3()Ljava/lang/String;

    move-result-object v3

    .line 639
    .local v3, "st3":Ljava/lang/String;
    const-string v7, "Kontagent referrer arguments: "

    invoke-static {v7}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;)I

    .line 640
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\ttu="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;)I

    .line 641
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tst1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;)I

    .line 642
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tst2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;)I

    .line 643
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tst3=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;)I

    .line 646
    if-eqz v5, :cond_0

    if-nez v1, :cond_1

    .line 647
    :cond_0
    const-string v7, "No referrer arguments specified, sending \"apa\" event only."

    invoke-static {v7}, Lcom/kontagent/KontagentLog;->i(Ljava/lang/String;)I

    .line 649
    invoke-static {}, Lcom/kontagent/Kontagent;->applicationAdded()V

    .line 674
    :goto_0
    return-void

    .line 653
    :cond_1
    const-string v7, "Referrer arguments were specified, sending \"apa\" and \"ucc\" events."

    invoke-static {v7}, Lcom/kontagent/KontagentLog;->i(Ljava/lang/String;)I

    .line 655
    invoke-static {}, Lcom/kontagent/Kontagent;->generateShortUniqueTrackingTag()Ljava/lang/String;

    move-result-object v4

    .line 657
    .local v4, "trackingTag":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 658
    .local v6, "uccParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "su"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    if-eqz v1, :cond_2

    .line 661
    const-string v7, "st1"

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 664
    const-string v7, "st2"

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 667
    const-string v7, "st3"

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    :cond_4
    const/4 v7, 0x1

    invoke-static {v7, v5, v6}, Lcom/kontagent/Kontagent;->undirectedCommunicationClick(ZLjava/lang/String;Ljava/util/Map;)V

    .line 671
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 672
    .local v0, "apaParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "su"

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    invoke-static {v0}, Lcom/kontagent/Kontagent;->applicationAdded(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static pageRequest(Ljava/util/Map;)V
    .locals 3
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
    .line 383
    .local p0, "optionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "pageRequest"

    invoke-static {v1}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-static {p0}, Lcom/kontagent/Kontagent;->processOptionalParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 385
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "s"

    sget-object v2, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v1, "pgr"

    invoke-static {v1, v0}, Lcom/kontagent/Kontagent;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kontagent/Kontagent;->send(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized pauseSession()V
    .locals 2

    .prologue
    .line 192
    const-class v1, Lcom/kontagent/Kontagent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kontagent/Kontagent;->stateful:Lcom/kontagent/Kontagent$KontagentStateful;

    invoke-virtual {v0}, Lcom/kontagent/Kontagent$KontagentStateful;->pause()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit v1

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static processOptionalParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    .local p0, "optionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 704
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 706
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public static declared-synchronized resumeSession()V
    .locals 2

    .prologue
    .line 188
    const-class v1, Lcom/kontagent/Kontagent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kontagent/Kontagent;->stateful:Lcom/kontagent/Kontagent$KontagentStateful;

    invoke-virtual {v0}, Lcom/kontagent/Kontagent$KontagentStateful;->resume()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit v1

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static revenueTracking(Ljava/lang/Integer;Ljava/util/Map;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "optionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "revenueTracking"

    invoke-static {v1}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-static {p1}, Lcom/kontagent/Kontagent;->processOptionalParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 399
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "s"

    sget-object v2, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v1, "v"

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v1, "mtu"

    invoke-static {v1, v0}, Lcom/kontagent/Kontagent;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kontagent/Kontagent;->send(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static declared-synchronized send(Ljava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 678
    const-class v2, Lcom/kontagent/Kontagent;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/kontagent/Kontagent;->queueManager:Lcom/kontagent/QueueManager;

    if-nez v1, :cond_0

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session not started. Dropping: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/kontagent/KontagentLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    :goto_0
    monitor-exit v2

    return-void

    .line 681
    :cond_0
    :try_start_1
    sget-object v1, Lcom/kontagent/Kontagent;->queueManager:Lcom/kontagent/QueueManager;

    invoke-virtual {v1, p0}, Lcom/kontagent/QueueManager;->enqueue(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 683
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "Exception suppressed."

    invoke-static {v1, v0}, Lcom/kontagent/KontagentLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 678
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static sendDeviceInformation(Ljava/util/Map;)V
    .locals 4
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
    .line 519
    .local p0, "optionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sendDeviceInformation"

    invoke-static {v1}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-static {p0}, Lcom/kontagent/Kontagent;->processOptionalParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 522
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "os"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const-string v1, "m"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string v1, "d"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    invoke-static {}, Lcom/kontagent/Kontagent;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/kontagent/Kontagent;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/kontagent/util/NetworkUtil;->isValidCarrierName(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    const-string v1, "c"

    sget-object v2, Lcom/kontagent/Kontagent;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/kontagent/util/NetworkUtil;->carrierName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_1
    invoke-static {v0}, Lcom/kontagent/Kontagent;->userInformation(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static setSenderId(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "senderId"    # Ljava/lang/Integer;

    .prologue
    .line 599
    if-eqz p0, :cond_0

    .line 600
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    .line 603
    :cond_0
    sget-object v0, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    sget-object v0, Lcom/kontagent/Kontagent;->prefs:Lcom/kontagent/KontagentPrefs;

    invoke-virtual {v0}, Lcom/kontagent/KontagentPrefs;->getSenderId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    .line 606
    sget-object v0, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 607
    invoke-static {}, Lcom/kontagent/util/GUIDUtil;->generateSenderId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    .line 608
    sget-object v0, Lcom/kontagent/Kontagent;->prefs:Lcom/kontagent/KontagentPrefs;

    sget-object v1, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kontagent/KontagentPrefs;->setSenderId(Ljava/lang/String;)V

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Generated Sender ID is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;)I

    .line 614
    :cond_1
    :goto_0
    return-void

    .line 611
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sender ID value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setTest(Z)V
    .locals 0
    .param p0, "test"    # Z

    .prologue
    .line 720
    sput-boolean p0, Lcom/kontagent/Kontagent;->test:Z

    .line 721
    return-void
.end method

.method private static startHeartbeatTimer()V
    .locals 4

    .prologue
    .line 222
    const-string v0, "startHeartbeatTimer"

    invoke-static {v0}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_0
    sget-object v0, Lcom/kontagent/Kontagent;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/kontagent/Kontagent;->heartbeatRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected static declared-synchronized startSession(Ljava/lang/String;Landroid/content/Context;Lcom/kontagent/QueueManager;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 5
    .param p0, "apiKey"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "queueManager"    # Lcom/kontagent/QueueManager;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "senderId"    # Ljava/lang/Integer;
    .param p5, "sendApplicationAdded"    # Z

    .prologue
    .line 144
    const-class v2, Lcom/kontagent/Kontagent;

    monitor-enter v2

    :try_start_0
    const-string v1, "STARTING NEW SESSION: key=%s, mode=%s, sender=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;)I

    .line 147
    sget-object v1, Lcom/kontagent/Kontagent;->stateful:Lcom/kontagent/Kontagent$KontagentStateful;

    invoke-virtual {v1}, Lcom/kontagent/Kontagent$KontagentStateful;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const-string v1, "Kontagent session was already started. Force-stopping it before starting session again."

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/kontagent/KontagentLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    sget-object v1, Lcom/kontagent/Kontagent;->stateful:Lcom/kontagent/Kontagent$KontagentStateful;

    invoke-virtual {v1}, Lcom/kontagent/Kontagent$KontagentStateful;->stop()V

    .line 152
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/kontagent/Kontagent;->init(Ljava/lang/String;Landroid/content/Context;Lcom/kontagent/QueueManager;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    sget-object v1, Lcom/kontagent/Kontagent;->stateful:Lcom/kontagent/Kontagent$KontagentStateful;

    invoke-virtual {v1}, Lcom/kontagent/Kontagent$KontagentStateful;->start()V

    .line 155
    if-eqz p5, :cond_1

    invoke-static {}, Lcom/kontagent/Kontagent;->isFirstRun()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    invoke-static {}, Lcom/kontagent/Kontagent;->onFirstRun()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "Failed to start session."

    invoke-static {v1, v0}, Lcom/kontagent/KontagentLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized startSession(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "apiKey"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 179
    const-class v0, Lcom/kontagent/Kontagent;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/kontagent/Kontagent;->startSession(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit v0

    return-void

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized startSession(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "apiKey"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "senderId"    # Ljava/lang/Integer;

    .prologue
    .line 175
    const-class v0, Lcom/kontagent/Kontagent;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, p2, p3, v1}, Lcom/kontagent/Kontagent;->startSession(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit v0

    return-void

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized startSession(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 7
    .param p0, "apiKey"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "senderId"    # Ljava/lang/Integer;
    .param p4, "sendApplicationAdded"    # Z

    .prologue
    .line 169
    const-class v6, Lcom/kontagent/Kontagent;

    monitor-enter v6

    :try_start_0
    new-instance v2, Lcom/kontagent/QueueManager;

    invoke-direct {v2, p1}, Lcom/kontagent/QueueManager;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/kontagent/Kontagent;->startSession(Ljava/lang/String;Landroid/content/Context;Lcom/kontagent/QueueManager;Ljava/lang/String;Ljava/lang/Integer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit v6

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized startSession(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "apiKey"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "sendApplicationAdded"    # Z

    .prologue
    .line 184
    const-class v0, Lcom/kontagent/Kontagent;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1, p3}, Lcom/kontagent/Kontagent;->startSession(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit v0

    return-void

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static stopHeartbeatTimer()V
    .locals 2

    .prologue
    .line 228
    const-string v0, "stopHeartbeatTimer"

    invoke-static {v0}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_0
    sget-object v0, Lcom/kontagent/Kontagent;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/kontagent/Kontagent;->heartbeatRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static declared-synchronized stopSession()V
    .locals 2

    .prologue
    .line 196
    const-class v1, Lcom/kontagent/Kontagent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kontagent/Kontagent;->stateful:Lcom/kontagent/Kontagent$KontagentStateful;

    invoke-virtual {v0}, Lcom/kontagent/Kontagent$KontagentStateful;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit v1

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static streamPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "trackingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p2, "optionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "streamPost"

    invoke-static {v1}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    :goto_0
    return-void

    .line 413
    :cond_0
    invoke-static {p2}, Lcom/kontagent/Kontagent;->processOptionalParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 414
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "s"

    sget-object v2, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v1, "tu"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string v1, "u"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v1, "pst"

    invoke-static {v1, v0}, Lcom/kontagent/Kontagent;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kontagent/Kontagent;->send(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static streamPostResponse(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "applicationInstalled"    # Z
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "trackingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p3, "optionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "streamPostResponse"

    invoke-static {v1}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-static {p3}, Lcom/kontagent/Kontagent;->processOptionalParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 433
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "i"

    if-eqz p0, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string v1, "tu"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v1, "u"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string v1, "psr"

    invoke-static {v1, v0}, Lcom/kontagent/Kontagent;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kontagent/Kontagent;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method public static undirectedCommunicationClick(ZLjava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "applicationInstalled"    # Z
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p2, "optionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "undirectedCommunicationClick"

    invoke-static {v1}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 497
    :goto_0
    return-void

    .line 493
    :cond_0
    invoke-static {p2}, Lcom/kontagent/Kontagent;->processOptionalParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 494
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "i"

    if-eqz p0, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v1, "tu"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v1, "ucc"

    invoke-static {v1, v0}, Lcom/kontagent/Kontagent;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kontagent/Kontagent;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method private static urlPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 711
    invoke-static {}, Lcom/kontagent/Kontagent;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    const-string v0, "http://test-server.kontagent.net/api/v1/"

    .line 715
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://api.geo.kontagent.net/api/v1/"

    goto :goto_0
.end method

.method public static userInformation(Ljava/util/Map;)V
    .locals 3
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
    .line 505
    .local p0, "optionalParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "userInformation"

    invoke-static {v1}, Lcom/kontagent/Kontagent;->assertStarted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    :goto_0
    return-void

    .line 507
    :cond_0
    invoke-static {p0}, Lcom/kontagent/Kontagent;->processOptionalParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 508
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "s"

    sget-object v2, Lcom/kontagent/Kontagent;->senderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string v1, "cpu"

    invoke-static {v1, v0}, Lcom/kontagent/Kontagent;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kontagent/Kontagent;->send(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static wrapAsList(Ljava/lang/Integer;)Ljava/util/List;
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    return-object v0
.end method
