.class public Lcom/sessionm/net/RequestQueue;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/net/RequestListener;


# instance fields
.field private final client:Lcom/sessionm/net/HttpClient;

.field private currentRequest:Lcom/sessionm/net/Request;

.field private final requestListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sessionm/net/RequestListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private started:Z

.field private final store:Lcom/sessionm/net/RequestStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sessionm/net/RequestQueue;->started:Z

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sessionm/net/RequestQueue;->currentRequest:Lcom/sessionm/net/Request;

    .line 16
    new-instance v0, Lcom/sessionm/net/ListRequestStore;

    invoke-direct {v0}, Lcom/sessionm/net/ListRequestStore;-><init>()V

    iput-object v0, p0, Lcom/sessionm/net/RequestQueue;->store:Lcom/sessionm/net/RequestStore;

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sessionm/net/RequestQueue;->requestListeners:Ljava/util/Map;

    .line 19
    new-instance v0, Lcom/sessionm/net/http/Client;

    invoke-direct {v0}, Lcom/sessionm/net/http/Client;-><init>()V

    iput-object v0, p0, Lcom/sessionm/net/RequestQueue;->client:Lcom/sessionm/net/HttpClient;

    .line 22
    return-void
.end method

.method private sendRequest(Lcom/sessionm/net/Request;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sessionm/net/RequestQueue;->currentRequest:Lcom/sessionm/net/Request;

    .line 66
    invoke-virtual {p1, p0}, Lcom/sessionm/net/Request;->setListener(Lcom/sessionm/net/RequestListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/sessionm/net/RequestQueue;->getHttpClient()Lcom/sessionm/net/HttpClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sessionm/net/Request;->setClient(Lcom/sessionm/net/HttpClient;)V

    .line 68
    invoke-virtual {p1}, Lcom/sessionm/net/Request;->send()V

    .line 69
    return-void
.end method


# virtual methods
.method public declared-synchronized addRequestListener(Lcom/sessionm/net/Request;Lcom/sessionm/net/RequestListener;)V
    .locals 3

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sessionm/net/RequestQueue;->requestListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sessionm/net/Request;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 96
    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, p0, Lcom/sessionm/net/RequestQueue;->requestListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sessionm/net/Request;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addRequestQueueListener(Lcom/sessionm/net/RequestQueueListener;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public declared-synchronized enqueRequest(Lcom/sessionm/net/Request;)V
    .locals 2

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/sessionm/net/Request;->getType()Lcom/sessionm/net/Request$Type;

    move-result-object v0

    sget-object v1, Lcom/sessionm/net/Request$Type;->SESSION_START:Lcom/sessionm/net/Request$Type;

    invoke-virtual {v0, v1}, Lcom/sessionm/net/Request$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sessionm/net/Request;->getType()Lcom/sessionm/net/Request$Type;

    move-result-object v0

    sget-object v1, Lcom/sessionm/net/Request$Type;->SESSION_END:Lcom/sessionm/net/Request$Type;

    invoke-virtual {v0, v1}, Lcom/sessionm/net/Request$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/sessionm/net/RequestQueue;->stop()V

    .line 52
    invoke-direct {p0, p1}, Lcom/sessionm/net/RequestQueue;->sendRequest(Lcom/sessionm/net/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 53
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/sessionm/net/RequestQueue;->started:Z

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/sessionm/net/RequestQueue;->store:Lcom/sessionm/net/RequestStore;

    invoke-interface {v0, p1}, Lcom/sessionm/net/RequestStore;->add(Lcom/sessionm/net/Request;)V

    .line 55
    invoke-virtual {p0}, Lcom/sessionm/net/RequestQueue;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sessionm/net/RequestQueue;->currentRequest:Lcom/sessionm/net/Request;

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/sessionm/net/RequestQueue;->store:Lcom/sessionm/net/RequestStore;

    invoke-interface {v0}, Lcom/sessionm/net/RequestStore;->nextRequest()Lcom/sessionm/net/Request;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0, v0}, Lcom/sessionm/net/RequestQueue;->sendRequest(Lcom/sessionm/net/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sessionm/net/RequestQueue;->currentRequest:Lcom/sessionm/net/Request;

    invoke-virtual {v0}, Lcom/sessionm/net/Request;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sessionm/net/RequestQueue;->currentRequest:Lcom/sessionm/net/Request;

    invoke-direct {p0, v0}, Lcom/sessionm/net/RequestQueue;->sendRequest(Lcom/sessionm/net/Request;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHttpClient()Lcom/sessionm/net/HttpClient;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sessionm/net/RequestQueue;->client:Lcom/sessionm/net/HttpClient;

    return-object v0
.end method

.method public onReplyReceived(Lcom/sessionm/net/Request;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sessionm/net/RequestQueue;->requestListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sessionm/net/Request;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sessionm/net/RequestListener;

    .line 134
    invoke-interface {v0, p1}, Lcom/sessionm/net/RequestListener;->onReplyReceived(Lcom/sessionm/net/Request;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p1}, Lcom/sessionm/net/Request;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sessionm/net/Request;->statusCode()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_3

    .line 139
    :cond_1
    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/net/RequestQueue;->store:Lcom/sessionm/net/RequestStore;

    invoke-interface {v0, p1}, Lcom/sessionm/net/RequestStore;->remove(Lcom/sessionm/net/Request;)V

    .line 141
    iget-object v0, p0, Lcom/sessionm/net/RequestQueue;->requestListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sessionm/net/Request;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sessionm/net/RequestQueue;->currentRequest:Lcom/sessionm/net/Request;

    .line 143
    iget-boolean v0, p0, Lcom/sessionm/net/RequestQueue;->started:Z

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/sessionm/net/RequestQueue;->flush()V

    .line 146
    :cond_2
    monitor-exit p0

    .line 148
    :cond_3
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRequestSent(Lcom/sessionm/net/Request;)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sessionm/net/RequestQueue;->requestListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sessionm/net/Request;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sessionm/net/RequestListener;

    .line 124
    invoke-interface {v0, p1}, Lcom/sessionm/net/RequestListener;->onRequestSent(Lcom/sessionm/net/Request;)V

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method public removeRequestQueueListener(Lcom/sessionm/net/RequestQueueListener;)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 32
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sessionm/net/RequestQueue;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 40
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sessionm/net/RequestQueue;->started:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sessionm/net/RequestQueue;->currentRequest:Lcom/sessionm/net/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
