.class public Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;
.super Ljava/lang/Object;
.source "AndroidFacebookService.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/service/FacebookService;


# static fields
.field private static final PERMISSIONS:[Ljava/lang/String;


# instance fields
.field public FACEBOOK_APP_ID:Ljava/lang/String;

.field private activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

.field private asyncFacebookRunner:Lcom/facebook/android/AsyncFacebookRunner;

.field private facebook:Lcom/facebook/android/Facebook;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "publish_stream"

    aput-object v2, v0, v1

    sput-object v0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->PERMISSIONS:[Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;)V
    .locals 2
    .param p1, "sk"    # Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "215607168503093"

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->FACEBOOK_APP_ID:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne p1, v0, :cond_0

    .line 44
    const-string v0, "429621697062014"

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->FACEBOOK_APP_ID:Ljava/lang/String;

    .line 49
    :goto_0
    new-instance v0, Lcom/facebook/android/Facebook;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->FACEBOOK_APP_ID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->facebook:Lcom/facebook/android/Facebook;

    .line 50
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->facebook:Lcom/facebook/android/Facebook;

    invoke-direct {v0, v1}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->asyncFacebookRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 52
    return-void

    .line 47
    :cond_0
    const-string v0, "215607168503093"

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->FACEBOOK_APP_ID:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;)Lcom/facebook/android/Facebook;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->facebook:Lcom/facebook/android/Facebook;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    return-object v0
.end method

.method static synthetic access$2()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private showMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$4;

    invoke-direct {v1, p0, p1}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$4;-><init>(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method


# virtual methods
.method public authorize(Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;)V
    .locals 2
    .param p1, "onCompletedHandler"    # Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;

    invoke-direct {v1, p0, p1}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;-><init>(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 100
    :cond_0
    return-void
.end method

.method public authorizeCallback(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/android/Facebook;->authorizeCallback(IILandroid/content/Intent;)V

    .line 236
    return-void
.end method

.method public extendAccessTokenIfNeeded()V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->facebook:Lcom/facebook/android/Facebook;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/android/Facebook;->extendAccessTokenIfNeeded(Landroid/content/Context;Lcom/facebook/android/Facebook$ServiceListener;)Z

    .line 240
    return-void
.end method

.method public getFacebookId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 261
    const/4 v1, 0x0

    .line 265
    .local v1, "facebookId":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v3}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->facebook:Lcom/facebook/android/Facebook;

    const-string v4, "me"

    invoke-virtual {v3, v4}, Lcom/facebook/android/Facebook;->request(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 267
    .local v2, "request":Lorg/json/JSONObject;
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 274
    .end local v2    # "request":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isSessionValid()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method public logout(Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;)V
    .locals 3
    .param p1, "onCompletedHandler"    # Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->asyncFacebookRunner:Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    .line 106
    new-instance v2, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$2;

    invoke-direct {v2, p0, p1}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$2;-><init>(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;)V

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/facebook/android/AsyncFacebookRunner;->logout(Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 138
    return-void
.end method

.method public postMessage(Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;Ljava/lang/String;)V
    .locals 6
    .param p1, "onCompletedHandler"    # Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 144
    const-string v3, "http://bit.ly/GIQfzt"

    .line 145
    .local v3, "shortUrl":Ljava/lang/String;
    const-string v1, "Monster Galaxy"

    .line 146
    .local v1, "caption":Ljava/lang/String;
    const-string v2, "http://d.cdn.gaiaonline.com/mogaios/promo/monsterg_icon_fb.png"

    .line 148
    .local v2, "pic":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSourceStore()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;

    move-result-object v4

    sget-object v5, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;->AMAZON:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;

    if-ne v4, v5, :cond_1

    .line 149
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v4

    sget-object v5, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v4, v5, :cond_0

    .line 150
    const-string v3, "http://amzn.to/SUDnG4"

    .line 151
    const-string v1, "Monster Galaxy: Exile"

    .line 152
    const-string v2, "http://d.cdn.gaiaonline.com/mogaexpansion/mge_icon_fb.png"

    .line 173
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "description"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v4, "link"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v4, "caption"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v4, "picture"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v5, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;

    invoke-direct {v5, p0, v0, p1}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;-><init>(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;Landroid/os/Bundle;Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;)V

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 210
    return-void

    .line 154
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string v3, "http://amzn.to/MfUA0l"

    .line 155
    const-string v1, "Monster Galaxy"

    .line 156
    const-string v2, "http://d.cdn.gaiaonline.com/mogaios/promo/monsterg_icon_fb.png"

    goto :goto_0

    .line 162
    :cond_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v4

    sget-object v5, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v4, v5, :cond_2

    .line 163
    const-string v3, "http://bit.ly/OFlkbm"

    .line 164
    const-string v1, "Monster Galaxy: Exile"

    .line 165
    const-string v2, "http://d.cdn.gaiaonline.com/mogaexpansion/mge_icon_fb.png"

    goto :goto_0

    .line 167
    :cond_2
    const-string v3, "http://bit.ly/GIQfzt"

    .line 168
    const-string v1, "Monster Galaxy"

    .line 169
    const-string v2, "http://d.cdn.gaiaonline.com/mogaios/promo/monsterg_icon_fb.png"

    goto :goto_0
.end method

.method public setActivity(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;)V
    .locals 4
    .param p1, "activity"    # Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    .line 216
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v1, p1}, Lcom/facebook/android/Facebook;->publishInstall(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 217
    .local v0, "resp":Ljava/lang/Boolean;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "FACEBOOK TRACK"

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public updateAccessToken()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 221
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 222
    .local v3, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v4, "facebook_access_token"

    .line 223
    const/4 v5, 0x0

    .line 222
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "accessToken":Ljava/lang/String;
    const-string v4, "facebook_access_expires"

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 225
    .local v1, "expires":J
    if-eqz v0, :cond_0

    .line 226
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v4, v0}, Lcom/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 228
    :cond_0
    cmp-long v4, v1, v6

    if-eqz v4, :cond_1

    .line 229
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v4, v1, v2}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    .line 232
    :cond_1
    return-void
.end method
