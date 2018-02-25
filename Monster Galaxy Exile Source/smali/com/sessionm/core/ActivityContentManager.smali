.class public Lcom/sessionm/core/ActivityContentManager;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityContentManager"


# instance fields
.field private final httpClient:Lcom/sessionm/net/HttpClient;

.field private final loadedUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sessionm/core/ActivityContentManager;->pendingUrls:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sessionm/core/ActivityContentManager;->loadedUrls:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Lcom/sessionm/net/http/Client;

    invoke-direct {v0}, Lcom/sessionm/net/http/Client;-><init>()V

    iput-object v0, p0, Lcom/sessionm/core/ActivityContentManager;->httpClient:Lcom/sessionm/net/HttpClient;

    return-void
.end method

.method static synthetic access$000(Lcom/sessionm/core/ActivityContentManager;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sessionm/core/ActivityContentManager;->loadNextActivity()V

    return-void
.end method

.method private loadNextActivity()V
    .locals 5

    .prologue
    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/core/ActivityContentManager;->pendingUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/sessionm/core/ActivityContentManager;->pendingUrls:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    new-instance v1, Lcom/sessionm/net/Request;

    sget-object v2, Lcom/sessionm/net/Request$Type;->CONTENT:Lcom/sessionm/net/Request$Type;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/sessionm/net/Request;-><init>(Ljava/lang/String;Lcom/sessionm/net/Request$Type;Ljava/lang/Object;)V

    .line 26
    iget-object v2, p0, Lcom/sessionm/core/ActivityContentManager;->loadedUrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v2, p0, Lcom/sessionm/core/ActivityContentManager;->httpClient:Lcom/sessionm/net/HttpClient;

    invoke-virtual {v1, v2}, Lcom/sessionm/net/Request;->setClient(Lcom/sessionm/net/HttpClient;)V

    .line 28
    new-instance v2, Lcom/sessionm/core/ActivityContentManager$1;

    invoke-direct {v2, p0}, Lcom/sessionm/core/ActivityContentManager$1;-><init>(Lcom/sessionm/core/ActivityContentManager;)V

    invoke-virtual {v1, v2}, Lcom/sessionm/net/Request;->setListener(Lcom/sessionm/net/RequestListener;)V

    .line 42
    invoke-virtual {v1}, Lcom/sessionm/net/Request;->send()V

    .line 43
    const-string v1, "ActivityContentManager"

    const-string v2, "Preloading, URL: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sessionm/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    monitor-exit p0

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancelLoading()V
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sessionm/core/ActivityContentManager;->pendingUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadContent(Lcom/sessionm/json/JSONObject;)V
    .locals 5

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sessionm/core/ActivityContentManager;->httpClient:Lcom/sessionm/net/HttpClient;

    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sessionm/core/Session;->getRequestQueue()Lcom/sessionm/net/RequestQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sessionm/net/RequestQueue;->getHttpClient()Lcom/sessionm/net/HttpClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sessionm/net/HttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sessionm/net/HttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 51
    const-string v0, "ad_forecast"

    const-class v1, Lcom/sessionm/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lcom/sessionm/json/JSONObject;->getArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sessionm/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 56
    :cond_1
    :try_start_1
    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 57
    const-string v4, "preload_url"

    invoke-virtual {v3, v4}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    if-nez v3, :cond_3

    .line 59
    const-string v3, "ActivityContentManager"

    const-string v4, "Missing preload_url property in forecast"

    invoke-static {v3, v4}, Lcom/sessionm/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    :cond_3
    iget-object v4, p0, Lcom/sessionm/core/ActivityContentManager;->pendingUrls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sessionm/core/ActivityContentManager;->loadedUrls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 63
    iget-object v4, p0, Lcom/sessionm/core/ActivityContentManager;->pendingUrls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 67
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/sessionm/core/ActivityContentManager;->pendingUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/sessionm/core/ActivityContentManager;->loadNextActivity()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
