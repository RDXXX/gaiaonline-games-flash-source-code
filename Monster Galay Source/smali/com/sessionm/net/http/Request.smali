.class Lcom/sessionm/net/http/Request;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncRequest"


# instance fields
.field private cookieStore:Lorg/apache/http/client/CookieStore;

.field private error:Ljava/lang/Throwable;

.field private final method:Ljava/lang/String;

.field private final paramString:Ljava/lang/String;

.field private response:Ljava/lang/String;

.field private final responseHandler:Lcom/sessionm/net/HttpResponseHandler;

.field private statusCode:I

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sessionm/net/HttpResponseHandler;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p4, p0, Lcom/sessionm/net/http/Request;->responseHandler:Lcom/sessionm/net/HttpResponseHandler;

    .line 41
    iput-object p1, p0, Lcom/sessionm/net/http/Request;->url:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/sessionm/net/http/Request;->method:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/sessionm/net/http/Request;->paramString:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private static readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x400

    .line 149
    new-array v0, v2, [B

    .line 151
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 152
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 153
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sessionm/net/HttpResponseHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 76
    invoke-static {v6}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 77
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 79
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 80
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v2, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v2}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 84
    :cond_0
    const-string v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v3

    const-string v4, "http.agent"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SessionM Android SDK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p4}, Lcom/sessionm/net/HttpResponseHandler;->notifyRequestSent()V

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/sessionm/net/http/Request;->cookieStore:Lorg/apache/http/client/CookieStore;

    invoke-interface {v1}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v4

    .line 92
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 93
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    .line 94
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_1

    .line 98
    const-string v1, "; "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 101
    :cond_2
    const-string v1, "Cookie"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "POST"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "PUT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 104
    :cond_3
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 108
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 109
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 110
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 111
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 112
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 114
    :cond_4
    const-string v1, "AsyncRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending request with url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sessionm/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 118
    invoke-static {v1}, Lcom/sessionm/net/http/Request;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sessionm/net/http/Request;->response:Ljava/lang/String;

    .line 119
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/sessionm/net/http/Request;->statusCode:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 134
    const-string v1, "Set-Cookie"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 135
    if-nez v0, :cond_6

    .line 144
    :cond_5
    :goto_1
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 121
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 122
    invoke-static {v2}, Lcom/sessionm/net/http/Request;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sessionm/net/http/Request;->response:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/sessionm/net/http/Request;->error:Ljava/lang/Throwable;

    .line 124
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/sessionm/net/http/Request;->statusCode:I

    goto :goto_1

    .line 138
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    invoke-static {v0}, Lcom/sessionm/net/CookieUtils;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 141
    iget-object v3, p0, Lcom/sessionm/net/http/Request;->cookieStore:Lorg/apache/http/client/CookieStore;

    invoke-interface {v3, v0}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/net/http/Request;->responseHandler:Lcom/sessionm/net/HttpResponseHandler;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sessionm/net/http/Request;->responseHandler:Lcom/sessionm/net/HttpResponseHandler;

    invoke-virtual {v0}, Lcom/sessionm/net/HttpResponseHandler;->notifyRequestSent()V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/sessionm/net/http/Request;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/sessionm/net/http/Request;->method:Ljava/lang/String;

    iget-object v2, p0, Lcom/sessionm/net/http/Request;->paramString:Ljava/lang/String;

    iget-object v3, p0, Lcom/sessionm/net/http/Request;->responseHandler:Lcom/sessionm/net/HttpResponseHandler;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sessionm/net/http/Request;->sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sessionm/net/HttpResponseHandler;)V

    .line 52
    iget-object v0, p0, Lcom/sessionm/net/http/Request;->responseHandler:Lcom/sessionm/net/HttpResponseHandler;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/sessionm/net/http/Request;->responseHandler:Lcom/sessionm/net/HttpResponseHandler;

    iget-object v1, p0, Lcom/sessionm/net/http/Request;->response:Ljava/lang/String;

    iget-object v2, p0, Lcom/sessionm/net/http/Request;->error:Ljava/lang/Throwable;

    iget v3, p0, Lcom/sessionm/net/http/Request;->statusCode:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sessionm/net/HttpResponseHandler;->notifyRequestFinished(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_1
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    iget-object v1, p0, Lcom/sessionm/net/http/Request;->responseHandler:Lcom/sessionm/net/HttpResponseHandler;

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/sessionm/net/http/Request;->responseHandler:Lcom/sessionm/net/HttpResponseHandler;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/sessionm/net/HttpResponseHandler;->notifyRequestFinished(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_0
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sessionm/net/http/Request;->cookieStore:Lorg/apache/http/client/CookieStore;

    .line 160
    return-void
.end method
