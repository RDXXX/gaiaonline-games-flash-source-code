.class Lcom/gaiaonline/monstergalaxy/app/Game$1;
.super Ljava/lang/Object;
.source "Game.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/app/Game;->menuKeyPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    move-result-object v0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    move-result-object v0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->onMenuKeyPressed()V

    .line 176
    :cond_0
    return-void
.end method
