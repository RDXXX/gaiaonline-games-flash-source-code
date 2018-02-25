.class final Ltwitter4j/TrendJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "TrendJSONImpl.java"

# interfaces
.implements Ltwitter4j/Trend;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1aba5f6b262a250aL


# instance fields
.field private name:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ltwitter4j/TrendJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Lorg/json/JSONObject;Z)V

    .line 54
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Ltwitter4j/conf/Configuration;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "conf"    # Ltwitter4j/conf/Configuration;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Ltwitter4j/TrendJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Lorg/json/JSONObject;Z)V

    .line 46
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Z)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "storeJSON"    # Z

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ltwitter4j/TrendJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Lorg/json/JSONObject;Z)V

    .line 50
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Lorg/json/JSONObject;Z)V
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .param p2, "json"    # Lorg/json/JSONObject;
    .param p3, "storeJSON"    # Z

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 33
    iput-object v0, p0, Ltwitter4j/TrendJSONImpl;->url:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Ltwitter4j/TrendJSONImpl;->query:Ljava/lang/String;

    .line 39
    const-string v0, "name"

    invoke-static {v0, p2}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TrendJSONImpl;->name:Ljava/lang/String;

    .line 40
    const-string v0, "url"

    invoke-static {v0, p2}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TrendJSONImpl;->url:Ljava/lang/String;

    .line 41
    const-string v0, "query"

    invoke-static {v0, p2}, Ltwitter4j/internal/util/ParseUtil;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TrendJSONImpl;->query:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    if-ne p0, p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    instance-of v3, p1, Ltwitter4j/Trend;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 82
    check-cast v0, Ltwitter4j/Trend;

    .line 84
    .local v0, "trend":Ltwitter4j/Trend;
    iget-object v3, p0, Ltwitter4j/TrendJSONImpl;->name:Ljava/lang/String;

    invoke-interface {v0}, Ltwitter4j/Trend;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 85
    :cond_3
    iget-object v3, p0, Ltwitter4j/TrendJSONImpl;->query:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Ltwitter4j/TrendJSONImpl;->query:Ljava/lang/String;

    invoke-interface {v0}, Ltwitter4j/Trend;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 86
    goto :goto_0

    .line 85
    :cond_5
    invoke-interface {v0}, Ltwitter4j/Trend;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 87
    :cond_6
    iget-object v3, p0, Ltwitter4j/TrendJSONImpl;->url:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ltwitter4j/TrendJSONImpl;->url:Ljava/lang/String;

    invoke-interface {v0}, Ltwitter4j/Trend;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 88
    goto :goto_0

    .line 87
    :cond_7
    invoke-interface {v0}, Ltwitter4j/Trend;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ltwitter4j/TrendJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ltwitter4j/TrendJSONImpl;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ltwitter4j/TrendJSONImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v1, p0, Ltwitter4j/TrendJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 96
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/TrendJSONImpl;->url:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/TrendJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 97
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/TrendJSONImpl;->query:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ltwitter4j/TrendJSONImpl;->query:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 98
    return v0

    :cond_1
    move v1, v2

    .line 96
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 103
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TrendJSONImpl{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TrendJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TrendJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TrendJSONImpl;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
