.class public Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;
.super Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
.source "MogaActor.java"


# instance fields
.field private action3D:Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;

.field private faceLeft:Z

.field private glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

.field private moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

.field protected mogaImage:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private rarity:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private rarityHeight:F

.field private rarityPositionX:F

.field private rarityPositionY:F

.field private rarityWidth:F

.field private screenRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;",
            ">;"
        }
    .end annotation
.end field

.field private showRarity:Z


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V
    .locals 5
    .param p1, "screen"    # Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;
    .param p2, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .param p3, "mogaImage"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p4, "faceLeft"    # Z

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 43
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->screenRef:Ljava/lang/ref/WeakReference;

    .line 44
    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 45
    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->mogaImage:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 46
    iput-boolean p4, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->faceLeft:Z

    .line 47
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_glow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v3

    .line 48
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getGlowImage()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 47
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    .line 49
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iput-boolean v4, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->visible:Z

    .line 50
    if-eqz p4, :cond_0

    .line 51
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 54
    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v0

    .line 56
    .local v0, "scaleFactor":F
    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getRarityAssetName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->rarity:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 57
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->rarity:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->rarityWidth:F

    .line 58
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->rarity:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->rarityHeight:F

    .line 59
    return-void
.end method

.method private startGlowing()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 173
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->width:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    .line 174
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->height:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    .line 175
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->x:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 176
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->y:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 177
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iput-boolean v5, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->visible:Z

    .line 178
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v2, 0x0

    .line 179
    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 180
    return-void
.end method


# virtual methods
.method public addToStage(Lcom/badlogic/gdx/scenes/scene2d/Group;)V
    .locals 1
    .param p1, "group"    # Lcom/badlogic/gdx/scenes/scene2d/Group;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 83
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 84
    return-void
.end method

.method public beIdle()V
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;

    move-result-object v0

    const-string v1, "idle-circuit"

    .line 78
    iget-boolean v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->faceLeft:Z

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 79
    return-void
.end method

.method public doEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V
    .locals 5
    .param p1, "effect"    # Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;
    .param p2, "where"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 67
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->screenRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 68
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->x:F

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->width:F

    div-float/2addr v3, v4

    add-float v0, v2, v3

    .line 69
    .local v0, "ex":F
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    if-ne p2, v2, :cond_1

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->y:F

    .line 71
    .local v1, "ey":F
    :goto_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->screenRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-virtual {v2, p1, v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->doEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;FF)V

    .line 73
    .end local v0    # "ex":F
    .end local v1    # "ey":F
    :cond_0
    return-void

    .line 70
    .restart local v0    # "ex":F
    :cond_1
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->y:F

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->height:F

    div-float/2addr v3, v4

    add-float v1, v2, v3

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 121
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->action3D:Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->action3D:Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;->render(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 126
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->x:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 127
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->y:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 129
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->showRarity:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->rarity:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->rarityPositionX:F

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->rarityPositionY:F

    .line 131
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->rarityWidth:F

    iget v5, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->rarityHeight:F

    move-object v0, p1

    .line 130
    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_0
.end method

.method public getMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    return-object v0
.end method

.method public glowWithZodiacColor()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->setZodiacColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 164
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->startGlowing()V

    .line 165
    return-void
.end method

.method public glowYellow()V
    .locals 2

    .prologue
    const/high16 v1, 0x437f0000    # 255.0f

    .line 156
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 157
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 158
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->color:Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 159
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->startGlowing()V

    .line 160
    return-void
.end method

.method public moveBehind(Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;)Z
    .locals 3
    .param p1, "otherMogaActor"    # Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    .prologue
    const/4 v0, 0x0

    .line 99
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->swapActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 108
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v2, p1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->swapActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 109
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reloadTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1
    .param p1, "newTextureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 116
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->mogaImage:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 117
    return-void
.end method

.method public setAction3D(Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;)V
    .locals 0
    .param p1, "action3D"    # Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->action3D:Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;

    .line 138
    return-void
.end method

.method public showRarity(Z)V
    .locals 3
    .param p1, "showRarity"    # Z

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 141
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->showRarity:Z

    .line 143
    if-eqz p1, :cond_0

    .line 144
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->x:F

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->width:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->rarityWidth:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->rarityPositionX:F

    .line 145
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->y:F

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->height:F

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->rarityPositionY:F

    .line 146
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->setRarityColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 147
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->startGlowing()V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->stopGlowing()V

    goto :goto_0
.end method

.method public stopGlowing()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->clearActions()V

    .line 169
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glow:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->visible:Z

    .line 170
    return-void
.end method
