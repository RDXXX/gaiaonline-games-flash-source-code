.class public interface abstract Lcom/sessionm/net/HttpClient;
.super Ljava/lang/Object;
.source "ProGuard"


# virtual methods
.method public abstract getCookieStore()Lorg/apache/http/client/CookieStore;
.end method

.method public abstract sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sessionm/net/HttpResponseHandler;)V
.end method

.method public abstract setCookieStore(Lorg/apache/http/client/CookieStore;)V
.end method

.method public abstract storeCookies()V
.end method

.method public abstract syncCookies()V
.end method
