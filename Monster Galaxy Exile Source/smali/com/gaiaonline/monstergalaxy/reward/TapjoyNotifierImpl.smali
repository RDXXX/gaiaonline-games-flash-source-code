.class public Lcom/gaiaonline/monstergalaxy/reward/TapjoyNotifierImpl;
.super Ljava/lang/Object;
.source "TapjoyNotifierImpl.java"

# interfaces
.implements Lcom/tapjoy/TapjoyNotifier;
.implements Lcom/tapjoy/TapjoySpendPointsNotifier;


# instance fields
.field private listener:Lcom/gaiaonline/monstergalaxy/model/shop/DealListener;

.field private starseeds:I


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/model/shop/DealListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/model/shop/DealListener;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/reward/TapjoyNotifierImpl;->listener:Lcom/gaiaonline/monstergalaxy/model/shop/DealListener;

    .line 17
    return-void
.end method


# virtual methods
.method public getSpendPointsResponse(Ljava/lang/String;I)V
    .locals 2
    .param p1, "currencyName"    # Ljava/lang/String;
    .param p2, "points"    # I

    .prologue
    .line 39
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/reward/TapjoyNotifierImpl;->starseeds:I

    if-lez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/reward/TapjoyNotifierImpl;->listener:Lcom/gaiaonline/monstergalaxy/model/shop/DealListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/reward/TapjoyNotifierImpl;->listener:Lcom/gaiaonline/monstergalaxy/model/shop/DealListener;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;->STARSEEDS:Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/shop/DealListener;->onRewardReceived(Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;)V

    .line 45
    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/reward/TapjoyNotifierImpl;->starseeds:I

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->addStarSeeds(I)V

    .line 48
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/reward/TapjoyNotifierImpl;->starseeds:I

    .line 49
    return-void
.end method

.method public getSpendPointsResponseFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 54
    return-void
.end method

.method public getUpdatePoints(Ljava/lang/String;I)V
    .locals 2
    .param p1, "currencyName"    # Ljava/lang/String;
    .param p2, "points"    # I

    .prologue
    .line 22
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/reward/TapjoyNotifierImpl;->starseeds:I

    .line 24
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/reward/TapjoyNotifierImpl;->starseeds:I

    if-lez v0, :cond_0

    .line 26
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/reward/TapjoyNotifierImpl;->starseeds:I

    invoke-virtual {v0, v1, p0}, Lcom/tapjoy/TapjoyConnect;->spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V

    .line 29
    :cond_0
    return-void
.end method

.method public getUpdatePointsFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 34
    return-void
.end method
