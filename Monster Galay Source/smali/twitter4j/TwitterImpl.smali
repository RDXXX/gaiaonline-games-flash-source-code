.class Ltwitter4j/TwitterImpl;
.super Ltwitter4j/TwitterBaseImpl;
.source "TwitterImpl.java"

# interfaces
.implements Ltwitter4j/Twitter;


# static fields
.field private static final serialVersionUID:J = -0x14a09c9e28673704L


# instance fields
.field private final INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

.field private final INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;


# direct methods
.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V
    .locals 3
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "auth"    # Ltwitter4j/auth/Authorization;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterBaseImpl;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V

    .line 52
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    const-string v1, "include_entities"

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    .line 53
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    const-string v1, "include_rts"

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isIncludeRTsEnabled()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    .line 54
    return-void
.end method

.method private addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "paramName"    # Ljava/lang/String;
    .param p3, "color"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1315
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-eqz p3, :cond_0

    .line 1316
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v0, p2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1318
    :cond_0
    return-void
.end method

.method private checkFileValidity(Ljava/io/File;)V
    .locals 4
    .param p1, "image"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1378
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1380
    new-instance v0, Ltwitter4j/TwitterException;

    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " is not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 1382
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1384
    new-instance v0, Ltwitter4j/TwitterException;

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " is not a file."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 1386
    :cond_1
    return-void
.end method

