.class Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1;
.super Ljava/lang/Object;
.source "SendInstallInfoRetryScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->retry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1;)Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->sendInstallInfoIfUnsent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->startGaiaSession()V

    .line 70
    new-instance v0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1$1;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1$1;-><init>(Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1;)V

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Game;->runOnGameThread(Ljava/lang/Runnable;)V

    .line 86
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1$2;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1$2;-><init>(Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1;)V

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Game;->runOnGameThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
