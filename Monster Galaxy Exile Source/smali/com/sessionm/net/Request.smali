.class public Lcom/sessionm/net/Request;
.super Lcom/sessionm/net/HttpResponseHandler;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sessionm/net/Request$Type;,
        Lcom/sessionm/net/Request$Method;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4f733511c180f109L


# instance fields
.field private TAG:Ljava/lang/String;

.field private client:Lcom/sessionm/net/HttpClient;

.field private error:Ljava/lang/Throwable;

.field private httpStatus:I

.field private final id:Ljava/lang/String;

.field private listener:Lcom/sessionm/net/RequestListener;

.field private method:Lcom/sessionm/net/Request$Method;

.field private paramString:Ljava/lang/String;

.field private final params:Ljava/lang/Object;

.field private reply:Ljava/lang/String;

.field private final type:Lcom/sessionm/net/Request$Type;

.field private urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sessionm/net/Request$Type;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sessionm/net/Request;-><init>(Lcom/sessionm/net/Request$Type;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/sessionm/net/Request$Type;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sessionm/net/HttpResponseHandler;-><init>()V

    .line 64
    const-string v0, "Request"

    iput-object v0, p0, Lcom/sessionm/net/Request;->TAG:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    .line 77
    iput-object p2, p0, Lcom/sessionm/net/Request;->params:Ljava/lang/Object;

    .line 78
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/net/Request;->id:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sessionm/net/Request$Type;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p2, p3}, Lcom/sessionm/net/Request;-><init>(Lcom/sessionm/net/Request$Type;Ljava/lang/Object;)V

    .line 84
    iput-object p1, p0, Lcom/sessionm/net/Request;->urlString:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/sessionm/net/Request$Type;->GENERIC:Lcom/sessionm/net/Request$Type;

    invoke-direct {p0, v0, p3}, Lcom/sessionm/net/Request;-><init>(Lcom/sessionm/net/Request$Type;Ljava/lang/Object;)V

    .line 90
    iput-object p1, p0, Lcom/sessionm/net/Request;->urlString:Ljava/lang/String;

    .line 91
    const-string v0, "GET"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Lcom/sessionm/net/Request$Method;->GET:Lcom/sessionm/net/Request$Method;

    iput-object v0, p0, Lcom/sessionm/net/Request;->method:Lcom/sessionm/net/Request$Method;

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const-string v0, "POST"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    sget-object v0, Lcom/sessionm/net/Request$Method;->POST:Lcom/sessionm/net/Request$Method;

    iput-object v0, p0, Lcom/sessionm/net/Request;->method:Lcom/sessionm/net/Request$Method;

    goto :goto_0

    .line 95
    :cond_2
    const-string v0, "PUT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    sget-object v0, Lcom/sessionm/net/Request$Method;->PUT:Lcom/sessionm/net/Request$Method;

    iput-object v0, p0, Lcom/sessionm/net/Request;->method:Lcom/sessionm/net/Request$Method;

    goto :goto_0

    .line 97
    :cond_3
    const-string v0, "DELETE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/sessionm/net/Request$Method;->DELETE:Lcom/sessionm/net/Request$Method;

    iput-object v0, p0, Lcom/sessionm/net/Request;->method:Lcom/sessionm/net/Request$Method;

    goto :goto_0
.end method


# virtual methods
.method public getError()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sessionm/net/Request;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sessionm/net/Request;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Lcom/sessionm/net/Request$Method;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sessionm/net/Request;->method:Lcom/sessionm/net/Request$Method;

    return-object v0
.end method

.method public getParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sessionm/net/Request;->paramString:Ljava/lang/String;

    return-object v0
.end method

