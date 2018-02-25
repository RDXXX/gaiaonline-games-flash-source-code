.class final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final INSTANCE:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;


# instance fields
.field private final connectionPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;",
            "Ljava/util/List",
            "<",
            "Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;",
            ">;>;"
        }
    .end annotation
.end field

.field private final maxConnections:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;

    invoke-direct {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;-><init>()V

    sput-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->INSTANCE:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    .line 48
    const-string v0, "http.keepAlive"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->maxConnections:I

    .line 58
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v0, "http.maxConnections"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->maxConnections:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_1
.end method


# virtual methods
.method public get(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;I)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    monitor-enter v2

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 65
    if-eqz v0, :cond_2

    .line 66
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    .line 68
    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->isStale()Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    monitor-exit v2

    .line 80
    :goto_0
    return-object v1

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {p1, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->connect(I)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    move-result-object v1

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public recycle(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;)V
    .locals 4

    .prologue
    .line 85
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->maxConnections:I

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->isEligibleForRecycling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->getAddress()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    monitor-enter v2

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 89
    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->maxConnections:I

    if-ge v1, v3, :cond_1

    .line 94
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    monitor-exit v2

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_2
    invoke-virtual {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->closeSocketAndStreams()V

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
