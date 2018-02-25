.class public Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
.source "ActorScreenElement.java"


# instance fields
.field protected actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field protected dummyGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->dummyGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/graphics/util/ActorUtil;->disposeActorRecursive(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 80
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 81
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->dummyGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 82
    return-void
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getSize()Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->getSize()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method protected present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3
    .param p1, "pos"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 49
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 51
    .local v0, "c":Lcom/badlogic/gdx/graphics/Color;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->color:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 55
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 57
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 59
    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 63
    :cond_1
    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->dummyGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 38
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->dummyGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 39
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 40
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v2

    div-float/2addr v1, v2

    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setSize(FF)V

    .line 41
    return-void
.end method

.method public setActorDeprecated(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->dummyGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 31
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->dummyGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 32
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    iget v1, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setSize(FF)V

    .line 33
    return-void
.end method

.method protected update(F)V
    .locals 1
    .param p1, "deltaTime"    # F

    .prologue
    .line 68
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    .line 69
    return-void
.end method