.method public getReply()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sessionm/net/Request;->reply:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/sessionm/net/Request$Type;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sessionm/net/Request;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method public notifyRequestFinished(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 3

    .prologue
    .line 221
    iput-object p1, p0, Lcom/sessionm/net/Request;->reply:Ljava/lang/String;

    .line 222
    iput-object p2, p0, Lcom/sessionm/net/Request;->error:Ljava/lang/Throwable;

    .line 223
    iput p3, p0, Lcom/sessionm/net/Request;->httpStatus:I

    .line 224
    iget-object v0, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    sget-object v1, Lcom/sessionm/net/Request$Type;->SESSION_START:Lcom/sessionm/net/Request$Type;

    if-ne v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sessionm/net/Request;->client:Lcom/sessionm/net/HttpClient;

    invoke-interface {v0}, Lcom/sessionm/net/HttpClient;->syncCookies()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/sessionm/net/Request;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished request with url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sessionm/net/Request;->urlString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sessionm/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/sessionm/net/Request;->listener:Lcom/sessionm/net/RequestListener;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/sessionm/net/Request;->listener:Lcom/sessionm/net/RequestListener;

    invoke-interface {v0, p0}, Lcom/sessionm/net/RequestListener;->onReplyReceived(Lcom/sessionm/net/Request;)V

    .line 231
    :cond_1
    return-void
.end method

.method public notifyRequestSent()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sessionm/net/Request;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sent request with url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sessionm/net/Request;->urlString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sessionm/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/sessionm/net/Request;->listener:Lcom/sessionm/net/RequestListener;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sessionm/net/Request;->listener:Lcom/sessionm/net/RequestListener;

    invoke-interface {v0, p0}, Lcom/sessionm/net/RequestListener;->onRequestSent(Lcom/sessionm/net/Request;)V

    .line 217
    :cond_0
    return-void
.end method

.method public send()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, -0x1

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 129
    invoke-static {}, Lcom/sessionm/core/SessionMAndroidConfig;->getInstance()Lcom/sessionm/core/SessionMAndroidConfig;

    move-result-object v1

    .line 130
    const-string v0, "api.server.url"

    invoke-virtual {v1, v0}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    iget-object v2, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    sget-object v3, Lcom/sessionm/net/Request$Type;->SESSION_START:Lcom/sessionm/net/Request$Type;

    invoke-virtual {v2, v3}, Lcom/sessionm/net/Request$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 133
    iget-object v2, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    invoke-virtual {v2}, Lcom/sessionm/net/Request$Type;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const-string v0, "api.apps.path"

    invoke-virtual {v1, v0}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v6

    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/core/Session;->getApiKey()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "api.action.session"

    invoke-virtual {v1, v0}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/net/Request;->urlString:Ljava/lang/String;

    .line 152
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    invoke-static {v0}, Lcom/sessionm/net/Request$Type;->access$000(Lcom/sessionm/net/Request$Type;)Lcom/sessionm/net/Request$Method;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    invoke-static {v1}, Lcom/sessionm/net/Request$Type;->access$000(Lcom/sessionm/net/Request$Type;)Lcom/sessionm/net/Request$Method;

    move-result-object v1

    sget-object v2, Lcom/sessionm/net/Request$Method;->GENERIC:Lcom/sessionm/net/Request$Method;

    invoke-virtual {v1, v2}, Lcom/sessionm/net/Request$Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 154
    iget-object v0, p0, Lcom/sessionm/net/Request;->method:Lcom/sessionm/net/Request$Method;

    move-object v1, v0

    .line 158
    :goto_1
    iget-object v0, p0, Lcom/sessionm/net/Request;->params:Ljava/lang/Object;

    if-nez v0, :cond_d

    .line 159
    const-string v0, ""

    .line 169
    :goto_2
    iget-object v2, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    sget-object v3, Lcom/sessionm/net/Request$Type;->CONTENT:Lcom/sessionm/net/Request$Type;

    invoke-virtual {v2, v3}, Lcom/sessionm/net/Request$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/sessionm/core/SessionMAndroidConfig;->getInstance()Lcom/sessionm/core/SessionMAndroidConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sessionm/core/SessionMAndroidConfig;->isSecureAPI()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sessionm/net/Request;->urlString:Ljava/lang/String;

    invoke-static {v2}, Lcom/sessionm/a/e;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 170
    sget-object v2, Lcom/sessionm/net/Request$Method;->GET:Lcom/sessionm/net/Request$Method;

    invoke-virtual {v1, v2}, Lcom/sessionm/net/Request$Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sessionm/net/Request$Method;->DELETE:Lcom/sessionm/net/Request$Method;

    invoke-virtual {v1, v2}, Lcom/sessionm/net/Request$Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    :cond_1
    :try_start_0
    new-instance v2, Ljava/net/URI;

    iget-object v3, p0, Lcom/sessionm/net/Request;->urlString:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 174
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 175
    invoke-virtual {v2}, Ljava/net/URI;->getQuery()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 187
    :cond_2
    :goto_3
    invoke-static {v0}, Lcom/sessionm/a/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 188
    const-string v2, "query"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    iget-object v2, p0, Lcom/sessionm/net/Request;->urlString:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/sessionm/a/e;->a(Ljava/lang/String;Lcom/sessionm/net/Request$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    if-eqz v2, :cond_3

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&sig="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_3
    iget-object v2, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    sget-object v3, Lcom/sessionm/net/Request$Type;->CONTENT:Lcom/sessionm/net/Request$Type;

    invoke-virtual {v2, v3}, Lcom/sessionm/net/Request$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/sessionm/net/Request$Method;->GET:Lcom/sessionm/net/Request$Method;

    invoke-virtual {v1, v2}, Lcom/sessionm/net/Request$Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/sessionm/net/Request$Method;->DELETE:Lcom/sessionm/net/Request$Method;

    invoke-virtual {v1, v2}, Lcom/sessionm/net/Request$Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 198
    :cond_4
    const-string v2, "%s?%s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sessionm/net/Request;->urlString:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sessionm/net/Request;->urlString:Ljava/lang/String;

    .line 201
    :cond_5
    iget-object v2, p0, Lcom/sessionm/net/Request;->client:Lcom/sessionm/net/HttpClient;

    if-nez v2, :cond_6

    .line 202
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sessionm/core/Session;->getRequestQueue()Lcom/sessionm/net/RequestQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sessionm/net/RequestQueue;->getHttpClient()Lcom/sessionm/net/HttpClient;

    move-result-object v2

    iput-object v2, p0, Lcom/sessionm/net/Request;->client:Lcom/sessionm/net/HttpClient;

    .line 204
    :cond_6
    iget-object v2, p0, Lcom/sessionm/net/Request;->client:Lcom/sessionm/net/HttpClient;

    iget-object v3, p0, Lcom/sessionm/net/Request;->urlString:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sessionm/net/Request$Method;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1, v0, p0}, Lcom/sessionm/net/HttpClient;->sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sessionm/net/HttpResponseHandler;)V

    .line 205
    :goto_4
    return-void

    .line 135
    :cond_7
    iget-object v2, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    sget-object v3, Lcom/sessionm/net/Request$Type;->SESSION_END:Lcom/sessionm/net/Request$Type;

    invoke-virtual {v2, v3}, Lcom/sessionm/net/Request$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 136
    iget-object v2, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    invoke-virtual {v2}, Lcom/sessionm/net/Request$Type;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const-string v0, "api.version"

    invoke-virtual {v1, v0}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v6

    const-string v0, "api.action.session"

    invoke-virtual {v1, v0}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/net/Request;->urlString:Ljava/lang/String;

    goto/16 :goto_0

    .line 138
    :cond_8
    iget-object v2, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    sget-object v3, Lcom/sessionm/net/Request$Type;->BUG:Lcom/sessionm/net/Request$Type;

    invoke-virtual {v2, v3}, Lcom/sessionm/net/Request$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 139
    const-string v2, "%s/%s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const-string v0, "api.bugs.path"

    invoke-virtual {v1, v0}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/net/Request;->urlString:Ljava/lang/String;

    goto/16 :goto_0

    .line 140
    :cond_9
    iget-object v2, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    sget-object v3, Lcom/sessionm/net/Request$Type;->ACTION:Lcom/sessionm/net/Request$Type;

    invoke-virtual {v2, v3}, Lcom/sessionm/net/Request$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 141
    iget-object v2, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    invoke-virtual {v2}, Lcom/sessionm/net/Request$Type;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const-string v0, "api.action.events"

    invoke-virtual {v1, v0}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/net/Request;->urlString:Ljava/lang/String;

    goto/16 :goto_0

    .line 142
    :cond_a
    iget-object v2, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    sget-object v3, Lcom/sessionm/net/Request$Type;->ERROR:Lcom/sessionm/net/Request$Type;

    invoke-virtual {v2, v3}, Lcom/sessionm/net/Request$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 143
    iget-object v2, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    invoke-virtual {v2}, Lcom/sessionm/net/Request$Type;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const-string v0, "api.errors.path"

    invoke-virtual {v1, v0}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/net/Request;->urlString:Ljava/lang/String;

    goto/16 :goto_0

    .line 144
    :cond_b
    iget-object v2, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    sget-object v3, Lcom/sessionm/net/Request$Type;->OPT_IN_OUT:Lcom/sessionm/net/Request$Type;

    invoke-virtual {v2, v3}, Lcom/sessionm/net/Request$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 145
    iget-object v2, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    invoke-virtual {v2}, Lcom/sessionm/net/Request$Type;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const-string v0, "app.optout.path"

    invoke-virtual {v1, v0}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/net/Request;->urlString:Ljava/lang/String;

    goto/16 :goto_0

    .line 146
    :cond_c
    iget-object v0, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    sget-object v2, Lcom/sessionm/net/Request$Type;->INSTALL:Lcom/sessionm/net/Request$Type;

    invoke-virtual {v0, v2}, Lcom/sessionm/net/Request$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sessionm/net/Request;->type:Lcom/sessionm/net/Request$Type;

    invoke-virtual {v0}, Lcom/sessionm/net/Request$Type;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v0, "ads.server.url"

    invoke-virtual {v1, v0}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/net/Request;->urlString:Ljava/lang/String;

    goto/16 :goto_0

    .line 162
    :cond_d
    :try_start_1
    iget-object v0, p0, Lcom/sessionm/net/Request;->params:Ljava/lang/Object;

    invoke-static {v0}, Lcom/sessionm/a/e;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_2

    .line 163
    :catch_0
    move-exception v0

    .line 164
    iget-object v1, p0, Lcom/sessionm/net/Request;->TAG:Ljava/lang/String;

    const-string v2, "Error parsing request parameters. Bailing out of request."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v7}, Lcom/sessionm/net/Request;->notifyRequestFinished(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto/16 :goto_4

    .line 177
    :cond_e
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_3

    .line 180
    :catch_1
    move-exception v0

    .line 181
    iget-object v1, p0, Lcom/sessionm/net/Request;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sessionm/net/Request;->urlString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sessionm/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v7}, Lcom/sessionm/net/Request;->notifyRequestFinished(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto/16 :goto_4

    :cond_f
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public setClient(Lcom/sessionm/net/HttpClient;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sessionm/net/Request;->client:Lcom/sessionm/net/HttpClient;

    .line 105
    return-void
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/sessionm/net/Request;->error:Ljava/lang/Throwable;

    .line 247
    return-void
.end method

.method public setListener(Lcom/sessionm/net/RequestListener;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sessionm/net/Request;->listener:Lcom/sessionm/net/RequestListener;

    .line 109
    return-void
.end method

.method setReply(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/sessionm/net/Request;->reply:Ljava/lang/String;

    .line 243
    return-void
.end method

.method setStatusCode(I)V
    .locals 0

    .prologue
    .line 250
    iput p1, p0, Lcom/sessionm/net/Request;->httpStatus:I

    .line 251
    return-void
.end method

.method public statusCode()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/sessionm/net/Request;->httpStatus:I

    return v0
.end method
