.class public Lcom/gaiaonline/monstergalaxy/app/PausableGroup;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "PausableGroup.java"


# instance fields
.field public paused:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 4
    .param p1, "delta"    # F

    .prologue
    .line 14
    :try_start_0
    iget-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/app/PausableGroup;->paused:Z

    if-nez v1, :cond_0

    .line 15
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->act(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :cond_0
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "MonsterGalaxy"

    const-string v3, "PausableGroup: sorry, could not be paused."

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
