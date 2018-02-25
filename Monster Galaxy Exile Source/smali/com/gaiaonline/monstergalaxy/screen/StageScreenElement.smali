.class public Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
.source "StageScreenElement.java"


# instance fields
.field protected stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;-><init>()V

    .line 16
    const/high16 v0, 0x43f00000    # 480.0f

    const/high16 v1, 0x43a00000    # 320.0f

    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;->setSize(FF)V

    .line 17
    return-void
.end method


# virtual methods
.method protected dispose()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/graphics/util/ActorUtil;->disposeStageRecursive(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 40
    :cond_0
    return-void
.end method

.method protected present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2
    .param p1, "pos"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;->visible:Z

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    .line 29
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 30
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->draw()V

    .line 31
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 33
    :cond_0
    return-void
.end method

.method public setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 0
    .param p1, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 22
    return-void
.end method
