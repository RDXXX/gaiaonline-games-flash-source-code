.class Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy$1;
.super Ljava/lang/Object;
.source "MonsterGalaxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->checkDownloadedMogaAssets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 115
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    move-result-object v4

    iget-object v0, v4, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    .line 116
    .local v0, "currentScreen":Lcom/gaiaonline/monstergalaxy/app/Screen;
    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->getCode()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v4

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->WORLD:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    if-eq v4, v5, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->getCode()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v4

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ISLAND:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    if-ne v4, v5, :cond_2

    :cond_0
    move v1, v2

    .line 120
    .local v1, "showMiniGame":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->isMiniGameAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SLOTMACHINE:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v4, v3, v2}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;ZZ)V

    .line 123
    :cond_1
    return-void

    .end local v1    # "showMiniGame":Z
    :cond_2
    move v1, v3

    .line 118
    goto :goto_0
.end method
