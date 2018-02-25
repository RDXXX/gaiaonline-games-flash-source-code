.class public Lcom/sessionm/net/http/Client;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/net/HttpClient;


# instance fields
.field private cookieStore:Lorg/apache/http/client/CookieStore;

.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/sessionm/net/http/Client;->cookieStore:Lorg/apache/http/client/CookieStore;

    .line 27
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/net/http/Client;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 28
    return-void
.end method


# virtual methods
.method public getCookieStore()Lorg/apache/http/client/CookieStore;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sessionm/net/http/Client;->cookieStore:Lorg/apache/http/client/CookieStore;

    return-object v0
.end method

.method public sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sessionm/net/HttpResponseHandler;)V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/sessionm/net/http/Request;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sessionm/net/http/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sessionm/net/HttpResponseHandler;)V

    .line 40
    iget-object v1, p0, Lcom/sessionm/net/http/Client;->cookieStore:Lorg/apache/http/client/CookieStore;

    invoke-virtual {v0, v1}, Lcom/sessionm/net/http/Request;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 41
    iget-object v1, p0, Lcom/sessionm/net/http/Client;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sessionm/net/http/Client;->cookieStore:Lorg/apache/http/client/CookieStore;

    .line 36
    return-void
.end method

.method public storeCookies()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 65
    const-class v2, Landroid/webkit/CookieManager;

    monitor-enter v2

    .line 66
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    .line 67
    invoke-static {}, Lcom/sessionm/core/SessionMAndroidConfig;->getInstance()Lcom/sessionm/core/SessionMAndroidConfig;

    move-result-object v0

    const-string v4, "api.server.url"

    invoke-virtual {v0, v4}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    invoke-static {v0}, Lcom/sessionm/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {v3, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    .line 71
    monitor-exit v2

    .line 84
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {p0}, Lcom/sessionm/net/http/Client;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v5

    .line 75
    array-length v6, v3

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_1

    aget-object v1, v3, v0

    .line 76
    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 77
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 78
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v7, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v7, v8, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v7, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 81
    invoke-interface {v5, v7}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public syncCookies()V
    .locals 8

    .prologue
    .line 46
    const-class v3, Landroid/webkit/CookieManager;

    monitor-enter v3

    .line 47
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    .line 48
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 49
    invoke-static {}, Lcom/sessionm/core/SessionMAndroidConfig;->getInstance()Lcom/sessionm/core/SessionMAndroidConfig;

    move-result-object v0

    const-string v1, "api.server.url"

    invoke-virtual {v0, v1}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    invoke-static {v0}, Lcom/sessionm/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {p0}, Lcom/sessionm/net/http/Client;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    .line 52
    invoke-interface {v1}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    move-object v1, v2

    .line 58
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; domain="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v4, v0, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    return-void
.end method
