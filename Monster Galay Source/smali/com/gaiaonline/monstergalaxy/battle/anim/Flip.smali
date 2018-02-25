.class public Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;
.super Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;
.source "Flip.java"


# static fields
.field private static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
            "<",
            "Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private angle:F

.field private decal:Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

.field private decalBatch:Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;

.field private flipCam:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

.field private rotationAngle:F

.field private targetAngle:F

.field private toLeft:Z


# direct methods
.method public static $(ZF)Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;
    .locals 2
    .param p0, "toLeft"    # Z
    .param p1, "duration"    # F

    .prologue
    .line 33
    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;

    .line 34
    .local v0, "action":Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;
    iput-boolean p0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->toLeft:Z

    .line 35
    if-eqz p0, :cond_0

    const/16 v1, 0xb4

    :goto_0
    int-to-float v1, v1

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->targetAngle:F

    .line 36
    iput p1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->duration:F

    .line 37
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->invDuration:F

    .line 38
    const/4 v1, 0x0

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->taken:F

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->done:Z

    .line 40
    return-object v0

    .line 35
    :cond_0
    const/16 v1, -0xb4

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip$1;

    .line 25
    const/4 v1, 0x4

    const/16 v2, 0x64

    .line 24
    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip$1;-><init>(II)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;-><init>()V

    return-void
.end method

.method private prepare(Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;)V
    .locals 7
    .param p1, "actor"    # Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 89
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->flipCam:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    const/high16 v1, 0x42340000    # 45.0f

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 91
    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/PerspectiveCamera;-><init>(FFF)V

    .line 90
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->flipCam:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    .line 92
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->flipCam:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    const v1, 0x3dcccccd    # 0.1f

    iput v1, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->near:F

    .line 93
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->flipCam:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    const/high16 v1, 0x447a0000    # 1000.0f

    iput v1, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->far:F

    .line 95
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->flipCam:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 96
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 97
    const v3, 0x43c08000    # 385.0f

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    .line 95
    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 98
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->flipCam:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->direction:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v5, v5, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 99
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->flipCam:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->update()V

    .line 102
    :cond_0
    iget-object v0, p1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->mogaImage:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->newDecal(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->decal:Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    .line 103
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->decal:Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    iget v1, p1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->x:F

    iget v2, p1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->width:F

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iget v2, p1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->y:F

    .line 104
    iget v3, p1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->height:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    .line 103
    invoke-virtual {v0, v1, v2, v5}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setPosition(FFF)V

    .line 105
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->decal:Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setScale(F)V

    .line 106
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->decalBatch:Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;

    .line 107
    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 4
    .param p1, "delta"    # F

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->createInterpolatedAlpha(F)F

    move-result v0

    .line 52
    .local v0, "alpha":F
    iget-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->done:Z

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->setAction3D(Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;)V

    .line 54
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    iget-object v1, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->targetAngle:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->rotationAngle:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->angle:F

    .line 58
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->rotationAngle:F

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->angle:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->rotationAngle:F

    goto :goto_0
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3

    .prologue
    .line 71
    iget-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->toLeft:Z

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->duration:F

    invoke-static {v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->$(ZF)Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;

    move-result-object v0

    .line 72
    .local v0, "action":Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/Interpolator;->copy()Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    .line 75
    :cond_0
    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;->finish()V

    .line 65
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->decalBatch:Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->dispose()V

    .line 66
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 81
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->flipCam:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->apply(Lcom/badlogic/gdx/graphics/GL10;)V

    .line 82
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->decal:Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->angle:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotateY(F)V

    .line 83
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->decalBatch:Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->decal:Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->add(Lcom/badlogic/gdx/graphics/g3d/decals/Decal;)V

    .line 84
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->decalBatch:Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->flush()V

    .line 85
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 86
    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 46
    check-cast p1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    .end local p1    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/anim/Flip;->prepare(Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;)V

    .line 47
    return-void
.end method
