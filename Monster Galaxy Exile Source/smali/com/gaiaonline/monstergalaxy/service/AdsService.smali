.class public abstract Lcom/gaiaonline/monstergalaxy/service/AdsService;
.super Ljava/lang/Object;
.source "AdsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;
    }
.end annotation


# static fields
.field protected static APP_ID:Ljava/lang/String;

.field protected static APP_SIGNATURE:Ljava/lang/String;


# instance fields
.field private afterBattleAdPending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "4f764fe0f77659b310000043"

    sput-object v0, Lcom/gaiaonline/monstergalaxy/service/AdsService;->APP_ID:Ljava/lang/String;

    .line 7
    const-string v0, "e0e4be837dad4bccef8cf4021d10938d2ccecb36"

    sput-object v0, Lcom/gaiaonline/monstergalaxy/service/AdsService;->APP_SIGNATURE:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dismissInterstitial()V
.end method

.method public abstract doCacheInterstitials()V
.end method

.method public isAfterBattleAdPending()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/service/AdsService;->afterBattleAdPending:Z

    return v0
.end method

.method public abstract isShowingInterstitial()Z
.end method

.method public setAfterBattleAdPending(Z)V
    .locals 0
    .param p1, "afterBattleAdPending"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/service/AdsService;->afterBattleAdPending:Z

    .line 37
    return-void
.end method

.method public abstract showInterstitial(Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;Ljava/lang/Runnable;)V
.end method
