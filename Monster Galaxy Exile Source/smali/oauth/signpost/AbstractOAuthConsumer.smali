.class public abstract Loauth/signpost/AbstractOAuthConsumer;
.super Ljava/lang/Object;
.source "AbstractOAuthConsumer.java"

# interfaces
.implements Loauth/signpost/OAuthConsumer;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private additionalParameters:Loauth/signpost/http/HttpParameters;

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private messageSigner:Loauth/signpost/signature/OAuthMessageSigner;

.field private requestParameters:Loauth/signpost/http/HttpParameters;

.field private sendEmptyTokens:Z

.field private signingStrategy:Loauth/signpost/signature/SigningStrategy;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerSecret:Ljava/lang/String;

    .line 63
    new-instance v0, Loauth/signpost/signature/HmacSha1MessageSigner;

    invoke-direct {v0}, Loauth/signpost/signature/HmacSha1MessageSigner;-><init>()V

    invoke-virtual {p0, v0}, Loauth/signpost/AbstractOAuthConsumer;->setMessageSigner(Loauth/signpost/signature/OAuthMessageSigner;)V

    .line 64
    new-instance v0, Loauth/signpost/signature/AuthorizationHeaderSigningStrategy;

    invoke-direct {v0}, Loauth/signpost/signature/AuthorizationHeaderSigningStrategy;-><init>()V

    invoke-virtual {p0, v0}, Loauth/signpost/AbstractOAuthConsumer;->setSigningStrategy(Loauth/signpost/signature/SigningStrategy;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected collectBodyParameters(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)V
    .locals 4
    .param p1, "request"    # Loauth/signpost/http/HttpRequest;
    .param p2, "out"    # Loauth/signpost/http/HttpParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-interface {p1}, Loauth/signpost/http/HttpRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    invoke-interface {p1}, Loauth/signpost/http/HttpRequest;->getMessagePayload()Ljava/io/InputStream;

    move-result-object v1

    .line 236
    .local v1, "payload":Ljava/io/InputStream;
    invoke-static {v1}, Loauth/signpost/OAuth;->decodeForm(Ljava/io/InputStream;)Loauth/signpost/http/HttpParameters;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Loauth/signpost/http/HttpParameters;->putAll(Ljava/util/Map;Z)V

    .line 238
    .end local v1    # "payload":Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method protected collectHeaderParameters(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)V
    .locals 2
    .param p1, "request"    # Loauth/signpost/http/HttpRequest;
    .param p2, "out"    # Loauth/signpost/http/HttpParameters;

    .prologue
    .line 221
    const-string v1, "Authorization"

    invoke-interface {p1, v1}, Loauth/signpost/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loauth/signpost/OAuth;->oauthHeaderToParamsMap(Ljava/lang/String;)Loauth/signpost/http/HttpParameters;

    move-result-object v0

    .line 222
    .local v0, "headerParams":Loauth/signpost/http/HttpParameters;
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Loauth/signpost/http/HttpParameters;->putAll(Ljava/util/Map;Z)V

    .line 223
    return-void
.end method

.method protected collectQueryParameters(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)V
    .locals 4
    .param p1, "request"    # Loauth/signpost/http/HttpRequest;
    .param p2, "out"    # Loauth/signpost/http/HttpParameters;

    .prologue
    .line 246
    invoke-interface {p1}, Loauth/signpost/http/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "url":Ljava/lang/String;
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 248
    .local v0, "q":I
    if-ltz v0, :cond_0

    .line 250
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Loauth/signpost/OAuth;->decodeForm(Ljava/lang/String;)Loauth/signpost/http/HttpParameters;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Loauth/signpost/http/HttpParameters;->putAll(Ljava/util/Map;Z)V

    .line 252
    :cond_0
    return-void
.end method

.method protected completeOAuthParameters(Loauth/signpost/http/HttpParameters;)V
    .locals 3
    .param p1, "out"    # Loauth/signpost/http/HttpParameters;

    .prologue
    const/4 v2, 0x1

    .line 186
    const-string v0, "oauth_consumer_key"

    invoke-virtual {p1, v0}, Loauth/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const-string v0, "oauth_consumer_key"

    iget-object v1, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 189
    :cond_0
    const-string v0, "oauth_signature_method"

    invoke-virtual {p1, v0}, Loauth/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    const-string v0, "oauth_signature_method"

    iget-object v1, p0, Loauth/signpost/AbstractOAuthConsumer;->messageSigner:Loauth/signpost/signature/OAuthMessageSigner;

    invoke-virtual {v1}, Loauth/signpost/signature/OAuthMessageSigner;->getSignatureMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 192
    :cond_1
    const-string v0, "oauth_timestamp"

    invoke-virtual {p1, v0}, Loauth/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    const-string v0, "oauth_timestamp"

    invoke-virtual {p0}, Loauth/signpost/AbstractOAuthConsumer;->generateTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 195
    :cond_2
    const-string v0, "oauth_nonce"

    invoke-virtual {p1, v0}, Loauth/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 196
    const-string v0, "oauth_nonce"

    invoke-virtual {p0}, Loauth/signpost/AbstractOAuthConsumer;->generateNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 198
    :cond_3
    const-string v0, "oauth_version"

    invoke-virtual {p1, v0}, Loauth/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 199
    const-string v0, "oauth_version"

    const-string v1, "1.0"

    invoke-virtual {p1, v0, v1, v2}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 201
    :cond_4
    const-string v0, "oauth_token"

    invoke-virtual {p1, v0}, Loauth/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 202
    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-boolean v0, p0, Loauth/signpost/AbstractOAuthConsumer;->sendEmptyTokens:Z

    if-eqz v0, :cond_7

    .line 203
    :cond_6
    const-string v0, "oauth_token"

    iget-object v1, p0, Loauth/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 206
    :cond_7
    return-void
.end method

.method protected generateNonce()Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected generateTimestamp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestParameters()Loauth/signpost/http/HttpParameters;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->messageSigner:Loauth/signpost/signature/OAuthMessageSigner;

    invoke-virtual {v0}, Loauth/signpost/signature/OAuthMessageSigner;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAdditionalParameters(Loauth/signpost/http/HttpParameters;)V
    .locals 0
    .param p1, "additionalParameters"    # Loauth/signpost/http/HttpParameters;

    .prologue
    .line 77
    iput-object p1, p0, Loauth/signpost/AbstractOAuthConsumer;->additionalParameters:Loauth/signpost/http/HttpParameters;

    .line 78
    return-void
.end method

.method public setMessageSigner(Loauth/signpost/signature/OAuthMessageSigner;)V
    .locals 1
    .param p1, "messageSigner"    # Loauth/signpost/signature/OAuthMessageSigner;

    .prologue
    .line 68
    iput-object p1, p0, Loauth/signpost/AbstractOAuthConsumer;->messageSigner:Loauth/signpost/signature/OAuthMessageSigner;

    .line 69
    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Loauth/signpost/signature/OAuthMessageSigner;->setConsumerSecret(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public setSendEmptyTokens(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Loauth/signpost/AbstractOAuthConsumer;->sendEmptyTokens:Z

    .line 214
    return-void
.end method

.method public setSigningStrategy(Loauth/signpost/signature/SigningStrategy;)V
    .locals 0
    .param p1, "signingStrategy"    # Loauth/signpost/signature/SigningStrategy;

    .prologue
    .line 73
    iput-object p1, p0, Loauth/signpost/AbstractOAuthConsumer;->signingStrategy:Loauth/signpost/signature/SigningStrategy;

    .line 74
    return-void
.end method

.method public setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "tokenSecret"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Loauth/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->messageSigner:Loauth/signpost/signature/OAuthMessageSigner;

    invoke-virtual {v0, p2}, Loauth/signpost/signature/OAuthMessageSigner;->setTokenSecret(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public sign(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;,
            Loauth/signpost/exception/OAuthExpectationFailedException;,
            Loauth/signpost/exception/OAuthCommunicationException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v1, Loauth/signpost/basic/UrlStringRequestAdapter;

    invoke-direct {v1, p1}, Loauth/signpost/basic/UrlStringRequestAdapter;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "request":Loauth/signpost/http/HttpRequest;
    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->signingStrategy:Loauth/signpost/signature/SigningStrategy;

    .line 128
    .local v0, "oldStrategy":Loauth/signpost/signature/SigningStrategy;
    new-instance v2, Loauth/signpost/signature/QueryStringSigningStrategy;

    invoke-direct {v2}, Loauth/signpost/signature/QueryStringSigningStrategy;-><init>()V

    iput-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->signingStrategy:Loauth/signpost/signature/SigningStrategy;

    .line 130
    invoke-virtual {p0, v1}, Loauth/signpost/AbstractOAuthConsumer;->sign(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpRequest;

    .line 133
    iput-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->signingStrategy:Loauth/signpost/signature/SigningStrategy;

    .line 135
    invoke-interface {v1}, Loauth/signpost/http/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
    .locals 1
    .param p1, "request"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;,
            Loauth/signpost/exception/OAuthExpectationFailedException;,
            Loauth/signpost/exception/OAuthCommunicationException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Loauth/signpost/AbstractOAuthConsumer;->wrap(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Loauth/signpost/AbstractOAuthConsumer;->sign(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public sign(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpRequest;
    .locals 5
    .param p1, "request"    # Loauth/signpost/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;,
            Loauth/signpost/exception/OAuthExpectationFailedException;,
            Loauth/signpost/exception/OAuthCommunicationException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 83
    new-instance v2, Loauth/signpost/exception/OAuthExpectationFailedException;

    const-string v3, "consumer key not set"

    invoke-direct {v2, v3}, Loauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_0
    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerSecret:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 86
    new-instance v2, Loauth/signpost/exception/OAuthExpectationFailedException;

    const-string v3, "consumer secret not set"

    invoke-direct {v2, v3}, Loauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_1
    new-instance v2, Loauth/signpost/http/HttpParameters;

    invoke-direct {v2}, Loauth/signpost/http/HttpParameters;-><init>()V

    iput-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    .line 91
    :try_start_0
    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->additionalParameters:Loauth/signpost/http/HttpParameters;

    if-eqz v2, :cond_2

    .line 92
    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    iget-object v3, p0, Loauth/signpost/AbstractOAuthConsumer;->additionalParameters:Loauth/signpost/http/HttpParameters;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Loauth/signpost/http/HttpParameters;->putAll(Ljava/util/Map;Z)V

    .line 94
    :cond_2
    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    invoke-virtual {p0, p1, v2}, Loauth/signpost/AbstractOAuthConsumer;->collectHeaderParameters(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)V

    .line 95
    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    invoke-virtual {p0, p1, v2}, Loauth/signpost/AbstractOAuthConsumer;->collectQueryParameters(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)V

    .line 96
    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    invoke-virtual {p0, p1, v2}, Loauth/signpost/AbstractOAuthConsumer;->collectBodyParameters(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)V

    .line 99
    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    invoke-virtual {p0, v2}, Loauth/signpost/AbstractOAuthConsumer;->completeOAuthParameters(Loauth/signpost/http/HttpParameters;)V

    .line 101
    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    const-string v3, "oauth_signature"

    invoke-virtual {v2, v3}, Loauth/signpost/http/HttpParameters;->remove(Ljava/lang/Object;)Ljava/util/SortedSet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->messageSigner:Loauth/signpost/signature/OAuthMessageSigner;

    iget-object v3, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    invoke-virtual {v2, p1, v3}, Loauth/signpost/signature/OAuthMessageSigner;->sign(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "signature":Ljava/lang/String;
    const-string v2, "signature"

    invoke-static {v2, v1}, Loauth/signpost/OAuth;->debugOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->signingStrategy:Loauth/signpost/signature/SigningStrategy;

    iget-object v3, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    invoke-interface {v2, v1, p1, v3}, Loauth/signpost/signature/SigningStrategy;->writeSignature(Ljava/lang/String;Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)Ljava/lang/String;

    .line 111
    const-string v2, "Auth header"

    const-string v3, "Authorization"

    invoke-interface {p1, v3}, Loauth/signpost/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loauth/signpost/OAuth;->debugOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "Request URL"

    invoke-interface {p1}, Loauth/signpost/http/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loauth/signpost/OAuth;->debugOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-object p1

    .line 103
    .end local v1    # "signature":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Loauth/signpost/exception/OAuthCommunicationException;

    invoke-direct {v2, v0}, Loauth/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method protected abstract wrap(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
.end method
