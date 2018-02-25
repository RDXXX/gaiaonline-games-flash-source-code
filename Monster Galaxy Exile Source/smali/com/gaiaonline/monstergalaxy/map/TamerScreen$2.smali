.class Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2;
.super Ljava/lang/Object;
.source "TamerScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->checkAndClaimPrize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/map/TamerScreen;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/map/TamerScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2;->this$0:Lcom/gaiaonline/monstergalaxy/map/TamerScreen;

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2;)Lcom/gaiaonline/monstergalaxy/map/TamerScreen;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2;->this$0:Lcom/gaiaonline/monstergalaxy/map/TamerScreen;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 547
    :try_start_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getGaiaClient()Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->fetchTimestamp()J

    .line 548
    new-instance v1, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2$1;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2$1;-><init>(Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2;)V

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Game;->runOnGameThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2$2;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2$2;-><init>(Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2;)V

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Game;->runOnGameThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
