.class public Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;
.super Ljava/lang/Object;
.source "AndroidTwitterService.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/service/TwitterService;


# static fields
.field public static final CALLBACK_URL:Ljava/lang/String; = "http://www.gaiaonline.com/moga-android/twitter-callback/"


# instance fields
.field private accessToken:Ltwitter4j/auth/AccessToken;

.field private activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

.field private consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

.field private onAuthorizeCallback:Ljava/lang/Runnable;

.field private provider:Loauth/signpost/OAuthProvider;

.field private twitter:Ltwitter4j/Twitter;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ltwitter4j/TwitterFactory;

    invoke-direct {v0}, Ltwitter4j/TwitterFactory;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->twitter:Ltwitter4j/Twitter;

    .line 44
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->twitter:Ltwitter4j/Twitter;

    const-string v1, "DKkEKCGfcMcGMowA7YzDQ"

    const-string v2, "BcHPoyaedzBY7eHoMECjXWJkDFhWAuLS82qb7fcVEQ"

    invoke-interface {v0, v1, v2}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->authCompleted(Landroid/net/Uri;)V

    return-void
.end method

.method private authCompleted(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 107
    .line 108
    const-string v2, "oauth_verifier"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "verifier":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->provider:Loauth/signpost/OAuthProvider;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-interface {v2, v3, v1}, Loauth/signpost/OAuthProvider;->retrieveAccessToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)V

    .line 114
    new-instance v2, Ltwitter4j/auth/AccessToken;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v3}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 115
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v4}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->accessToken:Ltwitter4j/auth/AccessToken;

    .line 116
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->storeAccessToken()V

    .line 119
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->twitter:Ltwitter4j/Twitter;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->accessToken:Ltwitter4j/auth/AccessToken;

    invoke-interface {v2, v3}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 121
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->onAuthorizeCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->onAuthorizeCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->showError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getAccessToken()Ltwitter4j/auth/AccessToken;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 204
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->accessToken:Ltwitter4j/auth/AccessToken;

    if-eqz v4, :cond_1

    .line 205
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->accessToken:Ltwitter4j/auth/AccessToken;

    .line 214
    :cond_0
    :goto_0
    return-object v3

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 208
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v4, "twitter_access_token"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "token":Ljava/lang/String;
    const-string v4, "twitter_access_token_secret"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "tokenSecret":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 212
    new-instance v3, Ltwitter4j/auth/AccessToken;

    invoke-direct {v3, v1, v2}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private loadPage(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;

    invoke-direct {v1, p0, p1}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;-><init>(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$2;

    invoke-direct {v1, p0, p1}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$2;-><init>(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method private showError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->showError(Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    const-string v0, "Failed"

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->showError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private storeAccessToken()V
    .locals 4

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 178
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "twitter_access_token"

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->accessToken:Ltwitter4j/auth/AccessToken;

    invoke-virtual {v3}, Ltwitter4j/auth/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    const-string v2, "twitter_access_token_secret"

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->accessToken:Ltwitter4j/auth/AccessToken;

    invoke-virtual {v3}, Ltwitter4j/auth/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    return-void
.end method


# virtual methods
.method public authorize(Ljava/lang/Runnable;)Z
    .locals 7
    .param p1, "onAuthorizeCallback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    .line 68
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->onAuthorizeCallback:Ljava/lang/Runnable;

    .line 69
    new-instance v3, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    const-string v4, "DKkEKCGfcMcGMowA7YzDQ"

    const-string v5, "BcHPoyaedzBY7eHoMECjXWJkDFhWAuLS82qb7fcVEQ"

    invoke-direct {v3, v4, v5}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    .line 70
    new-instance v3, Loauth/signpost/basic/DefaultOAuthProvider;

    .line 71
    const-string v4, "http://twitter.com/oauth/request_token"

    .line 72
    const-string v5, "http://twitter.com/oauth/access_token"

    .line 73
    const-string v6, "http://twitter.com/oauth/authorize"

    invoke-direct {v3, v4, v5, v6}, Loauth/signpost/basic/DefaultOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->provider:Loauth/signpost/OAuthProvider;

    .line 75
    :try_start_0
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->provider:Loauth/signpost/OAuthProvider;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    .line 76
    const-string v5, "http://www.gaiaonline.com/moga-android/twitter-callback/"

    .line 75
    invoke-interface {v3, v4, v5}, Loauth/signpost/OAuthProvider;->retrieveRequestToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "authUrl":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->loadPage(Ljava/lang/String;)V
    :try_end_0
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 80
    const/4 v2, 0x1

    .line 92
    .end local v0    # "authUrl":Ljava/lang/String;
    :goto_0
    return v2

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Loauth/signpost/exception/OAuthMessageSignerException;
    invoke-direct {p0, v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->showError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 84
    .end local v1    # "e":Loauth/signpost/exception/OAuthMessageSignerException;
    :catch_1
    move-exception v1

    .line 85
    .local v1, "e":Loauth/signpost/exception/OAuthNotAuthorizedException;
    invoke-direct {p0, v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->showError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 87
    .end local v1    # "e":Loauth/signpost/exception/OAuthNotAuthorizedException;
    :catch_2
    move-exception v1

    .line 88
    .local v1, "e":Loauth/signpost/exception/OAuthExpectationFailedException;
    invoke-direct {p0, v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->showError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 90
    .end local v1    # "e":Loauth/signpost/exception/OAuthExpectationFailedException;
    :catch_3
    move-exception v1

    .line 91
    .local v1, "e":Loauth/signpost/exception/OAuthCommunicationException;
    invoke-direct {p0, v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->showError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public closeView()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$3;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$3;-><init>(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 233
    :cond_0
    return-void
.end method

.method public isAuthorized()Z
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->getAccessToken()Ltwitter4j/auth/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewOpen()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 100
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.gaiaonline.com/moga-android/twitter-callback/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->authCompleted(Landroid/net/Uri;)V

    .line 104
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public setActivity(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;)V
    .locals 0
    .param p1, "activity"    # Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    .line 174
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)Z
    .locals 3
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->twitter:Ltwitter4j/Twitter;

    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->getAccessToken()Ltwitter4j/auth/AccessToken;

    move-result-object v2

    invoke-interface {v1, v2}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v1, p1}, Ltwitter4j/Twitter;->updateStatus(Ljava/lang/String;)Ltwitter4j/Status;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const/4 v1, 0x1

    .line 57
    :goto_0
    return v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->printStackTrace()V

    .line 56
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->showError(Ljava/lang/Throwable;)V

    .line 57
    const/4 v1, 0x0

    goto :goto_0
.end method