.method private delete(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1887
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->isMBeanEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1888
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->delete(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    .line 1899
    :goto_0
    return-object v2

    .line 1891
    :cond_0
    const/4 v2, 0x0

    .line 1892
    .local v2, "response":Ltwitter4j/internal/http/HttpResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1894
    .local v3, "start":J
    :try_start_0
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->delete(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1896
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    .line 1897
    .local v0, "elapsedTime":J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v5

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v6

    invoke-virtual {v5, p1, v0, v1, v6}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1896
    .end local v0    # "elapsedTime":J
    :catchall_0
    move-exception v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v3

    .line 1897
    .restart local v0    # "elapsedTime":J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v6

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v7

    invoke-virtual {v6, p1, v0, v1, v7}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    .line 1898
    throw v5
.end method

.method private get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1819
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->isMBeanEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1820
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    .line 1831
    :goto_0
    return-object v2

    .line 1823
    :cond_0
    const/4 v2, 0x0

    .line 1824
    .local v2, "response":Ltwitter4j/internal/http/HttpResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1826
    .local v3, "start":J
    :try_start_0
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    .line 1829
    .local v0, "elapsedTime":J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v5

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v6

    invoke-virtual {v5, p1, v0, v1, v6}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1828
    .end local v0    # "elapsedTime":J
    :catchall_0
    move-exception v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v3

    .line 1829
    .restart local v0    # "elapsedTime":J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v6

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v7

    invoke-virtual {v6, p1, v0, v1, v7}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    .line 1830
    throw v5
.end method

.method private get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1836
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->isMBeanEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1837
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, p2, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    .line 1848
    :goto_0
    return-object v2

    .line 1840
    :cond_0
    const/4 v2, 0x0

    .line 1841
    .local v2, "response":Ltwitter4j/internal/http/HttpResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1843
    .local v3, "start":J
    :try_start_0
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, p2, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1845
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    .line 1846
    .local v0, "elapsedTime":J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v5

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v6

    invoke-virtual {v5, p1, v0, v1, v6}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1845
    .end local v0    # "elapsedTime":J
    :catchall_0
    move-exception v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v3

    .line 1846
    .restart local v0    # "elapsedTime":J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v6

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v7

    invoke-virtual {v6, p1, v0, v1, v7}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    .line 1847
    throw v5
.end method

.method private isOk(Ltwitter4j/internal/http/HttpResponse;)Z
    .locals 2
    .param p1, "response"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    .line 1904
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;
    .locals 3
    .param p1, "params1"    # [Ltwitter4j/internal/http/HttpParameter;
    .param p2, "params2"    # Ltwitter4j/internal/http/HttpParameter;

    .prologue
    const/4 v2, 0x0

    .line 77
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 78
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ltwitter4j/internal/http/HttpParameter;

    .line 79
    .local v0, "params":[Ltwitter4j/internal/http/HttpParameter;
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p2, v0, v1

    .line 89
    .end local v0    # "params":[Ltwitter4j/internal/http/HttpParameter;
    :goto_0
    return-object v0

    .line 83
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 84
    new-array v0, v2, [Ltwitter4j/internal/http/HttpParameter;

    goto :goto_0

    .line 86
    :cond_1
    if-eqz p1, :cond_2

    move-object v0, p1

    .line 87
    goto :goto_0

    .line 89
    :cond_2
    const/4 v1, 0x1

    new-array v0, v1, [Ltwitter4j/internal/http/HttpParameter;

    aput-object p2, v0, v2

    goto :goto_0
.end method

.method private mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;
    .locals 4
    .param p1, "params1"    # [Ltwitter4j/internal/http/HttpParameter;
    .param p2, "params2"    # [Ltwitter4j/internal/http/HttpParameter;

    .prologue
    const/4 v3, 0x0

    .line 60
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 61
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [Ltwitter4j/internal/http/HttpParameter;

    .line 62
    .local v0, "params":[Ltwitter4j/internal/http/HttpParameter;
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    .end local v0    # "params":[Ltwitter4j/internal/http/HttpParameter;
    :goto_0
    return-object v0

    .line 66
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 67
    new-array v0, v3, [Ltwitter4j/internal/http/HttpParameter;

    goto :goto_0

    .line 69
    :cond_1
    if-eqz p1, :cond_2

    move-object v0, p1

    .line 70
    goto :goto_0

    :cond_2
    move-object v0, p2

    .line 72
    goto :goto_0
.end method

.method private post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1853
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->isMBeanEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1854
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    .line 1865
    :goto_0
    return-object v2

    .line 1857
    :cond_0
    const/4 v2, 0x0

    .line 1858
    .local v2, "response":Ltwitter4j/internal/http/HttpResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1860
    .local v3, "start":J
    :try_start_0
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1862
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    .line 1863
    .local v0, "elapsedTime":J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v5

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v6

    invoke-virtual {v5, p1, v0, v1, v6}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1862
    .end local v0    # "elapsedTime":J
    :catchall_0
    move-exception v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v3

    .line 1863
    .restart local v0    # "elapsedTime":J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v6

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v7

    invoke-virtual {v6, p1, v0, v1, v7}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    .line 1864
    throw v5
.end method

.method private post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1870
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->isMBeanEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1871
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, p2, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    .line 1882
    :goto_0
    return-object v2

    .line 1874
    :cond_0
    const/4 v2, 0x0

    .line 1875
    .local v2, "response":Ltwitter4j/internal/http/HttpResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1877
    .local v3, "start":J
    :try_start_0
    iget-object v5, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v5, p1, p2, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1879
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    .line 1880
    .local v0, "elapsedTime":J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v5

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v6

    invoke-virtual {v5, p1, v0, v1, v6}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1879
    .end local v0    # "elapsedTime":J
    :catchall_0
    move-exception v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v3

    .line 1880
    .restart local v0    # "elapsedTime":J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v6

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v7

    invoke-virtual {v6, p1, v0, v1, v7}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    .line 1881
    throw v5
.end method

.method private toDateStr(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 149
    new-instance p1, Ljava/util/Date;

    .end local p1    # "date":Ljava/util/Date;
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 151
    .restart local p1    # "date":Ljava/util/Date;
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addUserListMember(IJ)Ltwitter4j/UserList;
    .locals 6
    .param p1, "listId"    # I
    .param p2, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 816
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 817
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "lists/members/create.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "list_id"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public addUserListMembers(I[J)Ltwitter4j/UserList;
    .locals 7
    .param p1, "listId"    # I
    .param p2, "userIds"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 828
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 829
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "lists/members/create_all.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "list_id"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-static {p2}, Ltwitter4j/internal/util/T4JInternalStringUtil;->join([J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public addUserListMembers(I[Ljava/lang/String;)Ltwitter4j/UserList;
    .locals 7
    .param p1, "listId"    # I
    .param p2, "screenNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 840
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 841
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "lists/members/create_all.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "list_id"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "screen_name"

    invoke-static {p2}, Ltwitter4j/internal/util/T4JInternalStringUtil;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public checkUserListMembership(Ljava/lang/String;IJ)Ltwitter4j/User;
    .locals 1
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .param p3, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 864
    invoke-virtual {p0, p2, p3, p4}, Ltwitter4j/TwitterImpl;->showUserListMembership(IJ)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public checkUserListSubscription(Ljava/lang/String;IJ)Ltwitter4j/User;
    .locals 1
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .param p3, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 938
    invoke-virtual {p0, p2, p3, p4}, Ltwitter4j/TwitterImpl;->showUserListSubscription(IJ)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public createBlock(J)Ltwitter4j/User;
    .locals 3
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1497
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1498
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "blocks/create.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createBlock(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1488
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1489
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "blocks/create.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createFavorite(J)Ltwitter4j/Status;
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1432
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1433
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "favorites/create/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createFriendship(J)Ltwitter4j/User;
    .locals 3
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1054
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/create.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createFriendship(JZ)Ltwitter4j/User;
    .locals 3
    .param p1, "userId"    # J
    .param p3, "follow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1071
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1072
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/create.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&follow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createFriendship(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1044
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1045
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/create.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createFriendship(Ljava/lang/String;Z)Ltwitter4j/User;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "follow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1062
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1063
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/create.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&follow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createPlace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/GeoLocation;Ljava/lang/String;)Ltwitter4j/Place;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "containedWithin"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "location"    # Ltwitter4j/GeoLocation;
    .param p5, "streetAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1731
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1732
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1733
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "name"

    invoke-direct {v1, v2, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1734
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "contained_within"

    invoke-direct {v1, v2, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1735
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "token"

    invoke-direct {v1, v2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1736
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "lat"

    invoke-virtual {p4}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1737
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "long"

    invoke-virtual {p4}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1738
    if-eqz p5, :cond_0

    .line 1739
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "attribute:street_address"

    invoke-direct {v1, v2, p5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1741
    :cond_0
    new-instance v2, Ltwitter4j/PlaceJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "geo/place.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v3, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v2, v1, v3}, Ltwitter4j/PlaceJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v2
.end method

.method public createSavedSearch(Ljava/lang/String;)Ltwitter4j/SavedSearch;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1625
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1626
    new-instance v0, Ltwitter4j/SavedSearchJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "saved_searches/create.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "query"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/SavedSearchJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createUserList(Ljava/lang/String;ZLjava/lang/String;)Ltwitter4j/UserList;
    .locals 4
    .param p1, "listName"    # Ljava/lang/String;
    .param p2, "isPublicList"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 658
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v0, "httpParams":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "name"

    invoke-direct {v1, v2, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "mode"

    if-eqz p2, :cond_1

    const-string v1, "public"

    :goto_0
    invoke-direct {v2, v3, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    if-eqz p3, :cond_0

    .line 663
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "description"

    invoke-direct {v1, v2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_0
    new-instance v2, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "lists/create.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v3, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v2, v1, v3}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v2

    .line 661
    :cond_1
    const-string v1, "private"

    goto :goto_0
.end method

.method public createUserListSubscription(I)Ltwitter4j/UserList;
    .locals 6
    .param p1, "listId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 910
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 911
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "lists/subscribers/create.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "list_id"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public deleteUserListMember(IJ)Ltwitter4j/UserList;
    .locals 6
    .param p1, "listId"    # I
    .param p2, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 852
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 853
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "lists/members/destroy.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "list_id"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public destroyBlock(J)Ltwitter4j/User;
    .locals 3
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1515
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1516
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "blocks/destroy.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public destroyBlock(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .param p1, "screen_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1506
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1507
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "blocks/destroy.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public destroyDirectMessage(J)Ltwitter4j/DirectMessage;
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1024
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1025
    new-instance v0, Ltwitter4j/DirectMessageJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "direct_messages/destroy/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public destroyFavorite(J)Ltwitter4j/Status;
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1441
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1442
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "favorites/destroy/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public destroyFriendship(J)Ltwitter4j/User;
    .locals 3
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1089
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1090
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/destroy.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public destroyFriendship(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1080
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1081
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/destroy.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public destroySavedSearch(I)Ltwitter4j/SavedSearch;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1634
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1635
    new-instance v0, Ltwitter4j/SavedSearchJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "saved_searches/destroy/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/SavedSearchJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public destroyStatus(J)Ltwitter4j/Status;
    .locals 3
    .param p1, "statusId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 480
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/destroy/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public destroyUserList(I)Ltwitter4j/UserList;
    .locals 6
    .param p1, "listId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 719
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 720
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "lists/destroy.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "list_id"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public destroyUserListSubscription(I)Ltwitter4j/UserList;
    .locals 6
    .param p1, "listId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 927
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 928
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "lists/subscribers/destroy.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "list_id"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public disableNotification(J)Ltwitter4j/User;
    .locals 3
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1477
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1478
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "notifications/leave.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public disableNotification(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1468
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1469
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "notifications/leave.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public enableNotification(J)Ltwitter4j/User;
    .locals 3
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1459
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1460
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "notifications/follow.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public enableNotification(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1450
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1451
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "notifications/follow.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1806
    if-ne p0, p1, :cond_1

    .line 1815
    :cond_0
    :goto_0
    return v1

    .line 1807
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    .line 1808
    :cond_3
    invoke-super {p0, p1}, Ltwitter4j/TwitterBaseImpl;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 1810
    check-cast v0, Ltwitter4j/TwitterImpl;

    .line 1812
    .local v0, "twitter":Ltwitter4j/TwitterImpl;
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    iget-object v4, v0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-virtual {v3, v4}, Ltwitter4j/internal/http/HttpParameter;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 1813
    :cond_5
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    iget-object v4, v0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    invoke-virtual {v3, v4}, Ltwitter4j/internal/http/HttpParameter;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public existsBlock(J)Z
    .locals 5
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1540
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1542
    const/4 v2, -0x1

    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v4}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "blocks/exists.json?user_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v3

    invoke-virtual {v3}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<error>You are not blocking this user.</error>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 1546
    :cond_0
    return v1

    .line 1544
    :catch_0
    move-exception v0

    .line 1545
    .local v0, "te":Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x194

    if-eq v2, v3, :cond_0

    .line 1548
    throw v0
.end method

.method public existsBlock(Ljava/lang/String;)Z
    .locals 5
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1524
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1526
    const/4 v2, -0x1

    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v4}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "blocks/exists.json?screen_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v3

    invoke-virtual {v3}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "You are not blocking this user."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 1530
    :cond_0
    return v1

    .line 1528
    :catch_0
    move-exception v0

    .line 1529
    .local v0, "te":Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x194

    if-eq v2, v3, :cond_0

    .line 1532
    throw v0
.end method

.method public existsFriendship(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "userA"    # Ljava/lang/String;
    .param p2, "userB"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1098
    const/4 v0, -0x1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/exists.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_a"

    const-string v3, "user_b"

    invoke-static {v2, p1, v3, p2}, Ltwitter4j/internal/http/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAPIConfiguration()Ltwitter4j/TwitterAPIConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1794
    new-instance v0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "help/configuration.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/TwitterAPIConfigurationJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getAccountSettings()Ltwitter4j/AccountSettings;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1281
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1282
    new-instance v0, Ltwitter4j/AccountSettingsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "account/settings.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/AccountSettingsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getAccountTotals()Ltwitter4j/AccountTotals;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1273
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1274
    new-instance v0, Ltwitter4j/AccountTotalsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "account/totals.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/AccountTotalsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getAllUserLists(J)Ltwitter4j/ResponseList;
    .locals 2
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 779
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "lists/all.json?user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserListJSONImpl;->createUserListList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getAllUserLists(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 2
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 770
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "lists/all.json?screen_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserListJSONImpl;->createUserListList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableTrends()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Location;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1644
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/available.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/LocationJSONImpl;->createLocationList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableTrends(Ltwitter4j/GeoLocation;)Ltwitter4j/ResponseList;
    .locals 7
    .param p1, "location"    # Ltwitter4j/GeoLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/GeoLocation;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Location;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1652
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/available.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "lat"

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "long"

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/LocationJSONImpl;->createLocationList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getBlockingUsers()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1557
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1558
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "blocks/blocking.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getBlockingUsers(I)Ltwitter4j/ResponseList;
    .locals 2
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1568
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1569
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "blocks/blocking.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getBlockingUsersIDs()Ltwitter4j/IDs;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1578
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1579
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "blocks/blocking/ids.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getCurrentTrends()Ltwitter4j/Trends;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/current.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Ltwitter4j/TrendsJSONImpl;->createTrendsList(Ltwitter4j/internal/http/HttpResponse;Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/Trends;

    return-object v0
.end method

.method public getCurrentTrends(Z)Ltwitter4j/Trends;
    .locals 2
    .param p1, "excludeHashTags"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/current.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v0, "?exclude=hashtags"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Ltwitter4j/TrendsJSONImpl;->createTrendsList(Ltwitter4j/internal/http/HttpResponse;Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/Trends;

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDailyTrends()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/daily.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Ltwitter4j/TrendsJSONImpl;->createTrendsList(Ltwitter4j/internal/http/HttpResponse;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDailyTrends(Ljava/util/Date;Z)Ljava/util/List;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "excludeHashTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/daily.json?date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1}, Ltwitter4j/TwitterImpl;->toDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, "&exclude=hashtags"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Ltwitter4j/TrendsJSONImpl;->createTrendsList(Ltwitter4j/internal/http/HttpResponse;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDirectMessages()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 958
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 959
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "direct_messages.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/DirectMessageJSONImpl;->createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMessages(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 968
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 969
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "direct_messages.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/DirectMessageJSONImpl;->createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1392
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1393
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "favorites.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(I)Ltwitter4j/ResponseList;
    .locals 5
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1402
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1403
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "favorites.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "page"

    invoke-direct {v3, v4, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1412
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1413
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "favorites/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(Ljava/lang/String;I)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1422
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1423
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "favorites/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "page"

    invoke-static {v1, p2}, Ltwitter4j/internal/http/HttpParameter;->getParameterArray(Ljava/lang/String;I)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersIDs(J)Ltwitter4j/IDs;
    .locals 3
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1219
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "followers/ids.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getFollowersIDs(JJ)Ltwitter4j/IDs;
    .locals 3
    .param p1, "userId"    # J
    .param p3, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1227
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "followers/ids.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getFollowersIDs(Ljava/lang/String;J)Ltwitter4j/IDs;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1235
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "followers/ids.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getFollowersStatuses(J)Ltwitter4j/PagableResponseList;
    .locals 2
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 629
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/followers.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersStatuses(JJ)Ltwitter4j/PagableResponseList;
    .locals 2
    .param p1, "userId"    # J
    .param p3, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 647
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/followers.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersStatuses(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 2
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 638
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/followers.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&screen_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsIDs(J)Ltwitter4j/IDs;
    .locals 3
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1196
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friends/ids.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getFriendsIDs(JJ)Ltwitter4j/IDs;
    .locals 3
    .param p1, "userId"    # J
    .param p3, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1203
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friends/ids.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getFriendsIDs(Ljava/lang/String;J)Ltwitter4j/IDs;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1211
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friends/ids.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getFriendsStatuses(J)Ltwitter4j/PagableResponseList;
    .locals 2
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 600
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/friends.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsStatuses(JJ)Ltwitter4j/PagableResponseList;
    .locals 2
    .param p1, "userId"    # J
    .param p3, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/friends.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsStatuses(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 2
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 609
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/friends.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&screen_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsTimeline()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 208
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/friends_timeline.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&include_rts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeRTsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsTimeline(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 219
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/friends_timeline.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getGeoDetails(Ljava/lang/String;)Ltwitter4j/Place;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1723
    new-instance v0, Ltwitter4j/PlaceJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "geo/id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/PlaceJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getHomeTimeline()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 189
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/home_timeline.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getHomeTimeline(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 198
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/home_timeline.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingFriendships(J)Ltwitter4j/IDs;
    .locals 3
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1126
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1127
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/incoming.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getLanguages()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/api/HelpMethods$Language;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1801
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "help/languages.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/LanguageJSONImpl;->createLanguageList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getLocationTrends(I)Ltwitter4j/Trends;
    .locals 3
    .param p1, "woeid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1663
    new-instance v0, Ltwitter4j/TrendsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "trends/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/TrendsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getMemberSuggestions(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "categorySlug"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 583
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "users/suggestions/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/members.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    .line 585
    .local v0, "res":Ltwitter4j/internal/http/HttpResponse;
    invoke-virtual {v0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v1, v0, v2}, Ltwitter4j/UserJSONImpl;->createUserList(Lorg/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v1

    return-object v1
.end method

.method public getMentions()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 293
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/mentions.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&include_rts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeRTsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getMentions(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 303
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/mentions.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getNoRetweetIds()Ltwitter4j/IDs;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1186
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1187
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/no_retweet_ids.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getOutgoingFriendships(J)Ltwitter4j/IDs;
    .locals 3
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1134
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1135
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/outgoing.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getPrivacyPolicy()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1763
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "legal/privacy.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "privacy"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1764
    :catch_0
    move-exception v0

    .line 1765
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getProfileImage(Ljava/lang/String;Ltwitter4j/ProfileImage$ImageSize;)Ltwitter4j/ProfileImage;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "size"    # Ltwitter4j/ProfileImage$ImageSize;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 592
    new-instance v0, Ltwitter4j/ProfileImageImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "users/profile_image/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json?size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ltwitter4j/ProfileImage$ImageSize;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/ProfileImageImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public getPublicTimeline()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/public_timeline.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&include_rts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeRTsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1250
    new-instance v0, Ltwitter4j/RateLimitStatusJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "account/rate_limit_status.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/RateLimitStatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getRelatedResults(J)Ltwitter4j/RelatedResults;
    .locals 3
    .param p1, "statusId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1775
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1776
    new-instance v0, Ltwitter4j/RelatedResultsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "related_results/show/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/RelatedResultsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getRetweetedBy(J)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "statusId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 417
    new-instance v0, Ltwitter4j/Paging;

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Ltwitter4j/Paging;-><init>(II)V

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/TwitterImpl;->getRetweetedBy(JLtwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedBy(JLtwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 2
    .param p1, "statusId"    # J
    .param p3, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/retweeted_by.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedByIDs(J)Ltwitter4j/IDs;
    .locals 3
    .param p1, "statusId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 433
    new-instance v0, Ltwitter4j/Paging;

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Ltwitter4j/Paging;-><init>(II)V

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/TwitterImpl;->getRetweetedByIDs(JLtwitter4j/Paging;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedByIDs(JLtwitter4j/Paging;)Ltwitter4j/IDs;
    .locals 3
    .param p1, "statusId"    # J
    .param p3, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 440
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 441
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/retweeted_by/ids.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getRetweetedByMe()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 315
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_by_me.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedByMe(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 324
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_by_me.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedByUser(JLtwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 6
    .param p1, "userId"    # J
    .param p3, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 406
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_by_user.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedByUser(Ljava/lang/String;Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 6
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 395
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_by_user.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedToMe()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 334
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_to_me.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedToMe(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 344
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_to_me.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedToUser(JLtwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 6
    .param p1, "userId"    # J
    .param p3, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 384
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_to_user.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedToUser(Ljava/lang/String;Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 6
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_to_user.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweets(J)Ltwitter4j/ResponseList;
    .locals 2
    .param p1, "statusId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 500
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".json?count=100&include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetsOfMe()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 354
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweets_of_me.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetsOfMe(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 364
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweets_of_me.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getSavedSearches()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/SavedSearch;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1608
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1609
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "saved_searches.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/SavedSearchJSONImpl;->createSavedSearchList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getSentDirectMessages()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 979
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 980
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "direct_messages/sent.json?include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/DirectMessageJSONImpl;->createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getSentDirectMessages(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 990
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 991
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "direct_messages/sent.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/DirectMessageJSONImpl;->createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getSimilarPlaces(Ltwitter4j/GeoLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/SimilarPlaces;
    .locals 5
    .param p1, "location"    # Ltwitter4j/GeoLocation;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "containedWithin"    # Ljava/lang/String;
    .param p4, "streetAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1689
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1690
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "lat"

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1691
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "long"

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1692
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "name"

    invoke-direct {v1, v2, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1693
    if-eqz p3, :cond_0

    .line 1694
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "contained_within"

    invoke-direct {v1, v2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1696
    :cond_0
    if-eqz p4, :cond_1

    .line 1697
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "attribute:street_address"

    invoke-direct {v1, v2, p4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1699
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "geo/similar_places.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v2, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v1, v2}, Ltwitter4j/SimilarPlacesImpl;->createSimilarPlaces(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/SimilarPlaces;

    move-result-object v1

    return-object v1
.end method

.method public getSuggestedUserCategories()Ltwitter4j/ResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Category;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 562
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "users/suggestions.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/CategoryJSONImpl;->createCategoriesList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getTermsOfService()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1752
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "legal/tos.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "tos"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1753
    :catch_0
    move-exception v0

    .line 1754
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getTrends()Ltwitter4j/Trends;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ltwitter4j/TrendsJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "trends.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/TrendsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public getUserListMembers(IJ)Ltwitter4j/PagableResponseList;
    .locals 2
    .param p1, "listId"    # I
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 806
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 807
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "lists/members.json?list_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListMembers(JIJ)Ltwitter4j/PagableResponseList;
    .locals 1
    .param p1, "listOwnerId"    # J
    .param p3, "listId"    # I
    .param p4, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 798
    invoke-virtual {p0, p3, p4, p5}, Ltwitter4j/TwitterImpl;->getUserListMembers(IJ)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListMembers(Ljava/lang/String;IJ)Ltwitter4j/PagableResponseList;
    .locals 1
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .param p3, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 790
    invoke-virtual {p0, p2, p3, p4}, Ltwitter4j/TwitterImpl;->getUserListMembers(IJ)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListMemberships(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 2
    .param p1, "listMemberScreenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 753
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "lists/memberships.json?screen_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserListJSONImpl;->createPagableUserListList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListStatuses(ILtwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 6
    .param p1, "listId"    # I
    .param p2, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 743
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "lists/statuses.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ltwitter4j/Paging;->SMCP:[C

    const-string v2, "per_page"

    invoke-virtual {p2, v1, v2}, Ltwitter4j/Paging;->asPostParameterArray([CLjava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "list_id"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListStatuses(JILtwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 1
    .param p1, "listOwnerId"    # J
    .param p3, "id"    # I
    .param p4, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-virtual {p0, p3, p4}, Ltwitter4j/TwitterImpl;->getUserListStatuses(ILtwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListStatuses(Ljava/lang/String;ILtwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 1
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 729
    invoke-virtual {p0, p2, p3}, Ltwitter4j/TwitterImpl;->getUserListStatuses(ILtwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListSubscribers(IJ)Ltwitter4j/PagableResponseList;
    .locals 2
    .param p1, "listId"    # I
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 892
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "lists/subscribers.json?list_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&include_entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListSubscribers(Ljava/lang/String;IJ)Ltwitter4j/PagableResponseList;
    .locals 1
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .param p3, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 885
    invoke-virtual {p0, p2, p3, p4}, Ltwitter4j/TwitterImpl;->getUserListSubscribers(IJ)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListSubscriptions(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 2
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 761
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "lists/subscriptions.json?screen_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserListJSONImpl;->createPagableUserListList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserLists(JJ)Ltwitter4j/PagableResponseList;
    .locals 2
    .param p1, "listOwnerUserId"    # J
    .param p3, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 697
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "lists.json?user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserListJSONImpl;->createPagableUserListList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserLists(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 2
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 690
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "lists.json?screen_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserListJSONImpl;->createPagableUserListList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserSuggestions(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "categorySlug"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 570
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "users/suggestions/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    .line 573
    .local v1, "res":Ltwitter4j/internal/http/HttpResponse;
    :try_start_0
    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "users"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v2, v1, v3}, Ltwitter4j/UserJSONImpl;->createUserList(Lorg/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "jsone":Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public getUserTimeline()Ltwitter4j/ResponseList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 272
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, v0}, Ltwitter4j/TwitterImpl;->getUserTimeline(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(J)Ltwitter4j/ResponseList;
    .locals 1
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/TwitterImpl;->getUserTimeline(JLtwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(JLtwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 5
    .param p1, "userId"    # J
    .param p3, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/user_timeline.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "user_id"

    invoke-direct {v3, v4, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    invoke-virtual {p3}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 1
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/TwitterImpl;->getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 5
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/user_timeline.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "screen_name"

    invoke-direct {v3, v4, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    invoke-virtual {p2}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 281
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/user_timeline.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getWeeklyTrends()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/weekly.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Ltwitter4j/TrendsJSONImpl;->createTrendsList(Ltwitter4j/internal/http/HttpResponse;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWeeklyTrends(Ljava/util/Date;Z)Ljava/util/List;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "excludeHashTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/weekly.json?date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1}, Ltwitter4j/TwitterImpl;->toDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, "&exclude=hashtags"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Ltwitter4j/TrendsJSONImpl;->createTrendsList(Ltwitter4j/internal/http/HttpResponse;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1909
    invoke-super {p0}, Ltwitter4j/TwitterBaseImpl;->hashCode()I

    move-result v0

    .line 1910
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1911
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1912
    return v0
.end method

.method public lookupFriendships([J)Ltwitter4j/ResponseList;
    .locals 2
    .param p1, "ids"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Friendship;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1150
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1151
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "friendships/lookup.json?user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Ltwitter4j/internal/util/T4JInternalStringUtil;->join([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/FriendshipJSONImpl;->createFriendshipList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public lookupFriendships([Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 2
    .param p1, "screenNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Friendship;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1142
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1143
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "friendships/lookup.json?screen_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Ltwitter4j/internal/util/T4JInternalStringUtil;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/FriendshipJSONImpl;->createFriendshipList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public lookupUsers([J)Ltwitter4j/ResponseList;
    .locals 6
    .param p1, "ids"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 539
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "users/lookup.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "user_id"

    invoke-static {p1}, Ltwitter4j/internal/util/T4JInternalStringUtil;->join([J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public lookupUsers([Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 6
    .param p1, "screenNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 528
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "users/lookup.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "screen_name"

    invoke-static {p1}, Ltwitter4j/internal/util/T4JInternalStringUtil;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public reportSpam(J)Ltwitter4j/User;
    .locals 3
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1588
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1589
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "report_spam.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public reportSpam(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1597
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1598
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "report_spam.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public retweetStatus(J)Ltwitter4j/Status;
    .locals 3
    .param p1, "statusId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 489
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 490
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/retweet/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public reverseGeoCode(Ltwitter4j/GeoQuery;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "query"    # Ltwitter4j/GeoQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/GeoQuery;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1708
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "geo/reverse_geocode.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/GeoQuery;->asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v1, v2}, Ltwitter4j/PlaceJSONImpl;->createPlaceList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1712
    :goto_0
    return-object v1

    .line 1710
    :catch_0
    move-exception v0

    .line 1711
    .local v0, "te":Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_0

    .line 1712
    new-instance v1, Ltwitter4j/ResponseListImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    goto :goto_0

    .line 1714
    :cond_0
    throw v0
.end method

.method public search(Ltwitter4j/Query;)Ltwitter4j/QueryResult;
    .locals 4
    .param p1, "query"    # Ltwitter4j/Query;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    new-instance v1, Ltwitter4j/QueryResultJSONImpl;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getSearchBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "search.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ltwitter4j/Query;->asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2, v3}, Ltwitter4j/QueryResultJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "te":Ltwitter4j/TwitterException;
    const/16 v1, 0x194

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 102
    new-instance v1, Ltwitter4j/QueryResultJSONImpl;

    invoke-direct {v1, p1}, Ltwitter4j/QueryResultJSONImpl;-><init>(Ltwitter4j/Query;)V

    goto :goto_0

    .line 104
    :cond_0
    throw v0
.end method

.method public searchPlaces(Ltwitter4j/GeoQuery;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "query"    # Ltwitter4j/GeoQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/GeoQuery;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1674
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "geo/search.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/GeoQuery;->asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v1, v2}, Ltwitter4j/PlaceJSONImpl;->createPlaceList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1678
    :goto_0
    return-object v1

    .line 1676
    :catch_0
    move-exception v0

    .line 1677
    .local v0, "te":Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_0

    .line 1678
    new-instance v1, Ltwitter4j/ResponseListImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    goto :goto_0

    .line 1680
    :cond_0
    throw v0
.end method

.method public searchUsers(Ljava/lang/String;I)Ltwitter4j/ResponseList;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 549
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 550
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "users/search.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "q"

    invoke-direct {v3, v4, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "per_page"

    const/16 v5, 0x14

    invoke-direct {v3, v4, v5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "page"

    invoke-direct {v3, v4, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, v1}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public sendDirectMessage(JLjava/lang/String;)Ltwitter4j/DirectMessage;
    .locals 6
    .param p1, "userId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1012
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1013
    new-instance v0, Ltwitter4j/DirectMessageJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "direct_messages/new.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "text"

    invoke-direct {v4, v5, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public sendDirectMessage(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/DirectMessage;
    .locals 6
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1000
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1001
    new-instance v0, Ltwitter4j/DirectMessageJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "direct_messages/new.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "text"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public showDirectMessage(J)Ltwitter4j/DirectMessage;
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1034
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1035
    new-instance v0, Ltwitter4j/DirectMessageJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "direct_messages/show/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public showFriendship(JJ)Ltwitter4j/Relationship;
    .locals 6
    .param p1, "sourceId"    # J
    .param p3, "targetId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1116
    new-instance v0, Ltwitter4j/RelationshipJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/show.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "source_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "target_id"

    invoke-direct {v4, v5, p3, p4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public showFriendship(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/Relationship;
    .locals 4
    .param p1, "sourceScreenName"    # Ljava/lang/String;
    .param p2, "targetScreenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1107
    new-instance v0, Ltwitter4j/RelationshipJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/show.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source_screen_name"

    const-string v3, "target_screen_name"

    invoke-static {v2, p1, v3, p2}, Ltwitter4j/internal/http/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public showSavedSearch(I)Ltwitter4j/SavedSearch;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1616
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1617
    new-instance v0, Ltwitter4j/SavedSearchJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "saved_searches/show/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/SavedSearchJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public showStatus(J)Ltwitter4j/Status;
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 450
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/show/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public showUser(J)Ltwitter4j/User;
    .locals 3
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 519
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "users/show.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public showUser(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 511
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "users/show.json?include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public showUserList(I)Ltwitter4j/UserList;
    .locals 3
    .param p1, "listId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 711
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "lists/show.json?list_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public showUserList(Ljava/lang/String;I)Ltwitter4j/UserList;
    .locals 1
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-virtual {p0, p2}, Ltwitter4j/TwitterImpl;->showUserList(I)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public showUserListMembership(IJ)Ltwitter4j/User;
    .locals 3
    .param p1, "listId"    # I
    .param p2, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 871
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 872
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "lists/members/show.json?list_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public showUserListSubscription(IJ)Ltwitter4j/User;
    .locals 3
    .param p1, "listId"    # I
    .param p2, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 945
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 946
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "lists/subscribers/show.json?list_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&include_entities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public subscribeUserList(Ljava/lang/String;I)Ltwitter4j/UserList;
    .locals 3
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 901
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 902
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/subscribers.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public test()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1786
    const/4 v0, -0x1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "help/test.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1917
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TwitterImpl{INCLUDE_ENTITIES="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", INCLUDE_RTS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->INCLUDE_RTS:Ltwitter4j/internal/http/HttpParameter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribeUserList(Ljava/lang/String;I)Ltwitter4j/UserList;
    .locals 1
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 920
    invoke-virtual {p0, p2}, Ltwitter4j/TwitterImpl;->destroyUserListSubscription(I)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public updateFriendship(JZZ)Ltwitter4j/Relationship;
    .locals 6
    .param p1, "userId"    # J
    .param p3, "enableDeviceNotification"    # Z
    .param p4, "retweets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1173
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1174
    new-instance v0, Ltwitter4j/RelationshipJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/update.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "device"

    invoke-direct {v4, v5, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "retweets"

    invoke-direct {v4, v5, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public updateFriendship(Ljava/lang/String;ZZ)Ltwitter4j/Relationship;
    .locals 6
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "enableDeviceNotification"    # Z
    .param p3, "retweets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1159
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1160
    new-instance v0, Ltwitter4j/RelationshipJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friendships/update.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "device"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "retweets"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public updateProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "location"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1258
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1259
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1260
    .local v0, "profile":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const-string v1, "name"

    invoke-direct {p0, v0, v1, p1}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    const-string v1, "url"

    invoke-direct {p0, v0, v1, p2}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const-string v1, "location"

    invoke-direct {p0, v0, v1, p3}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const-string v1, "description"

    invoke-direct {p0, v0, v1, p4}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    iget-object v1, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1265
    new-instance v2, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "account/update_profile.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v3, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v2, v1, v3}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v2
.end method

.method public updateProfileBackgroundImage(Ljava/io/File;Z)Ltwitter4j/User;
    .locals 6
    .param p1, "image"    # Ljava/io/File;
    .param p2, "tile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1348
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1349
    invoke-direct {p0, p1}, Ltwitter4j/TwitterImpl;->checkFileValidity(Ljava/io/File;)V

    .line 1350
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "account/update_profile_background_image.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "image"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "tile"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public updateProfileBackgroundImage(Ljava/io/InputStream;Z)Ltwitter4j/User;
    .locals 7
    .param p1, "image"    # Ljava/io/InputStream;
    .param p2, "tile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1362
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1363
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "account/update_profile_background_image.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "image"

    const-string v6, "image"

    invoke-direct {v4, v5, v6, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "tile"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public updateProfileColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .param p1, "profileBackgroundColor"    # Ljava/lang/String;
    .param p2, "profileTextColor"    # Ljava/lang/String;
    .param p3, "profileLinkColor"    # Ljava/lang/String;
    .param p4, "profileSidebarFillColor"    # Ljava/lang/String;
    .param p5, "profileSidebarBorderColor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1295
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1296
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1297
    .local v0, "colors":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const-string v1, "profile_background_color"

    invoke-direct {p0, v0, v1, p1}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    const-string v1, "profile_text_color"

    invoke-direct {p0, v0, v1, p2}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const-string v1, "profile_link_color"

    invoke-direct {p0, v0, v1, p3}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    const-string v1, "profile_sidebar_fill_color"

    invoke-direct {p0, v0, v1, p4}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    const-string v1, "profile_sidebar_border_color"

    invoke-direct {p0, v0, v1, p5}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    iget-object v1, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1308
    new-instance v2, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "account/update_profile_colors.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v3, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v2, v1, v3}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v2
.end method

.method public updateProfileImage(Ljava/io/File;)Ltwitter4j/User;
    .locals 6
    .param p1, "image"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1324
    invoke-direct {p0, p1}, Ltwitter4j/TwitterImpl;->checkFileValidity(Ljava/io/File;)V

    .line 1325
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1326
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "account/update_profile_image.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "image"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public updateProfileImage(Ljava/io/InputStream;)Ltwitter4j/User;
    .locals 7
    .param p1, "image"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1336
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1337
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "account/update_profile_image.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "image"

    const-string v6, "image"

    invoke-direct {v4, v5, v6, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public updateStatus(Ljava/lang/String;)Ltwitter4j/Status;
    .locals 6
    .param p1, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 458
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 459
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/update.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "status"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public updateStatus(Ltwitter4j/StatusUpdate;)Ltwitter4j/Status;
    .locals 4
    .param p1, "latestStatus"    # Ltwitter4j/StatusUpdate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 468
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 469
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/update.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/StatusUpdate;->asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->INCLUDE_ENTITIES:Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v2, v3}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1, v2}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public updateUserList(ILjava/lang/String;ZLjava/lang/String;)Ltwitter4j/UserList;
    .locals 4
    .param p1, "listId"    # I
    .param p2, "newListName"    # Ljava/lang/String;
    .param p3, "isPublicList"    # Z
    .param p4, "newDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .local v0, "httpParams":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "list_id"

    invoke-direct {v1, v2, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    if-eqz p2, :cond_0

    .line 677
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "name"

    invoke-direct {v1, v2, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    :cond_0
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "mode"

    if-eqz p3, :cond_2

    const-string v1, "public"

    :goto_0
    invoke-direct {v2, v3, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    if-eqz p4, :cond_1

    .line 681
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "description"

    invoke-direct {v1, v2, p4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_1
    new-instance v2, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "lists/update.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v3, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v2, v1, v3}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v2

    .line 679
    :cond_2
    const-string v1, "private"

    goto :goto_0
.end method

.method public verifyCredentials()Ltwitter4j/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1243
    invoke-super {p0}, Ltwitter4j/TwitterBaseImpl;->fillInIDAndScreenName()Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method
