.class public Lcom/gaiaonline/monstergalaxy/app/Share;
.super Ljava/lang/Object;
.source "Share.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getGameLink()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v0, v1, :cond_1

    .line 10
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSourceStore()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;->AMAZON:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;

    if-ne v0, v1, :cond_0

    const-string v0, "http://m.facebook.com/appcenter/mogaexile"

    .line 15
    :goto_0
    return-object v0

    .line 11
    :cond_0
    const-string v0, "http://m.facebook.com/appcenter/mogaexile"

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSourceStore()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;->AMAZON:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;

    if-ne v0, v1, :cond_2

    const-string v0, "http://m.facebook.com/appcenter/monsterg"

    goto :goto_0

    .line 16
    :cond_2
    const-string v0, "http://m.facebook.com/appcenter/monsterg"

    goto :goto_0
.end method

.method public static share()V
    .locals 3

    .prologue
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "I\'m playing Monster Galaxy and you should too! You battle against awesome monsters and train them to fight for you--and it\'s FREE. Get it on your phone now so we can start playing together! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Share;->getGameLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "shareText":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->share(Ljava/lang/String;)V

    .line 29
    return-void
.end method
